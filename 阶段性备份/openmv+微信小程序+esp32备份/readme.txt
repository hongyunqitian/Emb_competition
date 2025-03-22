此处已完成
微信小程序连接华为云实现获取base64格式字符串并转化为图片
openmv实现拍摄一张图片并将，图片压缩为jpeg数据通过串口发送
已实现C语言将二进制jpeg图片转化为base64格式字符串
esp32将base64格式字符串发送给华为云



esp32相关参数：
// 连接 WiFi
const char* ssid = "#include<stdio.h>";      // 请替换为你的 WiFi SSID
const char* password = "lh050828"; // 请替换为你的 WiFi 密码

// MQTT 服务器信息
const char* mqttServer = "e3ce2a4c4b.st1.iotda-device.cn-north-4.myhuaweicloud.com"; // 请替换为你的 MQTT 服务器地址
const int   mqttPort = 1883;                 // 请替换为你的 MQTT 端口（建议使用 TLS/SSL）
const char* clientId = "67d0448624d772325524e498_emp_test_0_0_2025032202";     // 请替换为你的 MQTT 客户端 ID
const char* mqttUser = "67d0448624d772325524e498_emp_test";     // 请替换为你的 MQTT 用户名
const char* mqttPassword = "8a49b95f30947d0901ba80512d5c3b6088c7ac1d7842f491f4627d842534c146"; // 请替换为你的 MQTT 密码



const char* topic_properties_report = "$oc/devices/67d0448624d772325524e498_emp_test/sys/properties/report";
char* topic_Commands_Response = "";



json格式模板：
{
    "services": [{
            "service_id": "emb_picture",
            "properties": {
                "emb_picture": "data:image/jpeg;base64,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"
        }
      }
   ]
}

