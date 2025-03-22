#ifndef __DHT11_H
#define __DHT11_H

#include "sys.h"
#include "Delay.h"


//DHT11���ݴ������	//extern �������������Ե��õ��˺����еı���
extern uint8_t dht11_data[5];

void DHT11_GPIO_OUT(void);
void DHT11_GPIO_IN(void);
uint8_t DHT_Read_Byte(void);
uint8_t DHT_Read(void);


#endif
