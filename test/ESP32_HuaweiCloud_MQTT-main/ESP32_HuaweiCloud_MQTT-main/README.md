# ESP32 连接华为云 IoT 平台

## 项目简介
本项目旨在使用 **ESP32** 通过 **MQTT** 协议连接 **华为云 IoT 平台**，实现设备属性上报、命令接收及响应等功能。  
项目使用 **WiFi** 进行网络通信，并基于 **PubSubClient** 和 **ArduinoJson** 库进行 MQTT 消息处理和 JSON 数据解析。

## 作者信息
- **GitHub**: [Witheart](https://github.com/Witheart)  
- **CSDN 博客**: [Beihai_Van](https://blog.csdn.net/Beihai_Van)  
- **项目原文**: [ESP32 连接华为云 IoT 平台教程](https://blog.csdn.net/Beihai_Van/article/details/126634891)  

## 主要功能
- 连接 **WiFi** 并保持网络稳定
- 通过 **MQTT** 协议连接 **华为云 IoT 平台**
- 设备属性数据上报
- 监听并处理 **华为云 IoT 平台** 下发的命令
- 发送命令响应，确保设备端与云端的交互

## 依赖环境
确保你已安装以下开发环境和库：
- **Arduino IDE**（或其他支持 ESP32 开发的环境）
- **ESP32** 开发板
- **PubSubClient** 库（用于 MQTT 通信）
- **ArduinoJson** 库（用于 JSON 数据处理）
- **WiFi** 连接

### 安装依赖库
在 **Arduino IDE** 中打开 **库管理器** 并搜索以下库进行安装：
```sh
PubSubClient
ArduinoJson 5
```

## 代码结构
```
ESP32_HuaweiCloud_MQTT/
│── BSP_MQTT.h                  # MQTT 相关配置和全局变量定义
│── BSP_MQTT.ino                # MQTT 连接初始化及回调函数
│── ESP32_HuaweiCloud_MQTT.ino  # ESP32 主程序
│── README.md                   # 项目说明文档
```

## 使用方法
### 1. 配置 WiFi 和 MQTT 服务器信息
在 `MQTT.ino` 文件中，修改以下参数以匹配你的 WiFi 和华为云 IoT 平台的 MQTT 服务器：
```cpp
const char* ssid = "YOUR_WIFI_SSID";        // WiFi 名称
const char* password = "YOUR_WIFI_PASSWORD"; // WiFi 密码
const char* mqttServer = "YOUR_MQTT_SERVER"; // MQTT 服务器地址
const int   mqttPort = 1883;                 // MQTT 端口
const char* clientId = "YOUR_CLIENT_ID";     // MQTT 客户端 ID
const char* mqttUser = "YOUR_MQTT_USER";     // MQTT 用户名
const char* mqttPassword = "YOUR_MQTT_PASSWORD"; // MQTT 密码
```

### 2. 编译并上传代码
使用 **Arduino IDE** 或 **PlatformIO** 进行编译，并将代码上传到 **ESP32** 开发板。

### 3. 运行代码
- 设备启动后，尝试连接 WiFi 并保持 MQTT 连接。
- 设备可以主动上报属性数据至 **华为云 IoT 平台**。
- 设备可以监听 **华为云 IoT 平台** 下发的控制命令，并作出相应操作。
