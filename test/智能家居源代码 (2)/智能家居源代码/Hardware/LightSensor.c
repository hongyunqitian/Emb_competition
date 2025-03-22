#include "stm32f4xx.h"                  // Device header
#include "stm32f4xx_conf.h"

void LightSensor_Init(void)
{
  RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOC,ENABLE);
	
	GPIO_InitTypeDef GPIO_InitStruct;
	GPIO_InitStruct.GPIO_Mode =GPIO_Mode_IN;
	GPIO_InitStruct.GPIO_Pin =GPIO_Pin_1;
	GPIO_InitStruct.GPIO_Speed =GPIO_Speed_50MHz;
	GPIO_Init(GPIOC,&GPIO_InitStruct);
}

uint8_t LightSensor_Get(void)
{
	return GPIO_ReadInputDataBit(GPIOC,GPIO_Pin_1);
}
