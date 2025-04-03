#ifndef __DF_HE_30_H
#define __DF_HE_30_H
#include "system.h"
/*
雾化器高电平开启低电平关闭
#define DF_HE_30_PIN GPIO_PIN_14
#define DF_HE_30_PORT GPIOB
注意雾化器要放水中，长时间悬空启动会烧坏
*/
#define DF_HE_30_PIN GPIO_PIN_14
#define DF_HE_30_PORT GPIOB

void DF_HE_30_Init(void);//初始化雾化器
void DF_HE_30_On(void);//打开雾化器
void DF_HE_30_Off(void);//关闭雾化器

#endif


