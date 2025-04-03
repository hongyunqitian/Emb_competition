#ifndef __DELAY_H
#define __DELAY_H
#include "system.h"

void delay_init(void);//初始化延时函数
void delay_us(uint32_t us);//微秒延时
void delay_ms(uint32_t ms);//毫秒延时
void delay_cycles(uint32_t cycles);//延时cycles个时钟周期

#endif



