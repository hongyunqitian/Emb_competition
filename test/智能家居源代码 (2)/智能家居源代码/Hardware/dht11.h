#ifndef __DHT11_H
#define __DHT11_H

#include "sys.h"
#include "Delay.h"


//DHT11数据存放数组	//extern 让其他函数可以调用到此函数中的变量
extern uint8_t dht11_data[5];

void DHT11_GPIO_OUT(void);
void DHT11_GPIO_IN(void);
uint8_t DHT_Read_Byte(void);
uint8_t DHT_Read(void);


#endif
