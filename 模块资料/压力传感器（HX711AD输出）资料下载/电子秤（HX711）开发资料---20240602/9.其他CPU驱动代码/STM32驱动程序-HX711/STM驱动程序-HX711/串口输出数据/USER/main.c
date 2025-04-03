/************************************************************************************
						
*************************************************************************************/
#include "stm32f10x.h"
#include "delay.h"
#include "HX711.h"
#include "usart.h"



int main(void)
{		
	Init_HX711pin();
	delay_init();
	
	NVIC_Configuration(); 	 //设置NVIC中断分组2:2位抢占优先级，2位响应优先级
	uart_init(9600);	 //串口初始化为9600
	
	Get_Maopi();				//称毛皮重量
	delay_ms(1000);
	delay_ms(1000);
	Get_Maopi();				//重新获取毛皮重量
	
	while(1)
	{
		Get_Weight();

		printf("净重量 = %d g\r\n",Weight_Shiwu); //打印 
		delay_ms(1000);


	}
}






