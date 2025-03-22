// pages/learn/learn.js
const CryptoJS = require('../js/hmac-sha256.js');

Page({
    data: {
        connected: false,
        emb_picture: "connect ok",  // 修改为实际设备属性
        luminance: "connect ok",    // 如果有此属性则保留
        deviceId: '67d0448624d772325524e498_emp_test',
        serviceId: 'emb_picture',  // 服务ID
        projectId: 'de0ffe361bfc4234b1357d9ab1cab5f8', // 项目ID
        instanceId: '0afe6cb3-a35a-42af-bb5d-f95eaefcc7ec', // 实例ID
        token: '',
        log: '',
        imageData: ''
    },
    
    onLoad: function () {
        const that = this;
        // 先获取token
        //this.getToken();
        that.getToken();
        // 在获取token成功后再获取设备信息
        if (that.data.token) {
            that.getDeviceInfo();
        }
        // 设置定时器，定期获取设备信息和更新状态
        setInterval(function(){
            // that.getToken();
            // // 在获取token成功后再获取设备信息
            // if (that.data.token) {
            //     that.getDeviceInfo();
            // }
        }, 5000); // 每5秒更新一次
    },
    
    // 获取华为云平台的token
    getToken: function() {
        const that = this;
        // 注意：这里需要填写您的华为云账号信息
        wx.request({
            url: 'https://iam.cn-north-4.myhuaweicloud.com/v3/auth/tokens',
            data: {
                "auth": { 
                    "identity": {
                        "methods": ["password"],
                        "password": {
                            "user": {
                                "name": "emb_test",  // 替换为您的用户名（注册的IAM设备账号）
                                "password": "lh050828", // 替换为您的密码（注册的IAM设备密码）
                                "domain": {
                                    "name": "hid_p3ucc7vquebca1d" // 替换为您的账号名（华为总帐号）
                                }
                            }
                        }
                    },
                    "scope": {
                        "project": {
                            "name": "cn-north-4"//产品地区，此处为北京4
                        }
                    }
                }
            },
            method: 'POST',
            header: {'content-type': 'application/json'},
            success: function(res){
                const token = res.header['X-Subject-Token'];
                if (token) {
                    that.setData({
                        token: token,
                        connected: true
                    });
                    console.log("获取token成功:", token);
                    that.addLog("获取token成功");
                    // 在获取token成功后立即获取设备信息
                    that.getDeviceInfo();
                } else {
                    console.log("未获取到token");
                    that.addLog("未获取到token");
                }
            },
            fail: function(error) {
                console.log("获取token失败:", error);
                that.addLog("获取token失败: " + JSON.stringify(error));
            }
        });
    },
    
    // 获取设备信息
    getDeviceInfo: function() {
        const that = this;
        if (!that.data.token) {
            console.log('未获取token，无法获取设备信息');
            that.addLog('未获取token，无法获取设备信息');
            return;
        }
        
        // 获取设备影子信息
        wx.request({
            url: `https://e3ce2a4c4b.st1.iotda-app.cn-north-4.myhuaweicloud.com/v5/iot/${that.data.projectId}/devices/${that.data.deviceId}/shadow`,
            method: 'GET',
            header: {
                'content-type': 'application/json',
                'X-Auth-Token': that.data.token,
                'X-Project-Id': that.data.projectId
            },
            success: function(res) {
                console.log("获取设备信息成功");
                that.addLog("获取设备信息成功");
                console.log(res);
                
                // 如果返回的数据结构与示例不同，需要调整这里的数据提取方式
                if (res.data && res.data.shadow && res.data.shadow[0] && res.data.shadow[0].reported) {
                    const properties = res.data.shadow[0].reported.properties;
                    that.setData({
                        emb_picture: properties.emb_picture || "",
                        luminance: properties.luminance || ""
                    });
                    
                    // 如果emb_picture是Base64格式图片数据，直接设置到imageData中
                    if (properties.emb_picture && 
                        (properties.emb_picture.startsWith('data:image') || 
                         properties.emb_picture.startsWith('/9j/'))) {
                        
                        // 如果只是Base64字符串而没有MIME前缀，添加前缀
                        let imageData = properties.emb_picture;
                        if (!imageData.startsWith('data:image')) {
                            imageData = 'data:image/jpeg;base64,' + imageData;
                        }
                        
                        // 设置图片数据以便在界面显示
                        that.setData({
                            imageData: imageData
                        });
                        that.addLog("接收到图片数据并显示");
                    }
                    
                    that.addLog(`设备状态: ${properties.emb_picture}`);
                }
            },
            fail: function(error) {
                console.log("获取设备信息失败:", error);
                that.addLog("获取设备信息失败: " + JSON.stringify(error));
            }
        });
    },
    
    // 发送命令到设备
    sendCommand: function() {
        const that = this;
        if (!that.data.token) {
            console.log('未获取token，无法发送命令');
            that.addLog('未获取token，无法发送命令');
            return;
        }
        
        // 构建命令数据
        const commandData = {
            service_id: that.data.serviceId,
            command_name: "control",  // 根据您设备支持的命令名称修改
            paras: {
                emb_picture: "on"
            }
        };
        
        // 发送命令
        wx.request({
            url: `https://e3ce2a4c4b.st1.iotda-app.cn-north-4.myhuaweicloud.com/v5/iot/${that.data.projectId}/devices/${that.data.deviceId}/commands`,
            data: commandData,
            method: 'POST',
            header: {
                'content-type': 'application/json',
                'X-Auth-Token': that.data.token,
                'X-Project-Id': that.data.projectId
            },
            success: function(res) {
                console.log("命令发送成功");
                that.addLog("命令发送成功");
            },
            fail: function(error) {
                console.log("命令发送失败:", error);
                that.addLog("命令发送失败: " + JSON.stringify(error));
            }
        });
    },
    
    // 发送属性数据
    sendMessage: function() {
        const that = this;
        if (!that.data.token) {
            console.log('未获取token，无法发送数据');
            that.addLog('未获取token，无法发送数据');
            return;
        }
        
        // 构建属性上报JSON
        const messageJson = {
            services: [{
                service_id: that.data.serviceId,
                properties: {
                    emb_picture: "connect ok",
                    luminance: "connect ok"
                }
            }]
        };
        
        // 发送属性数据
        wx.request({
            url: `https://e3ce2a4c4b.st1.iotda-app.cn-north-4.myhuaweicloud.com/v5/iot/${that.data.projectId}/devices/${that.data.deviceId}/properties`,
            data: messageJson,
            method: 'POST',
            header: {
                'content-type': 'application/json',
                'X-Auth-Token': that.data.token,
                'X-Project-Id': that.data.projectId
            },
            success: function(res) {
                console.log('属性数据发送成功');
                that.addLog('属性数据发送成功');
            },
            fail: function(error) {
                console.log('属性数据发送失败:', error);
                that.addLog('属性数据发送失败: ' + JSON.stringify(error));
            }
        });
    },
    
    // 添加日志
    addLog: function(message) {
        const that = this;
        const timestamp = new Date().toLocaleTimeString();
        const logMessage = `${timestamp} - ${message}`;
        that.setData({
            log: that.data.log + logMessage + '\n'
        });
    },
    
    // 时间格式化函数
    dateFormat: function(fmt, date) {
        let ret;
        const opt = {
            "Y+": date.getFullYear().toString(),        // 年
            "m+": (date.getMonth() + 1).toString(),     // 月
            "d+": date.getDate().toString(),            // 日
            "H+": date.getHours().toString(),           // 时
            "M+": date.getMinutes().toString(),         // 分
            "S+": date.getSeconds().toString()          // 秒
        };
        for (let k in opt) {
            ret = new RegExp("(" + k + ")").exec(fmt);
            if (ret) {
                fmt = fmt.replace(ret[1], (ret[1].length == 1) ? (opt[k]) : (opt[k].padStart(ret[1].length, "0")))
            }
        }
        return fmt;
    }
})    
