#ifndef __SYSTEM_H  
#define __SYSTEM_H
#include "main.h"
#include "stdio.h"
#include "string.h"
#include "stdint.h"

#include "i2c_hal.h"//蓝桥杯的I2C驱动
#include "delay.h"//延时函数

#include "BH71750.h"//光照
#include "WaterPump.h"//水泵
#include "DF_HE_30.h"//温湿度传感器
#include "HX711.h"//称重传感器
#include "DHT11.h"//温湿度传感器
#include "motor.h"
extern volatile uint32_t tdelay,t0;


#endif





