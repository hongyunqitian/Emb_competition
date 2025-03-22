#include "Apps.h"

void Apps_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOC ,ENABLE);
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0 |GPIO_Pin_2 |GPIO_Pin_3  |GPIO_Pin_4;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOC ,&GPIO_InitStructure);
	
}

void Fan_On(void)
{
	PCout(0) = 0;
}
void Fan_Off(void)
{
	PCout(0) = 1;
}


void InDoor_On(void)
{
	PCout(3) = 0;
}
void InDoor_Off(void)
{
	PCout(3) = 1;
}


void OutDoor_On(void)
{	
	PCout(2) = 0;
}
void OutDoor_Off(void)
{
	PCout(2) = 1;
}


void HVAC_On(void)
{
	PCout(4) = 0;
}
void HVAC_Off(void)
{
	PCout(4) = 1;
}
