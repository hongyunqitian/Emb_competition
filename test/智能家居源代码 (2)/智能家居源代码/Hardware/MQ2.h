#ifndef __MQ2_H
#define __MQ2_H	 

#include "stm32f4xx.h"                  // Device header
#include "Delay.h"

void Adc_Init(void);
uint16_t Get_Adc_Average(uint8_t ch,uint8_t times); 
uint16_t Get_Adc_Data(uint8_t ch);

#endif

