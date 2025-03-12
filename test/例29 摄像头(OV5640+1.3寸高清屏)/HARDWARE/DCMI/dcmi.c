#include "sys.h"
#include "dcmi.h" 
#include "lcd.h" 


#include "led.h" 
#include "ov5640.h" 
//////////////////////////////////////////////////////////////////////////////////	 

/************************************************************************************************/

//DCMI��������	   

//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/							  
////////////////////////////////////////////////////////////////////////////////// 	

DCMI_HandleTypeDef  DCMI_Handler;           //DCMI���
DMA_HandleTypeDef   DMADMCI_Handler;        //DMA���

u8 ov_frame=0;  						//֡��

extern void jpeg_data_process(void);	//JPEG���ݴ�����




/************************************************************************************************/

//DCMI��������	   

//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/		


//DCMI��ʼ��
void DCMI_Init(void)
{
    DCMI_Handler.Instance=DCMI;
    DCMI_Handler.Init.SynchroMode=DCMI_SYNCHRO_HARDWARE;    //Ӳ��ͬ��HSYNC,VSYNC
    DCMI_Handler.Init.PCKPolarity=DCMI_PCKPOLARITY_RISING;  //PCLK ��������Ч
    DCMI_Handler.Init.VSPolarity=DCMI_VSPOLARITY_LOW;       //VSYNC �͵�ƽ��Ч
    DCMI_Handler.Init.HSPolarity=DCMI_HSPOLARITY_LOW;       //HSYNC �͵�ƽ��Ч
    DCMI_Handler.Init.CaptureRate=DCMI_CR_ALL_FRAME;        //ȫ֡����
    DCMI_Handler.Init.ExtendedDataMode=DCMI_EXTEND_DATA_8B; //8λ���ݸ�ʽ 
    HAL_DCMI_Init(&DCMI_Handler);                           //��ʼ��DCMI���˺����Ὺ��֡�ж�  

    //�ر����жϡ�VSYNC�жϡ�ͬ�������жϺ�����ж�
    //__HAL_DCMI_DISABLE_IT(&DCMI_Handler,DCMI_IT_LINE|DCMI_IT_VSYNC|DCMI_IT_ERR|DCMI_IT_OVR);
	
	//�ر������жϣ�����HAL_DCMI_Init()��Ĭ�ϴ򿪺ܶ��жϣ�������Щ�ж�
	//�Ժ����Ǿ���Ҫ����Щ�ж�����Ӧ�Ĵ�������Ļ��ͻᵼ�¸��ָ��������⣬
	//������Щ�жϺܶ඼����Ҫ���������ｫ��ȫ���رյ���Ҳ���ǽ�IER�Ĵ������㡣
	//�ر��������ж��Ժ��ٸ����Լ���ʵ��������ʹ����Ӧ���жϡ�
	DCMI->IER=0x0;	
	
    __HAL_DCMI_ENABLE_IT(&DCMI_Handler,DCMI_IT_FRAME);      //ʹ��֡�ж�
    __HAL_DCMI_ENABLE(&DCMI_Handler);                       //ʹ��DCMI
}



/************************************************************************************************/

//DCMI�ײ��������������ã�ʱ��ʹ�ܣ��ж�����
//�˺����ᱻHAL_DCMI_Init()����
//hdcmi:DCMI���   

//STM32H7����ģ��-HAL�⺯���汾


 


//DCMI�ӿ����Ŷ�Ӧ��ϵ

////	GPIO_AF_Set(GPIOA,4,13);	//PA4,AF13  DCMI_HSYNC
////	GPIO_AF_Set(GPIOA,6,13);	//PA6,AF13  DCMI_PCLK  
////	
////	GPIO_AF_Set(GPIOB,7,13);	//PB7,AF13  DCMI_VSYNC  
////	
//// 	GPIO_AF_Set(GPIOC,6,13);	//PC6,AF13  DCMI_D0
//// 	GPIO_AF_Set(GPIOC,7,13);	//PC7,AF13  DCMI_D1
////	
//// 	GPIO_AF_Set(GPIOE,0,13);	//PE0,AF13  DCMI_D2
//// 	GPIO_AF_Set(GPIOE,1,13);	//PE1,AF13  DCMI_D3
////	
//// 	GPIO_AF_Set(GPIOE,4,13);	//PE4,AF13  DCMI_D4 
////	
////	GPIO_AF_Set(GPIOD,3,13);	//PD3,AF13  DCMI_D5
////	
////	GPIO_AF_Set(GPIOE,5,13);	//PE5,AF13  DCMI_D6
////	GPIO_AF_Set(GPIOE,6,13);	//PE6,AF13  DCMI_D7


