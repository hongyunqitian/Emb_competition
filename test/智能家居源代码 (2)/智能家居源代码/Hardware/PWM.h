#ifndef __PWM_H
#define __PWM_H
#include "stm32f4xx.h"                  // Device header
#include "stm32f4xx_conf.h"

uint8_t Rain_Get(void);
void TIM3_PWM_Init(uint32_t arr,uint32_t psc);
void Curtain_On(void);
void Curtain_Off(void);


void PWM_Init(void);
void PWM_SetCompare3(uint16_t Compare);


#endif
