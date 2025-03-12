#include "exti.h"
#include "delay.h"
#include "led.h"
#include "key.h"


//////////////////////////////////////////////////////////////////////////////////	 


//外部中断驱动代码	 

//STM32H7工程模板-HAL库函数版本
//DevEBox  大越创新
//淘宝店铺：mcudev.taobao.com
//淘宝店铺：shop389957290.taobao.com								  
////////////////////////////////////////////////////////////////////////////////// 	

//外部中断初始化
void EXTI_Init(void)
{
    GPIO_InitTypeDef GPIO_Initure;
    
   
    __HAL_RCC_GPIOC_CLK_ENABLE();               //开启PC时钟
    __HAL_RCC_GPIOE_CLK_ENABLE();               //开启PE时钟
    
	  GPIO_Initure.Pin=GPIO_PIN_3;                //PE3 --- K1
    GPIO_Initure.Mode=GPIO_MODE_IT_FALLING;     //下降沿触发
    GPIO_Initure.Pull=GPIO_PULLUP;			      	//上拉
    HAL_GPIO_Init(GPIOE,&GPIO_Initure);
    
    GPIO_Initure.Pin=GPIO_PIN_5;                //PC5 --- K2
    GPIO_Initure.Mode=GPIO_MODE_IT_FALLING;     //下降沿触发
    GPIO_Initure.Pull=GPIO_PULLUP;			      	//上拉
    HAL_GPIO_Init(GPIOC,&GPIO_Initure);
	
    

    
    //中断线3
    HAL_NVIC_SetPriority(EXTI3_IRQn,2,2);       //抢占优先级为2，子优先级为2
    HAL_NVIC_EnableIRQ(EXTI3_IRQn);             //使能中断线2
    
    //中断线5
    HAL_NVIC_SetPriority(EXTI9_5_IRQn,2,3);   //抢占优先级为3，子优先级为3
    HAL_NVIC_EnableIRQ(EXTI9_5_IRQn);         //使能中断线5
}





/***************************************************************************************/

//中断服务函数 3

//STM32H7工程模板-HAL库函数版本
//DevEBox  大越创新
//淘宝店铺：mcudev.taobao.com
//淘宝店铺：shop389957290.taobao.com	

/***************************************************************************************/

void EXTI3_IRQHandler(void)
{
    HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_3);   //调用中断处理公用函数
}



/***************************************************************************************/

//中断服务函数 9-5

//STM32H7工程模板-HAL库函数版本
//DevEBox  大越创新
//淘宝店铺：mcudev.taobao.com
//淘宝店铺：shop389957290.taobao.com	

/***************************************************************************************/

void EXTI9_5_IRQHandler(void)
{
    HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_5);   //调用中断处理公用函数
}








/***************************************************************************************/

//中断服务程序中需要做的事情
//在HAL库中所有的外部中断服务函数都会调用此函数
//GPIO_Pin:中断引脚号

//STM32H7工程模板-HAL库函数版本
//DevEBox  大越创新
//淘宝店铺：mcudev.taobao.com
//淘宝店铺：shop389957290.taobao.com	

/***************************************************************************************/

static u8 LED1_sta=1;

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
    
	
	 //消抖，此处为了方便使用了延时函数，实际代码中禁止在中断服务函数中调用任何delay之类的延时函数！！！
	
    delay_ms(20);    
	
    switch(GPIO_Pin)
    {

        case GPIO_PIN_3:
            if(KEY1==0) 	//控制LED2翻转	
            {
                LED1_sta=!LED1_sta;
                LED2(LED1_sta);	
            };
            break;
        case GPIO_PIN_5:
            if(KEY2==0)  	//控制LED2翻转	
            {
                LED1_sta=!LED1_sta;
                LED2(LED1_sta); 
            }
            break;


    }
}











/***************************************************************************************/

//STM32H7工程模板-HAL库函数版本
//DevEBox  大越创新
//淘宝店铺：mcudev.taobao.com
//淘宝店铺：shop389957290.taobao.com	

/***************************************************************************************/