/************************************************************************************************/		

void HAL_DCMI_MspInit(DCMI_HandleTypeDef* hdcmi)
{
    GPIO_InitTypeDef GPIO_Initure;
    
    __HAL_RCC_DCMI_CLK_ENABLE();                //ʹ��DCMIʱ��

    __HAL_RCC_GPIOA_CLK_ENABLE();               //ʹ��GPIOAʱ��
    __HAL_RCC_GPIOB_CLK_ENABLE();               //ʹ��GPIOBʱ��
    __HAL_RCC_GPIOC_CLK_ENABLE();               //ʹ��GPIOCʱ��
    __HAL_RCC_GPIOD_CLK_ENABLE();               //ʹ��GPIODʱ��
    __HAL_RCC_GPIOE_CLK_ENABLE();               //ʹ��GPIOEʱ��
    
    //��ʼ��  //PA4,AF13  DCMI_HSYNC  //PA6,AF13  DCMI_PCLK 
    GPIO_Initure.Pin=GPIO_PIN_4|GPIO_PIN_6;  
    GPIO_Initure.Mode=GPIO_MODE_AF_PP;                  //���츴��
    GPIO_Initure.Pull=GPIO_PULLUP;                      //����
    GPIO_Initure.Speed=GPIO_SPEED_FREQ_VERY_HIGH;       //����
    GPIO_Initure.Alternate=GPIO_AF13_DCMI;              //����ΪDCMI   
    HAL_GPIO_Init(GPIOA,&GPIO_Initure);         //��ʼ��
    
    //��ʼ��  //PB7,AF13  DCMI_VSYNC  
    GPIO_Initure.Pin=GPIO_PIN_7;  
    HAL_GPIO_Init(GPIOB,&GPIO_Initure);         //��ʼ��
    
     //��ʼ�� //PC6,AF13  DCMI_D0  //PC7,AF13  DCMI_D1
    GPIO_Initure.Pin=GPIO_PIN_6|GPIO_PIN_7;  
    HAL_GPIO_Init(GPIOC,&GPIO_Initure);         //��ʼ��
    
    //��ʼ�� //PD3,AF13  DCMI_D5
    GPIO_Initure.Pin=GPIO_PIN_3; 
    HAL_GPIO_Init(GPIOD,&GPIO_Initure);         //��ʼ��
		
		//��ʼ�� //PE0,AF13  DCMI_D2 //PE1,AF13  DCMI_D3 //PE4,AF13  DCMI_D4  //PE5,AF13  DCMI_D6  //PE6,AF13  DCMI_D7
		
    GPIO_Initure.Pin=GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_4 | GPIO_PIN_5 | GPIO_PIN_6 ; 
    HAL_GPIO_Init(GPIOE,&GPIO_Initure);         //��ʼ��
    
    HAL_NVIC_SetPriority(DCMI_IRQn,2,3);        //��ռ���ȼ�1�������ȼ�2
		
    HAL_NVIC_EnableIRQ(DCMI_IRQn);              //ʹ��DCMI�ж�
}




/************************************************************************************************/

//DCMI DMA����
//mem0addr:�洢����ַ0  ��Ҫ�洢����ͷ���ݵ��ڴ��ַ(Ҳ�����������ַ)
//mem1addr:�洢����ַ1  ��ֻʹ��mem0addr��ʱ��,��ֵ����Ϊ0
//memblen:�洢��λ��,����Ϊ:DMA_MDATAALIGN_BYTE/DMA_MDATAALIGN_HALFWORD/DMA_MDATAALIGN_WORD
//meminc:�洢��������ʽ,����Ϊ:DMA_MINC_ENABLE/DMA_MINC_DISABLE  

//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/		

