/*
DHT11 温湿度传感器
VDD:5V
DATA:串行数据线
NC：悬空
GND：接地

读取流程：先给一个起始信号，然后等待DHT11响应，然后读取40位数据，最后根据校验码判断数据是否正确
*/
#ifndef __DHT11_H
#define __DHT11_H
#include "system.h"

#define DHT11_PIN GPIO_PIN_1
#define DHT11_PORT GPIOA
void DHT11_Init(void);

#endif


