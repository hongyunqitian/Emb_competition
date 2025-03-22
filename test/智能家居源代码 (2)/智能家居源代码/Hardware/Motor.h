#ifndef __MOTOR_H
#define __MOTOR_H
#include "stm32f4xx.h"                  // Device header

void Motor_Init(void);
void Motor_SetSpeed(int8_t Speed);
void Motor_Stop(void);
void Fanlight_On(void);
void Fanlight_Off(void);
void Fanlight_Stop(void);

#endif