void DCMI_DMA_Init(u32 mem0addr,u32 mem1addr,u32 memsize,u32 memblen,u32 meminc)
{ 
   

  	__HAL_RCC_DMA1_CLK_ENABLE();                                    //ʹ��DMA1ʱ��
    __HAL_LINKDMA(&DCMI_Handler,DMA_Handle,DMADMCI_Handler);        //��DMA��DCMI��ϵ����
	  __HAL_DMA_DISABLE_IT(&DMADMCI_Handler,DMA_IT_TC);    		        //�ȹر�DMA��������ж�(������ʹ��MCU����ʱ�����ֻ��������)
	
    DMADMCI_Handler.Instance=DMA1_Stream1;                          //DMA1������1    
	  DMADMCI_Handler.Init.Request=DMA_REQUEST_DCMI;					        //DCMI��DMA����
    DMADMCI_Handler.Init.Direction=DMA_PERIPH_TO_MEMORY;            //���赽�洢��
    DMADMCI_Handler.Init.PeriphInc=DMA_PINC_DISABLE;                //���������ģʽ
    DMADMCI_Handler.Init.MemInc=meminc;                   			    //�洢������ģʽ
    DMADMCI_Handler.Init.PeriphDataAlignment=DMA_PDATAALIGN_WORD;   //�������ݳ���:32λ
    DMADMCI_Handler.Init.MemDataAlignment=memblen;     				      //�洢�����ݳ���:8/16/32λ
    DMADMCI_Handler.Init.Mode=DMA_CIRCULAR;                         //ʹ��ѭ��ģʽ 
    DMADMCI_Handler.Init.Priority=DMA_PRIORITY_HIGH;                //�����ȼ�
    DMADMCI_Handler.Init.FIFOMode=DMA_FIFOMODE_ENABLE;              //ʹ��FIFO
    DMADMCI_Handler.Init.FIFOThreshold=DMA_FIFO_THRESHOLD_HALFFULL; //ʹ��1/2��FIFO 
    DMADMCI_Handler.Init.MemBurst=DMA_MBURST_SINGLE;                //�洢��ͻ������
    DMADMCI_Handler.Init.PeriphBurst=DMA_PBURST_SINGLE;             //����ͻ�����δ��� 
    HAL_DMA_DeInit(&DMADMCI_Handler);                               //�������ǰ������
    HAL_DMA_Init(&DMADMCI_Handler);	                                //��ʼ��DMA
    
    //�ڿ���DMA֮ǰ��ʹ��__HAL_UNLOCK()����һ��DMA,��ΪHAL_DMA_Statrt()HAL_DMAEx_MultiBufferStart()
    //����������һ��ʼҪ��ʹ��__HAL_LOCK()����DMA,������__HAL_LOCK()���жϵ�ǰ��DMA״̬�Ƿ�Ϊ����״̬�������
    //����״̬�Ļ���ֱ�ӷ���HAL_BUSY�������ᵼ�º���HAL_DMA_Statrt()��HAL_DMAEx_MultiBufferStart()������DMA����
    //����ֱ�ӱ�������DMAҲ�Ͳ�������������Ϊ�˱���������������������DMA֮ǰ�ȵ���__HAL_UNLOC()�Ƚ���һ��DMA��
		
    __HAL_UNLOCK(&DMADMCI_Handler);
		
		
    if(mem1addr==0)    //����DMA����ʹ��˫����
    {
        HAL_DMA_Start(&DMADMCI_Handler,(u32)&DCMI->DR,mem0addr,memsize);
    }
    else                //ʹ��˫����
    {
			
        HAL_DMAEx_MultiBufferStart(&DMADMCI_Handler,(u32)&DCMI->DR,mem0addr,mem1addr,memsize);//����˫����
			
        __HAL_DMA_ENABLE_IT(&DMADMCI_Handler,DMA_IT_TC);    //������������ж�
			
        HAL_NVIC_SetPriority(DMA1_Stream1_IRQn,2,2);        //DMA�ж����ȼ�
			
        HAL_NVIC_EnableIRQ(DMA1_Stream1_IRQn);              //ʹ��DMA1�ж�
    }   

		
}





/************************************************************************************************/

//DCMI,��������

//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/		


void DCMI_Start(void)
{   
//    LCD_SetCursor(0,0);              //������Ļ��ʾ���
//	  LCD_WriteRAM_Prepare();		        //��ʼд��GRAM
	
    __HAL_DMA_ENABLE(&DMADMCI_Handler); //ʹ��DMA
	
    DCMI->CR|=DCMI_CR_CAPTURE;          //DCMI����ʹ��
	
//		DCMI->CR|=2<<8; 			    //DCMI����ʹ��  : ����֡�����ٶȣ�ÿ��֡����һ��
//	
//	  DCMI->CR|=1<<0; 			    //DCMI����ʹ��  
	
}



/************************************************************************************************/

//DCMI,�رմ���  

//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/		

