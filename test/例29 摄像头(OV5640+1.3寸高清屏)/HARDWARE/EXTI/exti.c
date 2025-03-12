#include "exti.h"
#include "delay.h"
#include "led.h"
#include "key.h"


//////////////////////////////////////////////////////////////////////////////////	 


//�ⲿ�ж���������	 

//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com								  
////////////////////////////////////////////////////////////////////////////////// 	

//�ⲿ�жϳ�ʼ��
void EXTI_Init(void)
{
    GPIO_InitTypeDef GPIO_Initure;
    
   
    __HAL_RCC_GPIOC_CLK_ENABLE();               //����PCʱ��
    __HAL_RCC_GPIOE_CLK_ENABLE();               //����PEʱ��
    
	  GPIO_Initure.Pin=GPIO_PIN_3;                //PE3 --- K1
    GPIO_Initure.Mode=GPIO_MODE_IT_FALLING;     //�½��ش���
    GPIO_Initure.Pull=GPIO_PULLUP;			      	//����
    HAL_GPIO_Init(GPIOE,&GPIO_Initure);
    
    GPIO_Initure.Pin=GPIO_PIN_5;                //PC5 --- K2
    GPIO_Initure.Mode=GPIO_MODE_IT_FALLING;     //�½��ش���
    GPIO_Initure.Pull=GPIO_PULLUP;			      	//����
    HAL_GPIO_Init(GPIOC,&GPIO_Initure);
	
    

    
    //�ж���3
    HAL_NVIC_SetPriority(EXTI3_IRQn,2,2);       //��ռ���ȼ�Ϊ2�������ȼ�Ϊ2
    HAL_NVIC_EnableIRQ(EXTI3_IRQn);             //ʹ���ж���2
    
    //�ж���5
    HAL_NVIC_SetPriority(EXTI9_5_IRQn,2,3);   //��ռ���ȼ�Ϊ3�������ȼ�Ϊ3
    HAL_NVIC_EnableIRQ(EXTI9_5_IRQn);         //ʹ���ж���5
}





/***************************************************************************************/

//�жϷ����� 3

//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com	

/***************************************************************************************/

void EXTI3_IRQHandler(void)
{
    HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_3);   //�����жϴ����ú���
}



/***************************************************************************************/

//�жϷ����� 9-5

//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com	

/***************************************************************************************/

void EXTI9_5_IRQHandler(void)
{
    HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_5);   //�����жϴ����ú���
}








/***************************************************************************************/

//�жϷ����������Ҫ��������
//��HAL�������е��ⲿ�жϷ�����������ô˺���
//GPIO_Pin:�ж����ź�

//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com	

/***************************************************************************************/

static u8 LED1_sta=1;

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
    
	
	 //�������˴�Ϊ�˷���ʹ������ʱ������ʵ�ʴ����н�ֹ���жϷ������е����κ�delay֮�����ʱ����������
	
    delay_ms(20);    
	
    switch(GPIO_Pin)
    {

        case GPIO_PIN_3:
            if(KEY1==0) 	//����LED2��ת	
            {
                LED1_sta=!LED1_sta;
                LED2(LED1_sta);	
            };
            break;
        case GPIO_PIN_5:
            if(KEY2==0)  	//����LED2��ת	
            {
                LED1_sta=!LED1_sta;
                LED2(LED1_sta); 
            }
            break;


    }
}











/***************************************************************************************/

//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com	

/***************************************************************************************/

