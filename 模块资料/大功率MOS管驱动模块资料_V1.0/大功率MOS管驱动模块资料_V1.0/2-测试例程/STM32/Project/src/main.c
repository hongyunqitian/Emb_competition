/**********************************************************************************
 * 功能描述：控制IO口PC13每隔5s循环切换高低电平输出
**********************************************************************************/

#include "stm32f10x.h"
#include "delay.h"

/**************************************************************************************
 * 描  述 : GPIO初始化配置
 * 入  参 : 无
 * 返回值 : 无
 **************************************************************************************/
void GPIO_Configuration(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	
	/* Enable the GPIO  Clock */
	RCC_APB2PeriphClockCmd( RCC_APB2Periph_GPIOB|RCC_APB2Periph_GPIOC , ENABLE); 						 		
	
  GPIO_DeInit(GPIOB);	 //将外设GPIOB寄存器重设为缺省值
	
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6;	
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING; //浮空输入   
	GPIO_Init(GPIOB, &GPIO_InitStructure);
	
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_13;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;     //推挽输出
	GPIO_Init(GPIOC, &GPIO_InitStructure);
	
	GPIO_ResetBits(GPIOC , GPIO_Pin_13);   //初始状态，熄灭指示灯
}

void IO_control(void)
{
	GPIO_SetBits(GPIOC , GPIO_Pin_13);   //闭合
	delay_ms(5000); 
	GPIO_ResetBits(GPIOC , GPIO_Pin_13); //关闭
	delay_ms(5000); 
}

/**************************************************************************************
 * 描  述 : MAIN函数
 * 入  参 : 无
 * 返回值 : 无
 **************************************************************************************/
int main(void)
{

	SystemInit();		        //设置系统时钟72MHZ
	GPIO_Configuration();   //GPIO口初始化
	
  while(1)
  {
		IO_control();         //IO控制 
	}
}
/*********************************END FILE********************************************/