void DCMI_Stop(void)
{ 
    DCMI->CR&=~(DCMI_CR_CAPTURE);       //�رղ���
    while(DCMI->CR&0X01);               //�ȴ��������
    __HAL_DMA_DISABLE(&DMADMCI_Handler);//�ر�DMA
} 



/************************************************************************************************/

//DCMI�жϷ�����  

//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/		

void DCMI_IRQHandler(void)
{
    HAL_DCMI_IRQHandler(&DCMI_Handler);
}



/************************************************************************************************/

//����һ֡ͼ������
//hdcmi:DCMI���  

//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/		

void HAL_DCMI_FrameEventCallback(DCMI_HandleTypeDef *hdcmi)
{
	jpeg_data_process();//jpeg���ݴ���
	
	LED2_Toggle;
	
	ov_frame++; 
	
    //����ʹ��֡�ж�,��ΪHAL_DCMI_IRQHandler()������ر�֡�ж�
	
  __HAL_DCMI_ENABLE_IT(&DCMI_Handler,DCMI_IT_FRAME);
	
	
}



/************************************************************************************************/

//DCMI DMA���ջص�����  

//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/		

void (*dcmi_rx_callback)(void);//DCMI DMA���ջص�����




/************************************************************************************************/

//DMA1������1�жϷ�����   

//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/

void DMA1_Stream1_IRQHandler(void)
{
    if(__HAL_DMA_GET_FLAG(&DMADMCI_Handler,DMA_FLAG_TCIF1_5)!=RESET)//DMA�������
    {
			
        __HAL_DMA_CLEAR_FLAG(&DMADMCI_Handler,DMA_FLAG_TCIF1_5);//���DMA��������жϱ�־λ
			
        dcmi_rx_callback();	                                    //ִ������ͷ���ջص�����,��ȡ���ݵȲ����������洦��
    } 
}


//////������������,��usmart����,���ڵ��Դ���


/////************************************************************************************************/



//////DCMI������ʾ����
//////sx,sy;LCD����ʼ����
//////width,height:LCD��ʾ��Χ. 

//////STM32H7����ģ��-HAL�⺯���汾
////
////
//// 


/////************************************************************************************************/
////////////////////////////////////////////////////////////////////////////////////

////void DCMI_Set_Window(u16 sx,u16 sy,u16 width,u16 height)
////{
////	DCMI_Stop(); 
////	LCD_Clear(WHITE);
////	LCD_Set_Window(sx,sy,width,height);
////	OV5640_OutSize_Set(0,0,width,height);
////    LCD_SetCursor(0,0);  
////	LCD_WriteRAM_Prepare();		        //��ʼд��GRAM  
////    __HAL_DMA_ENABLE(&DMADMCI_Handler); //����DMA1,Stream1  
////    DCMI->CR|=DCMI_CR_CAPTURE;          //DCMI����ʹ��	
////}
////  


/////************************************************************************************************/

//////ͨ��usmart����,����������.
//////pclk/hsync/vsync:�����źŵ����޵�ƽ����

//////STM32H7����ģ��-HAL�⺯���汾
////
////
//// 


/////************************************************************************************************/

////void DCMI_CR_Set(u8 pclk,u8 hsync,u8 vsync)
////{
////    HAL_DCMI_DeInit(&DCMI_Handler);//���ԭ��������
////    DCMI_Handler.Instance=DCMI;
////    DCMI_Handler.Init.SynchroMode=DCMI_SYNCHRO_HARDWARE;//Ӳ��ͬ��HSYNC,VSYNC
////    DCMI_Handler.Init.PCKPolarity=pclk<<5;              //PCLK ��������Ч
////    DCMI_Handler.Init.VSPolarity=vsync<<7;              //VSYNC �͵�ƽ��Ч
////    DCMI_Handler.Init.HSPolarity=hsync<<6;              //HSYNC �͵�ƽ��Ч
////    DCMI_Handler.Init.CaptureRate=DCMI_CR_ALL_FRAME;    //ȫ֡����
////    DCMI_Handler.Init.ExtendedDataMode=DCMI_EXTEND_DATA_8B;//8λ���ݸ�ʽ 
////    HAL_DCMI_Init(&DCMI_Handler);                       //��ʼ��DCMI
////    DCMI_Handler.Instance->CR|=DCMI_MODE_CONTINUOUS;    //����ģʽ
////}







































/************************************************************************************************/

//DCMI��������	   

//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/

