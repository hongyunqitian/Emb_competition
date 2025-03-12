#include "sys.h"
#include "delay.h"
#include "usart.h" 
#include "led.h"
#include "key.h"

#include "LCD.h"
#include "Dis_Picture.h" 
#include "Text.h"	
#include "GBK_LibDrive.h"	


#include "timer.h" 
#include "ov5640.h"

#include "mpu.h"
#include "dcmi.h"

#include "OV_Frame.h"

/************************************************************************************************/

//OV5640 摄像头 驱动显示例程  使用1.3寸240x240高清显示屏

//STM32H7工程模板-HAL库函数版本

/************************************************************************************************/


    uint8_t Key_Flag;       //按键键值
    uint8_t T_Num;              //循环变量
		uint8_t Print_buf[32];	//消息缓存区
		
extern uint8_t  OV_mode;							//bit0:0,RGB565模式;1,JPEG模式		
extern uint16_t Camera_ID;//摄像头型号ID号

int main(void)
{
   
	
    Cache_Enable();					       //打开L1-Cache
	
    HAL_Init();				             //初始化HAL库
	
    Stm32_Clock_Init(160,5,2,4);	 //设置时钟,400Mhz
	
    delay_init(400);				       //延时初始化
	
    	    	
    LED_Init();						//初始化LED时钟
	
    KEY_Init();           //初始化按键
	
    MPU_Memory_Protection();		//保护相关存储区域
    
    LCD_Init();            //初始化1.3寸 240x240 高清屏  LCD显示
		
//		GBK_Lib_Init();        //硬件GBK字库初始化--(如果使用不带字库的液晶屏版本，此处可以屏蔽，不做字库初始化）
    
		LCD_Clear(WHITE);      //清屏
		
    //TIM3_Init(10000-1,20000-1);		//10Khz计数,1秒钟中断一次

	
		Draw_Font16B(24,50,BLUE," STM32H743");	
		Draw_Font16B(24,70,BLUE,"OV5640 TEST");	


    while(OV5640_Init())//初始化OV5640
    {
        Draw_Font16B(24,130,RED,"OV5640 ERROR");
        delay_ms(200);
        LCD_Fill(24,130,239,170,WHITE);
        delay_ms(200);
        LED2_Toggle;
    }
		
	
		if(Camera_ID!=OV5640_ID)sprintf((char*)Print_buf,"Camera_ID: ERR");
			else sprintf((char*)Print_buf,"Camera_ID: 0x%4X",Camera_ID);
				
		 Draw_Font16B(24,110,BLUE,Print_buf);//显示提示内容

     Draw_Font16B(24,130,BLUE,"OV5640 OK");
		
    while(1)
    {
			
        Key_Flag=KEY_Scan(0);  //获取按键键值
			
        if(Key_Flag==KEY1_PRES) 
					{
						Key_Flag=0;//清除键值
            OV_mode=0;    //RGB565模式
						
            break;
          }
        else if(Key_Flag==KEY2_PRES) 
					{
						Key_Flag=0;//清除键值
            OV_mode=1;    //JPEG模式
            break;
        }
        
				T_Num++;
				
        if(T_Num==100)Draw_Font16B(24,150,RED,"KEY1:RGB565  KEY2:JPEG"); //闪烁显示提示信息
        if(T_Num==200)
        {
            LCD_Fill(24,150,210,150+16,WHITE);
            T_Num=0;
            LED2_Toggle;
					  
        }
        delay_ms(5);
    }
		
		
    if(OV_mode==1)JPEG_mode();//选择JPEG串口输出模式
    else RGB565_mode();       //选择RGB液晶屏显示模式
		
}
