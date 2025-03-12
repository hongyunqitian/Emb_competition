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

//OV5640 ����ͷ ������ʾ����  ʹ��1.3��240x240������ʾ��

//STM32H7����ģ��-HAL�⺯���汾

/************************************************************************************************/


    uint8_t Key_Flag;       //������ֵ
    uint8_t T_Num;              //ѭ������
		uint8_t Print_buf[32];	//��Ϣ������
		
extern uint8_t  OV_mode;							//bit0:0,RGB565ģʽ;1,JPEGģʽ		
extern uint16_t Camera_ID;//����ͷ�ͺ�ID��

int main(void)
{
   
	
    Cache_Enable();					       //��L1-Cache
	
    HAL_Init();				             //��ʼ��HAL��
	
    Stm32_Clock_Init(160,5,2,4);	 //����ʱ��,400Mhz
	
    delay_init(400);				       //��ʱ��ʼ��
	
    	    	
    LED_Init();						//��ʼ��LEDʱ��
	
    KEY_Init();           //��ʼ������
	
    MPU_Memory_Protection();		//������ش洢����
    
    LCD_Init();            //��ʼ��1.3�� 240x240 ������  LCD��ʾ
		
//		GBK_Lib_Init();        //Ӳ��GBK�ֿ��ʼ��--(���ʹ�ò����ֿ��Һ�����汾���˴��������Σ������ֿ��ʼ����
    
		LCD_Clear(WHITE);      //����
		
    //TIM3_Init(10000-1,20000-1);		//10Khz����,1�����ж�һ��

	
		Draw_Font16B(24,50,BLUE," STM32H743");	
		Draw_Font16B(24,70,BLUE,"OV5640 TEST");	


    while(OV5640_Init())//��ʼ��OV5640
    {
        Draw_Font16B(24,130,RED,"OV5640 ERROR");
        delay_ms(200);
        LCD_Fill(24,130,239,170,WHITE);
        delay_ms(200);
        LED2_Toggle;
    }
		
	
		if(Camera_ID!=OV5640_ID)sprintf((char*)Print_buf,"Camera_ID: ERR");
			else sprintf((char*)Print_buf,"Camera_ID: 0x%4X",Camera_ID);
				
		 Draw_Font16B(24,110,BLUE,Print_buf);//��ʾ��ʾ����

     Draw_Font16B(24,130,BLUE,"OV5640 OK");
		
    while(1)
    {
			
        Key_Flag=KEY_Scan(0);  //��ȡ������ֵ
			
        if(Key_Flag==KEY1_PRES) 
					{
						Key_Flag=0;//�����ֵ
            OV_mode=0;    //RGB565ģʽ
						
            break;
          }
        else if(Key_Flag==KEY2_PRES) 
					{
						Key_Flag=0;//�����ֵ
            OV_mode=1;    //JPEGģʽ
            break;
        }
        
				T_Num++;
				
        if(T_Num==100)Draw_Font16B(24,150,RED,"KEY1:RGB565  KEY2:JPEG"); //��˸��ʾ��ʾ��Ϣ
        if(T_Num==200)
        {
            LCD_Fill(24,150,210,150+16,WHITE);
            T_Num=0;
            LED2_Toggle;
					  
        }
        delay_ms(5);
    }
		
		
    if(OV_mode==1)JPEG_mode();//ѡ��JPEG�������ģʽ
    else RGB565_mode();       //ѡ��RGBҺ������ʾģʽ
		
}
