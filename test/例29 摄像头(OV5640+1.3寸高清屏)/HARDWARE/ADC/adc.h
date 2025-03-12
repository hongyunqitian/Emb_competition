#ifndef __ADC_H
#define __ADC_H
#include "sys.h"
//////////////////////////////////////////////////////////////////////////////////	 
 
/**********************************************************************/

//ADC驱动代码	  

//STM32H7工程模板-HAL库函数版本
//DevEBox  大越创新
//淘宝店铺：mcudev.taobao.com
//淘宝店铺：shop389957290.taobao.com	
/*********************************************************************/							  
////////////////////////////////////////////////////////////////////////////////// 	

extern ADC_HandleTypeDef ADC1_Handler;//ADC句柄

void MY_ADC1_Init(void); 				//ADC通道初始化
void MY_ADC3_Init(void);
u16 Get_Adc(ADC_HandleTypeDef ADCx,u32 ch);	//获得某个通道值 
u16 Get_Adc_Average(ADC_HandleTypeDef ADCx,u32 ch,u8 times);//得到某个通道给定次数采样的平均值
float Get_Temprate(void);
#endif 





















/**********************************************************************/

//ADC驱动代码	  

//STM32H7工程模板-HAL库函数版本
//DevEBox  大越创新
//淘宝店铺：mcudev.taobao.com
//淘宝店铺：shop389957290.taobao.com	
/*********************************************************************/		

