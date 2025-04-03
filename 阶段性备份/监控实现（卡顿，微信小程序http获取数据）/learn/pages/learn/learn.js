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
        that.getToken();
        
        // 设置请求状态标志和其他状态变量
        that.isRequesting = false;
        that.requestQueue = [];  // 请求队列
        that.lastImageData = ""; // 上一帧图像数据
        that.pendingPreviews = 0; // 正在处理的预览数量
        
        // 在token获取成功后启动连续请求
        setTimeout(function() {
            if (that.data.token) {
                // 开始连续获取设备信息
                that.startContinuousDataFetch();
            }
        }, 500); // 给token获取一点时间
    },
    
    // 连续获取数据的函数 - 优化版本
    startContinuousDataFetch: function() {
        const that = this;
        
        // 如果没有正在进行的请求且pendingPreviews不超过2，立即发起新请求
        if (!that.isRequesting && that.pendingPreviews < 2 && that.data.token) {
            that.isRequesting = true;
            that.getDeviceInfo();
        }
        
        // 无论如何都确保循环继续，但使用动态延迟
        let delay = 25; // 默认延迟50ms
        
        // 如果有太多待处理的请求，增加延迟来缓解压力
        if (that.pendingPreviews > 1) {
            delay = 100;
        } else if (that.pendingPreviews > 0) {
            delay = 50;
        }
        
        setTimeout(function() {
            that.startContinuousDataFetch();
        }, delay);
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
    
    // 获取设备信息 - 优化版本
    getDeviceInfo: function() {
        const that = this;
        if (!that.data.token) {
            that.isRequesting = false;
            return;
        }
        
        // 增加pendingPreviews计数
        that.pendingPreviews++;
        
        // 获取设备影子信息
        wx.request({
            url: `https://e3ce2a4c4b.st1.iotda-app.cn-north-4.myhuaweicloud.com/v5/iot/${that.data.projectId}/devices/${that.data.deviceId}/shadow`,
            method: 'GET',
            header: {
                'content-type': 'application/json',
                'X-Auth-Token': that.data.token,
                'X-Project-Id': that.data.projectId,
                // 添加缓存控制头部
                'Cache-Control': 'no-cache'
            },
            success: function(res) {
                // 如果返回的数据结构与示例不同，需要调整这里的数据提取方式
                if (res.data && res.data.shadow && res.data.shadow[0] && res.data.shadow[0].reported) {
                    const properties = res.data.shadow[0].reported.properties;
                    
                    // 如果emb_picture是Base64格式图片数据，直接设置到imageData中
                    if (properties.emb_picture && 
                        (properties.emb_picture.startsWith('data:image') || 
                         properties.emb_picture.startsWith('/9j/'))) {
                        
                        // 如果只是Base64字符串而没有MIME前缀，添加前缀
                        let imageData = properties.emb_picture;
                        if (!imageData.startsWith('data:image')) {
                            imageData = 'data:image/jpeg;base64,' + imageData;
                        }
                        
                        // 检查新图像是否与上一帧相同，如果相同则不更新UI
                        if (imageData !== that.lastImageData) {
                            // 设置图片数据以便在界面显示
                            that.setData({
                                imageData: imageData
                            });
                            that.lastImageData = imageData;
                        }
                    }
                }
            },
            fail: function(error) {
                console.log("获取设备信息失败:", error);
            },
            complete: function() {
                // 无论成功失败，都重置请求状态
                that.isRequesting = false;
                // 减少pendingPreviews计数
                that.pendingPreviews--;
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
