// /*
//  * 项目作者: Witheart
//  * GitHub主页: https://github.com/Witheart
//  * CSDN博客: https://blog.csdn.net/Beihai_Van
//  * 如需了解更多信息或贡献代码，请访问 Witheart 的 GitHub 主页或 CSDN 博客。
//  */

// /*
//  * 概述：此文件(MQTT.ino)包含ESP32与华为云MQTT服务器连接相关函数
//  * 创建日期：2022年5月31日
//  * 作者：Witheart
//  */


// #include "BSP_MQTT.h"
// #include "BSP_base64.h"
// /* MQTT 连接配置 */
// /*-----------------------------------------------------*/

// // 连接 WiFi
// const char* ssid = "#include<stdio.h>";      // 请替换为你的 WiFi SSID
// const char* password = "lh050828"; // 请替换为你的 WiFi 密码

// // MQTT 服务器信息
// const char* mqttServer = "e3ce2a4c4b.st1.iotda-device.cn-north-4.myhuaweicloud.com"; // 请替换为你的 MQTT 服务器地址
// const int   mqttPort = 1883;                 // 请替换为你的 MQTT 端口（建议使用 TLS/SSL）
// const char* clientId = "67d0448624d772325524e498_emp_test_0_0_2025032202";     // 请替换为你的 MQTT 客户端 ID
// const char* mqttUser = "67d0448624d772325524e498_emp_test";     // 请替换为你的 MQTT 用户名
// const char* mqttPassword = "8a49b95f30947d0901ba80512d5c3b6088c7ac1d7842f491f4627d842534c146"; // 请替换为你的 MQTT 密码



// const char* topic_properties_report = "$oc/devices/67d0448624d772325524e498_emp_test/sys/properties/report";
// char* topic_Commands_Response = "";

// /*******************************************************/



// /*
//  * 作用：  ESP32的WiFi初始化以及与MQTT服务器的连接
//  * 参数：  无
//  * 返回值：无
//  */
// void MQTT_Init()
// {
// //WiFi网络连接部分
//   WiFi.begin(ssid, password); //开启ESP32的WiFi
//   while (WiFi.status() != WL_CONNECTED) { //ESP尝试连接到WiFi网络
//     delay(3000);
//     Serial.println("Connecting to WiFi...");
//   }
//   Serial.println("Connected to the WiFi network");


// //MQTT服务器连接部分
//   client.setBufferSize(3000); 
//   client.setServer(mqttServer, mqttPort); //设置连接到MQTT服务器的参数

//   client.setKeepAlive (60); //设置心跳时间

//   while (!client.connected()) { //尝试与MQTT服务器建立连接
//     Serial.println("Connecting to MQTT...");
  
//     if (client.connect(clientId, mqttUser, mqttPassword )) {
  
//       Serial.println("connected");  

//     } else {
  
//       Serial.print("failed with state ");
//       Serial.print(client.state());
//       delay(6000);
  
//     }
//   }
// //接受平台下发内容的初始化
//   client.setCallback(callback); //可以接受任何平台下发的内容
// }


// /*
//  * 作用：   监听华为云IoT平台下发指令并处理回调函数
//  * 参数1：  订阅的topic
//  * 参数2：  接收到的内容
//  * 参数3：  内容的长度
//  * 返回值： 无
//  */
// void callback(char *topic, byte *payload, unsigned int length)
// {
// //   char *pstr = topic; //指向topic字符串，提取request_id用
    
// //   Serial.println();
// //   Serial.println();
// //   Serial.print("Message arrived [");
// //   Serial.print(topic);  //将收到消息的topic展示出来
// //   Serial.print("] ");
// //   Serial.println();

// //   payload[length] = '\0'; //在收到的内容后面加上字符串结束符
// //   char strPayload[255] = {0}; 
// //   strcpy(strPayload, (const char*)payload);
// //   Serial.println((char *)payload);  //打印出收到的内容
// //   Serial.println(strPayload);


// //   /*request_id解析部分*/
// //   char arr[100];  //存放request_id
// //   int flag = 0;
// //   char *p = arr;
// //   while(*pstr)  //以'='为标志，提取出request_id
// //   {
// //     if(flag) *p ++ = *pstr;
// //     if(*pstr == '=') flag = 1;
// //     pstr++;
// //   }
// //   *p = '\0';  
// //   Serial.println(arr);
// //   strcat(topic_Commands_Response, arr);
// //   topic_Commands_Response.concat(arr);


// //   /*将命令响应topic与resquest_id结合起来*/
// //   char topicRes[200] = {0};
// //   strcat(topicRes, topic_Commands_Response);
// //   strcat(topicRes, arr);
// //   Serial.println(topicRes);


// //   /*payload解析*/
// //   const size_t capacity_Payload_Receive = JSON_OBJECT_SIZE(3) + JSON_OBJECT_SIZE(5) + 150;
// //   DynamicJsonBuffer jsonBuffer_Payload(capacity_Payload_Receive);

// //   // const char* json = "{\"paras\":{\"address\":\"88-902\",\"user\":\"wksgogogo\",\"number\":\"3333\",\"day\":\"2022-07-21\",\"time\":\"12:01\"},\"service_id\":\"Users_Delivery_Order\",\"command_name\":\"user_order\"}";

// //   JsonObject& root_Payload = jsonBuffer_Payload.parseObject(strPayload);

// //  //判断json解析是否成功
// //  if (root_Payload.success()){
// //     if(!strcmp(root_Payload["command_name"], "user_order"))  //如果收到的内容是“用户下单”
// //     {
// //       JsonObject& paras_Payload = root_Payload["paras"];
// //       const char* paras_address = paras_Payload["address"]; 
// //       const char* paras_user = paras_Payload["user"]; 
// //       const char* paras_number = paras_Payload["number"]; 
// //       const char* paras_day = paras_Payload["day"];
// //       const char* paras_time = paras_Payload["time"];

