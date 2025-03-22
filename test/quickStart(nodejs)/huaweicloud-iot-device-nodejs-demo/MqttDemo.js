var mqtt = require('mqtt')
var HmacSHA256 = require('crypto-js/hmac-sha256')
const fs = require('fs');

var TRUSTED_CA = fs.readFileSync("DigiCertGlobalRootCA.crt.pem");//获取证书

//IoT平台mqtt对接地址
var serverUrl = "iot-mqtts.cn-north-4.myhuaweicloud.com";
var deviceId = "****";//请填写在平台注册的设备ID
var secret = "****";//请填写在平台注册的设备密钥
var timestamp = dateFormat("YYYYmmddHH", new Date());

var propertiesReportJson = {'services':[{'properties':{'alarm':1,'temperature':22.670784,'humidity':28.37673,'smokeConcentration':29.97906},'service_id':'smokeDetector','event_time':null}]};
var responseReqJson = {'result_code': 0,'response_name': 'COMMAND_RESPONSE','paras': {'result': 'success'}};

var propertiesReport = JSON.stringify(propertiesReportJson);
var responseReq = JSON.stringify(responseReqJson);

var minBackoff = 1000;

var maxBackoff = 30 * 1000;

var defaultBackoff = 1000;

var retryTimes = 0;

//MQTTS安全连接
var options = {
    host: serverUrl,
    port: 8883,
    clientId: getClientId(deviceId),
    username: deviceId,
    password:HmacSHA256(secret, timestamp).toString(),
    ca: TRUSTED_CA,
    protocol: 'mqtts',
    rejectUnauthorized: false,
    keepalive: 120,
	reconnect: true,
    reconnectPeriod: 1000,
    connectTimeout: 1000
}

//MQTT非安全连接，不建议使用
var option = {
    host: serverUrl,
    port: 1883,
    clientId: getClientId(deviceId),
    username: deviceId,
    password: HmacSHA256(secret, timestamp).toString(),
    keepalive: 120,
	reconnect: true,
    reconnectPeriod: 1000,
    connectTimeout: 1000
    //protocol: 'mqtts'
    //rejectUnauthorized: false
}

//此处默认使用options为安全连接
var client = mqtt.connect(options);

client.on('connect', function () {
    log("connect to mqtt server success, deviceId is " + deviceId);
	
	client.options.reconnectPeriod = 1000;

	retryTimes = 0;

    //订阅Topic
    subScribeTopic();
    //发布消息
    publishMessage();
})

//命令下发响应
client.on('message', function (topic, message) {
    log('received message is ' + message.toString());

    var jsonMsg = responseReq;
    client.publish(getResponseTopic(topic.toString().split("=")[1]), jsonMsg);
    log('responsed message is ' + jsonMsg);
})

client.on('reconnect', () => {
	
	log("reconnect is starting");
	
	//退避重连
	var lowBound = Number(defaultBackoff)*Number(0.8);
	var highBound = Number(defaultBackoff)*Number(1.2);
	
	var randomBackOff = parseInt(Math.random()*(highBound-lowBound+1),10);
	
	var backOffWithJitter = (Math.pow(2.0, retryTimes)) * (randomBackOff + lowBound);
	
	var waitTImeUtilNextRetry = (minBackoff + backOffWithJitter) > maxBackoff ? maxBackoff : (minBackoff + backOffWithJitter);
	
	client.options.reconnectPeriod = waitTImeUtilNextRetry;
	
	log("next retry time: " + waitTImeUtilNextRetry);
	
	retryTimes++;
})

client.on('error', (e) => {
	log('mqtt error: ' + e);
})

client.on('close', () => {
	log("mqtt server is disconnected");
})

//上报json数据，注意serviceId要与Profile中的定义对应
function publishMessage() {
    var jsonMsg = propertiesReport;
    log("publish message topic is " + getReportTopic());
    log("publish message is " + jsonMsg);
    client.publish(getReportTopic(), jsonMsg);
    log("publish message successful");
}

//订阅接收命令topic
function subScribeTopic() {
    client.subscribe(getCmdRequestTopic(), function (err) {
        if (err) {
            log("subscribe error:" + err);
        } else {
            log("topic : " + getCmdRequestTopic() + " is subscribed success");
        }
    })
}

//属性上报topic
function getReportTopic() {
    return "$oc/devices/" + deviceId + "/sys/properties/report";
}

//获取命令下发topic
function getCmdRequestTopic() {
    return "$oc/devices/" + deviceId + "/sys/commands/#";
}

function getResponseTopic(requestId){
    return "$oc/devices/" + deviceId + "/sys/commands/response/request_id=" + requestId;
}

function getClientId(deviceId) {
    return deviceId + "_0_0_" + timestamp;
}

function dateFormat(fmt, date) {
    let ret;
    const opt = {
        "Y+": date.getFullYear().toString(),        // 年
        "m+": (date.getMonth() + 1).toString(),     // 月
        "d+": date.getDate().toString(),            // 日
        "H+": date.getHours().toString(),           // 时
        "M+": date.getMinutes().toString(),         // 分
        "S+": date.getSeconds().toString()          // 秒
        // 有其他格式化字符需求可以继续添加，必须转化成字符串
    };
    for (let k in opt) {
        ret = new RegExp("(" + k + ")").exec(fmt);
        if (ret) {
            fmt = fmt.replace(ret[1], (ret[1].length == 1) ? (opt[k]) : (opt[k].padStart(ret[1].length, "0")))
        };
    };
    return fmt;
}

function log(msg){
    console.log(dateFormat("YYYY-mm-dd HH:MM:SS",new Date()) + " - " + msg);
}