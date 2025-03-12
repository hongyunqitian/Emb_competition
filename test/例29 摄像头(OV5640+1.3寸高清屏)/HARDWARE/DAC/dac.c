#include "dac.h"
//////////////////////////////////////////////////////////////////////////////////	 
/**********************************************************************/

//DAC��������	 

//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com	
/*********************************************************************/								  
////////////////////////////////////////////////////////////////////////////////// 	

DAC_HandleTypeDef DAC1_Handler;			//DAC���
DAC_ChannelConfTypeDef DACCH1_Config;	//DAC1ͨ��1
	
	

/**********************************************************************/


//��ʼ��DAC

//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com	
/*********************************************************************/	

void DAC1_Init(void)
{
    DAC1_Handler.Instance=DAC1;
    HAL_DAC_Init(&DAC1_Handler);               	//��ʼ��DAC
    
    DACCH1_Config.DAC_Trigger=DAC_TRIGGER_NONE;             //��ʹ�ô�������
    DACCH1_Config.DAC_OutputBuffer=DAC_OUTPUTBUFFER_DISABLE;//DAC1�������ر�
    HAL_DAC_ConfigChannel(&DAC1_Handler,&DACCH1_Config,DAC_CHANNEL_2);//DACͨ��2����
    
    HAL_DAC_Start(&DAC1_Handler,DAC_CHANNEL_2);  //����DACͨ��1
}


/**********************************************************************/

//DAC�ײ�������ʱ�����ã����� ����
//�˺����ᱻHAL_DAC_Init()����
//hdac:DAC��� 

//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com	
/*********************************************************************/	

void HAL_DAC_MspInit(DAC_HandleTypeDef* hdac)
{      
    GPIO_InitTypeDef GPIO_Initure;
	
    __HAL_RCC_DAC12_CLK_ENABLE();           //ʹ��DACʱ��
    __HAL_RCC_GPIOA_CLK_ENABLE();			      //����GPIOAʱ��
	
    GPIO_Initure.Pin=GPIO_PIN_5;            //PA5
    GPIO_Initure.Mode=GPIO_MODE_ANALOG;     //ģ��
    GPIO_Initure.Pull=GPIO_NOPULL;          //����������
    HAL_GPIO_Init(GPIOA,&GPIO_Initure);
}



/**********************************************************************/

//����ͨ��1�����ѹ
//vol:0~3300,����0~3.3V

//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com	
/*********************************************************************/	

void DAC1_Set_Vol(u16 vol)
{
	double temp=vol;
	temp/=1000;
	temp=temp*4096/3.3;
	
	HAL_DAC_SetValue(&DAC1_Handler,DAC_CHANNEL_2,DAC_ALIGN_12B_R,temp);//12λ�Ҷ������ݸ�ʽ����DACֵ
}




































/**********************************************************************/

//DAC��������	 

//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com	
/*********************************************************************/	