// //       Serial.println("__________JSON Received Parse__________");
// //       Serial.println(paras_address);
// //       Serial.println(paras_user);
// //       Serial.println(paras_number);
// //       Serial.println(paras_day);
// //       Serial.println(paras_time);

// //       Info_UserOrder_Structure OrderInfo;
// //       strcpy(OrderInfo.userName, paras_user);
// //       strcpy(OrderInfo.address, paras_address);
// //       strcpy(OrderInfo.orderNum, paras_number);
// //       strcpy(OrderInfo.day, paras_day);
// //       strcpy(OrderInfo.time, paras_time);

// //       //响应
// //       Command_Response(topicRes, "user_order", SUCCESS);

// //       OrderInfo_Save(OrderInfo);  //订单信息存储
// //     }


// //     if(!strcmp(root_Payload["command_name"], "open"))   //如果收到的内容是“开锁”
// //     {
// //       const char* paras_user = root_Payload["paras"]["user"]; 
// //       Serial.println("__________JSON Received Parse__________");
// //       Serial.println(paras_user);

// //       EOF_ELock_Unlock(paras_user);

// //       Command_Response(topicRes, "open", SUCCESS);
// //     }
// //   }
// }


// /*
//  * 作用：   华为云IoT命令下发的响应函数
//  * 参数1：  命令响应的topic
//  * 参数2：  命令响应名
//  * 参数3：  响应结果
//  * 返回值： 无
//  */
// void Command_Response(char *topic, char *responseName, uint8_t response_Result)
// {
//   // /*发送命令响应部分*/
//   //   /*构建JSON内容*/
//   // const size_t capacity = JSON_OBJECT_SIZE(2) + JSON_OBJECT_SIZE(3);
//   // DynamicJsonBuffer jsonBuffer(capacity);

//   // JsonObject& root = jsonBuffer.createObject();
//   // if(response_Result == SUCCESS){
//   //   root["result_code"] = 0;
//   //   JsonObject& paras = root.createNestedObject("paras");
//   //   paras["status"] = 200;
//   //   paras["msg"] = "success";
//   // }
//   // else if(response_Result == FAIL){
//   //   root["result_code"] = 1;
//   //   JsonObject& paras = root.createNestedObject("paras");
//   //   paras["status"] = 400;
//   //   paras["msg"] = "fail";
//   // }
  
//   // if(!strcmp(responseName, "user_order")){
//   //   root["response_name"] = "user_order";
//   // }
//   // else if(!strcmp(responseName, "open")){
//   //   root["response_name"] = "open";
//   // }
  

  

//   // root.printTo(Serial); //串口打印出构建好的JSON内容
//   // Serial.println();


//   // char JSONmessageBuffer[300];
//   // root.printTo(JSONmessageBuffer, sizeof(JSONmessageBuffer)); //将构建的JSON消息复制到char数组中
  
//   // Serial.println("Sending response to HuaWei Cloud..");
//   // Serial.println(JSONmessageBuffer);
 
//   // if (client.publish(topic, JSONmessageBuffer) == true) {
//   //   Serial.println("Success sending response command message");
//   // } else {
//   //   Serial.println("Error sending response command message");
//   // }
 

//   // Serial.println("-------------");
// }



// /*
//  * 作用：  垃圾桶容量上报到MQTT服务器任务
//  * 参数：  (int)垃圾桶容量，1代表垃圾桶满了，0代表垃圾桶未满
//  * 返回值：无
//  * 命名说明：Capacity：容量
//  */
// void TASK_Capacity_Report(int capacity)
// {
//   // 模拟一个初始的 JSON 字符串，可以替换为实际数据
//   const char* input = "{\"services\":[{\"service_id\":\"emb_picture\",\"properties\":{\"emb_picture\":\"old_value\"}}]}";
//   size_t inputLength = strlen(input); // 获取输入字符串的长度

//   // 声明一个容量为300字节的静态 JSON 文档（根据实际数据调整大小）
//   StaticJsonDocument<4096> doc;
  
//   // 解析输入的 JSON 字符串
//   DeserializationError error = deserializeJson(doc, input, inputLength);
//   if (error) {
//     Serial.print("deserializeJson() failed: ");
//     Serial.println(error.c_str());
//     return;
//   }
  
//   // 示例：获取解析后的字段（可选）
//   const char* services_0_service_id = doc["services"][0]["service_id"]; // "emb_picture"
//   const char* services_0_properties_emb_picture = doc["services"][0]["properties"]["emb_picture"];
//   Serial.print("Before modification, emb_picture: ");
//   Serial.println(services_0_properties_emb_picture);
  
//   // 修改现有字段，将 "emb_picture" 字段更新为 "esp32ok"
//   doc["services"][0]["properties"]["emb_picture"] ="data:image/jpeg;base64,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";
//   // 将修改后的 JSON 文档序列化到字符数组中，便于后续发送
//   char outputBuffer[4096];  // 根据 JSON 数据大小调整缓冲区大小
//   serializeJson(doc, outputBuffer, sizeof(outputBuffer));
//   Serial.println("Modified JSON:");
//   Serial.println(outputBuffer);
  
//   // 以下代码将打包好的 JSON 数据通过 PubSubClient 库发送到服务器 
//   // 请确保 topic_properties_report 已经定义，client 已经连接
//   if (client.publish(topic_properties_report, outputBuffer)) {
//     Serial.println("Success sending message");
//   } else {
//     Serial.println("Error sending message");
//   }
// while(1);
//   // 调用 client.loop() 保持 MQTT 连接活跃
//   client.loop();
//   Serial.println("-------------");
// }
