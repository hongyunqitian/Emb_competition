#ifndef _OV5640_H
#define _OV5640_H
#include "sys.h"
#include "sccb.h"
//////////////////////////////////////////////////////////////////////////////////	 

/************************************************************************************************/
//OV5640 驱动代码

//STM32H7工程模板-HAL库函数版本


 


/************************************************************************************************/
					  
////////////////////////////////////////////////////////////////////////////////// 

#define OV5640_PWDN(n)  (n?HAL_GPIO_WritePin(GPIOA,GPIO_PIN_7,GPIO_PIN_SET):HAL_GPIO_WritePin(GPIOA,GPIO_PIN_7,GPIO_PIN_RESET))//POWER DOWN控制信号,由 PA7 控制 
#define OV5640_RST(n)  	(n?HAL_GPIO_WritePin(GPIOC,GPIO_PIN_4,GPIO_PIN_SET):HAL_GPIO_WritePin(GPIOC,GPIO_PIN_4,GPIO_PIN_RESET))//复位控制信号  PC4 控制复位 


////////////////////////////////////////////////////////////////////////////////// 
#define OV5640_ID               0x5640  	//OV5640的芯片ID
 

#define OV5640_ADDR        		0x78		//OV5640的IIC地址
 
//OV5640相关寄存器定义  
#define OV5640_CHIPIDH          0x300A  	//OV5640芯片ID高字节
#define OV5640_CHIPIDL          0x300B  	//OV5640芯片ID低字节
 

								
u8 OV5640_WR_Reg(u16 reg,u8 data);
u8 OV5640_RD_Reg(u16 reg);
void OV5640_PWDN_Set(u8 sta);
u8 OV5640_Init(void);  
void OV5640_JPEG_Mode(void);
void OV5640_RGB565_Mode(void);
void OV5640_Light_Mode(u8 mode);
void OV5640_Color_Saturation(u8 sat);
void OV5640_Brightness(u8 bright);
void OV5640_Contrast(u8 contrast);
void OV5640_Sharpness(u8 sharp);
void OV5640_Special_Effects(u8 eft);
void OV5640_Test_Pattern(u8 mode);
void OV5640_Flash_Ctrl(u8 sw);
u8 OV5640_OutSize_Set(u16 offx,u16 offy,u16 width,u16 height);
u8 OV5640_ImageWin_Set(u16 offx,u16 offy,u16 width,u16 height); 
u8 OV5640_Focus_Init(void);
u8 OV5640_Focus_Single(void);
u8 OV5640_Focus_Constant(void);
#endif
























/************************************************************************************************/
//OV5640 驱动代码

//STM32H7工程模板-HAL库函数版本


 


/************************************************************************************************/













