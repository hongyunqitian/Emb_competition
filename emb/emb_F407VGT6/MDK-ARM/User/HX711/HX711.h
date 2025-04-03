#ifndef __HX711_H
#define __HX711_H
#include "system.h"
/*
低电平到高电平跳变时间小于0.1us即10MHZ
sck的时钟脉冲高电平要小于50us大于0.2us，所以无法使用HAL_Delay(1)的1ms延时，需要自定义延时函数
负脉冲电平时间大于等于0.2us，无最大时间要求
*/


#define HX711_SCK_PIN GPIO_PIN_12
#define HX711_SCK_PORT GPIOB
#define HX711_DOUT_PIN GPIO_PIN_13
#define HX711_DOUT_PORT GPIOB

// 函数声明
void HX711_Init(void);
uint32_t HX711_Read(void);
void Get_Maopi(void);
void Get_Weight(void);
int32_t Get_Weight_Value(void);


void delay( uint32_t n);


// 全局变量声明
extern uint32_t HX711_Buffer;
extern volatile uint32_t Weight_Maopi;
extern int32_t Weight_Shiwu;
extern uint8_t Flag_Error;

#endif




