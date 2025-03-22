/*
 * 项目作者: Witheart
 * GitHub主页: https://github.com/Witheart
 * CSDN博客: https://blog.csdn.net/Beihai_Van
 * 如需了解更多信息或贡献代码，请访问 Witheart 的 GitHub 主页或 CSDN 博客。
 */
#include <Wire.h>
#include <WiFi.h>
#include <PubSubClient.h>
#include <ArduinoJson.h>

#include "BSP_MQTT.h"


void setup() {
  Serial.begin(115200);
  MQTT_Init();

}

void loop() {
  client.loop();//mqtt保活

}
