#include <Wire.h>
#include <WiFi.h>
#include <PubSubClient.h>
#include <ArduinoJson.h>

#include "BSP_MQTT.h"
#include "BSP_base64.h"

uint8_t rx_data[4096];//串口接收数据
uint8_t Bindata[4096];//将串口数据转换为base64格式字符串
bool start_flag=false;
int rx_index=0;
uint8_t receive0;
uint8_t receive;


void setup() {
  uint8_t bindata[] = {0x01, 0x02, 0x03, 0x04};
  Serial.begin(115200);
  Serial1.begin(115200, SERIAL_8N1, 17, 18);
  delay(1000);

   MQTT_Init(); 
   
  Serial1.write("1");//向openmv发送数据申请


}

void loop() {
  client.loop(); //mqtt保活

  while(Serial1.available()){
    receive0 = receive; //上一次串口数据
    receive = Serial1.read(); //当前串口数据
    
    if(receive0 == 0x55 && receive == 0xAA && start_flag == false) { //接收到包头
      rx_index = 0; //重置索引
      memset(rx_data, 0, sizeof(rx_data)); //清空接收缓冲区
      rx_data[rx_index++] = 0x55; //保存包头
      rx_data[rx_index++] = 0xAA;
      start_flag = true; //开始接收数据
      Serial.println("检测到包头");
      continue; //继续接收下一个字节
    }
    
    if(start_flag) { //正在接收数据
      rx_data[rx_index++] = receive;
      
      //检测包尾
      if(rx_index >= 2 && receive0 == 0xAA && receive == 0x55) {
        start_flag = false; //结束接收数据
        Serial.println("检测到包尾，数据长度: " + String(rx_index));
        
        //处理接收到的完整数据
        String base64_data = base64_cov(rx_data, rx_index);
        Base64_Upload(base64_data); //上传base64编码后的数据
        rx_index = 0;
        
        //可选：请求下一帧图像
        delay(200);
        Serial1.write("1");
      }
    }
  }
}



