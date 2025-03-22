#ifndef __LIGHT_SENSOR_H
#define __LIGHT_SENSOR_H
#include "stm32f4xx.h"                  // Device header
#include "stm32f4xx_conf.h"

void LightSensor_Init(void);
uint8_t LightSensor_Get(void);

#endif

