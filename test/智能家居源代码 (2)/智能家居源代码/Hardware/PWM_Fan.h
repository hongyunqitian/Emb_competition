#ifndef __PWM_H
#define __PWM_H
#include "stm32f4xx.h"                  // Device header
#include "stm32f4xx_conf.h"

void PWM_Init(void);
void PWM_SetCompare3(uint16_t Compare);

#endif
