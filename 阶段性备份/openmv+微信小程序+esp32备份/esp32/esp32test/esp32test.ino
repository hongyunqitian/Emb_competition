
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
  TASK_Capacity_Report(1);
}