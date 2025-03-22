// #include <Wire.h>
// #include <WiFi.h>
// #include <PubSubClient.h>
// #include <ArduinoJson.h>

// #include "BSP_MQTT.h"
// #include "BSP_base64.h"


// char receive = '\0';

// void setup() {
//   uint8_t bindata[] = {0x01, 0x02, 0x03, 0x04};
//   Serial.begin(115200);
//   Serial1.begin(115200, SERIAL_8N1, 17, 18);

//   base64_cov(bindata);
//   //MQTT_Init();
// }

// void loop() {
//   // 你已经注释了接收部分
//   // receive = Serial1.read();
//   // Serial.println(receive);

//   // 这里继续发送 "ok"
//   Serial1.write("ok");
//   delay(1000);

//   // client.loop(); //mqtt保活
//   // TASK_Capacity_Report(1);
// }


void setup() {
  Serial.begin(115200);    // 打开默认串口用于调试

Serial1.begin(115200,SERIAL_8N1,17,18);

}

void loop() {
  Serial1.print("ok");     // 向 Serial1 发送 "ok"
  delay(1000);             // 延迟1秒
}

