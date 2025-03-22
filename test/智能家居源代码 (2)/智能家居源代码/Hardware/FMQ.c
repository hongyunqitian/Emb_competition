#include "FMQ.h"
#include "stm32f4xx.h"                  // Device header
#include "Sys.h"
 
void fmq_Init(void)	
{
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB,ENABLE);
	GPIO_InitTypeDef  GPIO_InitStructure; 

	GPIO_InitStructure.GPIO_Mode =GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_OType =GPIO_OType_PP;
	GPIO_InitStructure.GPIO_Pin =GPIO_Pin_0;
	GPIO_InitStructure.GPIO_PuPd =GPIO_PuPd_NOPULL;
	GPIO_InitStructure.GPIO_Speed =GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStructure);
}

void fmq(float MQ2_Value)
{
	if(MQ2_Value < 60)
	{
		PBout(0) = 0;
	}
	else
	{
		PBout(0) = 1;
	}
}
