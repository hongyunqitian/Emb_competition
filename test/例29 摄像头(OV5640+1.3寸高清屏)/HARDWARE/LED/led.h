#ifndef _LED_H
#define _LED_H
#include "sys.h"
//////////////////////////////////////////////////////////////////////////////////	 

//LED驱动代码	   

//STM32H7工程模板-HAL库函数版本


 							  
////////////////////////////////////////////////////////////////////////////////// 	

//LED端口定义

#define LED2(n)		   (n?HAL_GPIO_WritePin(GPIOA,GPIO_PIN_1,GPIO_PIN_SET):HAL_GPIO_WritePin(GPIOA,GPIO_PIN_1,GPIO_PIN_RESET))
#define LED2_Toggle (HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_1))                                    //LED1输出电平翻转

void LED_Init(void); //LED初始化函数


#endif


















//STM32H7工程模板-HAL库函数版本


 






