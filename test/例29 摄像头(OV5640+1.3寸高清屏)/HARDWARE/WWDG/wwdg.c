#include "wwdg.h"
#include "delay.h"
#include "led.h"
//////////////////////////////////////////////////////////////////////////////////	 
 
/************************************************

//窗口看门狗驱动代码	  


//初始化窗口看门狗 	
//tr   :T[6:0],计数器值 
//wr   :W[6:0],窗口值 
//fprer:分频系数（WDGTB）,仅最低2位有效 
//Fwwdg=RCC_PCLK3/(4096*2^fprer). 一般RCC_PCLK3=100Mhz


//STM32H7工程模板-HAL库函数版本
//DevEBox  大越创新
//淘宝店铺：mcudev.taobao.com
//淘宝店铺：shop389957290.taobao.com		

************************************************/							  
////////////////////////////////////////////////////////////////////////////////// 

WWDG_HandleTypeDef WWDG_Handler;     //窗口看门狗句柄


void WWDG_Init(u8 tr,u8 wr,u32 fprer)
{
    WWDG_Handler.Instance=WWDG1;
    WWDG_Handler.Init.Prescaler=fprer;  //设置分频系数
    WWDG_Handler.Init.Window=wr;        //设置窗口值
    WWDG_Handler.Init.Counter=tr;       //设置计数器值
    WWDG_Handler.Init.EWIMode=WWDG_EWI_ENABLE;//使能窗口看门狗提前唤醒中断 
    HAL_WWDG_Init(&WWDG_Handler);       //初始化WWDG
}




/************************************************

//WWDG底层驱动，时钟配置，中断配置
//此函数会被HAL_WWDG_Init()调用
//hwwdg:窗口看门狗句柄


//STM32H7工程模板-HAL库函数版本
//DevEBox  大越创新
//淘宝店铺：mcudev.taobao.com
//淘宝店铺：shop389957290.taobao.com		

************************************************/			


void HAL_WWDG_MspInit(WWDG_HandleTypeDef *hwwdg)
{
    __HAL_RCC_WWDG1_CLK_ENABLE();            //使能窗口看门狗时钟
     
    HAL_NVIC_SetPriority(WWDG_IRQn,2,3);    //抢占优先级2，子优先级为3
    HAL_NVIC_EnableIRQ(WWDG_IRQn);          //使能窗口看门狗中断
}



/************************************************

//窗口看门狗中断服务函数


//STM32H7工程模板-HAL库函数版本
//DevEBox  大越创新
//淘宝店铺：mcudev.taobao.com
//淘宝店铺：shop389957290.taobao.com		

************************************************/			


void WWDG_IRQHandler(void)
{
    HAL_WWDG_IRQHandler(&WWDG_Handler);
}





/************************************************

//中断服务函数处理过程
//此函数会被HAL_WWDG_IRQHandler()调用


//STM32H7工程模板-HAL库函数版本
//DevEBox  大越创新
//淘宝店铺：mcudev.taobao.com
//淘宝店铺：shop389957290.taobao.com		

************************************************/			

void HAL_WWDG_EarlyWakeupCallback(WWDG_HandleTypeDef* hwwdg)
{
    HAL_WWDG_Refresh(&WWDG_Handler);//更新窗口看门狗值
    LED2_Toggle; 
}
















/************************************************

//窗口看门狗驱动代码	  


//STM32H7工程模板-HAL库函数版本
//DevEBox  大越创新
//淘宝店铺：mcudev.taobao.com
//淘宝店铺：shop389957290.taobao.com		

************************************************/			
