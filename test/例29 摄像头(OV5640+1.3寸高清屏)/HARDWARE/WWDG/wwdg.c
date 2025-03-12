#include "wwdg.h"
#include "delay.h"
#include "led.h"
//////////////////////////////////////////////////////////////////////////////////	 
 
/************************************************

//���ڿ��Ź���������	  


//��ʼ�����ڿ��Ź� 	
//tr   :T[6:0],������ֵ 
//wr   :W[6:0],����ֵ 
//fprer:��Ƶϵ����WDGTB��,�����2λ��Ч 
//Fwwdg=RCC_PCLK3/(4096*2^fprer). һ��RCC_PCLK3=100Mhz


//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com		

************************************************/							  
////////////////////////////////////////////////////////////////////////////////// 

WWDG_HandleTypeDef WWDG_Handler;     //���ڿ��Ź����


void WWDG_Init(u8 tr,u8 wr,u32 fprer)
{
    WWDG_Handler.Instance=WWDG1;
    WWDG_Handler.Init.Prescaler=fprer;  //���÷�Ƶϵ��
    WWDG_Handler.Init.Window=wr;        //���ô���ֵ
    WWDG_Handler.Init.Counter=tr;       //���ü�����ֵ
    WWDG_Handler.Init.EWIMode=WWDG_EWI_ENABLE;//ʹ�ܴ��ڿ��Ź���ǰ�����ж� 
    HAL_WWDG_Init(&WWDG_Handler);       //��ʼ��WWDG
}




/************************************************

//WWDG�ײ�������ʱ�����ã��ж�����
//�˺����ᱻHAL_WWDG_Init()����
//hwwdg:���ڿ��Ź����


//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com		

************************************************/			


void HAL_WWDG_MspInit(WWDG_HandleTypeDef *hwwdg)
{
    __HAL_RCC_WWDG1_CLK_ENABLE();            //ʹ�ܴ��ڿ��Ź�ʱ��
     
    HAL_NVIC_SetPriority(WWDG_IRQn,2,3);    //��ռ���ȼ�2�������ȼ�Ϊ3
    HAL_NVIC_EnableIRQ(WWDG_IRQn);          //ʹ�ܴ��ڿ��Ź��ж�
}



/************************************************

//���ڿ��Ź��жϷ�����


//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com		

************************************************/			


void WWDG_IRQHandler(void)
{
    HAL_WWDG_IRQHandler(&WWDG_Handler);
}





/************************************************

//�жϷ������������
//�˺����ᱻHAL_WWDG_IRQHandler()����


//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com		

************************************************/			

void HAL_WWDG_EarlyWakeupCallback(WWDG_HandleTypeDef* hwwdg)
{
    HAL_WWDG_Refresh(&WWDG_Handler);//���´��ڿ��Ź�ֵ
    LED2_Toggle; 
}
















/************************************************

//���ڿ��Ź���������	  


//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com		

************************************************/			
