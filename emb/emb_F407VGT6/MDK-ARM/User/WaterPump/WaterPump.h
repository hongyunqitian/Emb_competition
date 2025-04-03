#ifndef __WATERPUMP_H   
#define __WATERPUMP_H
#include "system.h"
#define WATERPUMP_PIN GPIO_PIN_13//引脚PB13
#define WATERPUMP_GPIO_PORT GPIOB

void WaterPump_Init(void);
void WaterPump(uint8_t state);

#endif



