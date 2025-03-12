#include "qspi.h"
#include "delay.h"
//////////////////////////////////////////////////////////////////////////////////	 
/************************************************************/

//QSPI��������	 
 
//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com		

/************************************************************/									  
////////////////////////////////////////////////////////////////////////////////// 	








/************************************************************/

///QSPI��ʼ�� 
 
//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com		

/************************************************************/	

QSPI_HandleTypeDef QSPI_Handler;    //QSPI���
    

u8 QSPI_Init(void)
{
    QSPI_Handler.Instance=QUADSPI;                          //QSPI
    QSPI_Handler.Init.ClockPrescaler=1;                     //QPSI��Ƶ�ȣ�W25Q64���Ƶ��Ϊ104M��
                                                            //���Դ˴�Ӧ��Ϊ2��QSPIƵ�ʾ�Ϊ200/(1+1)=100MHZ
    QSPI_Handler.Init.FifoThreshold=4;                      //FIFO��ֵΪ4���ֽ�
    QSPI_Handler.Init.SampleShifting=QSPI_SAMPLE_SHIFTING_HALFCYCLE;//������λ�������(DDRģʽ��,��������Ϊ0)
    QSPI_Handler.Init.FlashSize=POSITION_VAL(0X800000)-1;  //SPI FLASH��С��W25Q64��СΪ8M�ֽ�
    QSPI_Handler.Init.ChipSelectHighTime=QSPI_CS_HIGH_TIME_5_CYCLE;//Ƭѡ�ߵ�ƽʱ��Ϊ5��ʱ��(10*5=55ns),���ֲ������tSHSL����
    QSPI_Handler.Init.ClockMode=QSPI_CLOCK_MODE_0;          //ģʽ0
    QSPI_Handler.Init.FlashID=QSPI_FLASH_ID_1;              //��һƬflash
    QSPI_Handler.Init.DualFlash=QSPI_DUALFLASH_DISABLE;     //��ֹ˫����ģʽ
    if(HAL_QSPI_Init(&QSPI_Handler)==HAL_OK) return 0;      //QSPI��ʼ���ɹ�
    else return 1;
}



/**********************************************************************/

//QSPI�ײ�����,�������ã�ʱ��ʹ��
//�˺����ᱻHAL_QSPI_Init()����
//hqspi:QSPI���


//PB2,AF9     PB2-- QUADSPI_CLK
//PB6,AF10    PB6-- QSPI_BK1_NCS
	
//PD11,AF9  PD11-- QUADSPI_BK1_IO0
//PD12,AF9  PD12-- QUADSPI_BK1_IO1
//PD13,AF9  PD13-- QUADSPI_BK1_IO3

//PE2,AF9   PE2-- QUADSPI_BK1_IO2

//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com	
  
/**********************************************************************/


void HAL_QSPI_MspInit(QSPI_HandleTypeDef *hqspi)
{
    GPIO_InitTypeDef GPIO_Initure;
    
    __HAL_RCC_QSPI_CLK_ENABLE();        //ʹ��QSPIʱ��
    __HAL_RCC_GPIOB_CLK_ENABLE();       //ʹ��GPIOBʱ��
	  __HAL_RCC_GPIOD_CLK_ENABLE();       //ʹ��GPIODʱ��
    __HAL_RCC_GPIOE_CLK_ENABLE();       //ʹ��GPIOEʱ��
    
    //��ʼ��PB6 Ƭѡ�ź�
    GPIO_Initure.Pin=GPIO_PIN_6;
    GPIO_Initure.Mode=GPIO_MODE_AF_PP;             //����
    GPIO_Initure.Pull=GPIO_PULLUP;              
    GPIO_Initure.Speed=GPIO_SPEED_FREQ_VERY_HIGH;  //����
    GPIO_Initure.Alternate=GPIO_AF10_QUADSPI;      //����ΪQSPI
    HAL_GPIO_Init(GPIOB,&GPIO_Initure);
	
	    //��ʼ��PB2 ʱ���ź�
    GPIO_Initure.Pin=GPIO_PIN_2;
    GPIO_Initure.Mode=GPIO_MODE_AF_PP;             //����
    GPIO_Initure.Pull=GPIO_NOPULL;              
    GPIO_Initure.Speed=GPIO_SPEED_FREQ_VERY_HIGH;  //����
    GPIO_Initure.Alternate=GPIO_AF9_QUADSPI;      //����ΪQSPI
    HAL_GPIO_Init(GPIOB,&GPIO_Initure);
		
    
    //PD11-- QUADSPI_BK1_IO0   PD12-- QUADSPI_BK1_IO1  PD13-- QUADSPI_BK1_IO3
    GPIO_Initure.Pin=GPIO_PIN_11|GPIO_PIN_12|GPIO_PIN_13;
    GPIO_Initure.Mode=GPIO_MODE_AF_PP;             //����
    GPIO_Initure.Pull=GPIO_NOPULL;              
    GPIO_Initure.Speed=GPIO_SPEED_FREQ_VERY_HIGH;  //����
    GPIO_Initure.Alternate=GPIO_AF9_QUADSPI;      //����ΪQSPI
    HAL_GPIO_Init(GPIOD,&GPIO_Initure);
    
    //PE2-- QUADSPI_BK1_IO2
    GPIO_Initure.Pin=GPIO_PIN_2;
    GPIO_Initure.Mode=GPIO_MODE_AF_PP;             //����
    GPIO_Initure.Pull=GPIO_NOPULL;              
    GPIO_Initure.Speed=GPIO_SPEED_FREQ_VERY_HIGH;  //����
    GPIO_Initure.Alternate=GPIO_AF9_QUADSPI;      //����ΪQSPI
    HAL_GPIO_Init(GPIOE,&GPIO_Initure);
}



/************************************************************************************************************************************/

//QSPI��������
//instruction:Ҫ���͵�ָ��
//address:���͵���Ŀ�ĵ�ַ
//dummyCycles:��ָ��������

//	instructionMode:ָ��ģʽ;QSPI_INSTRUCTION_NONE,QSPI_INSTRUCTION_1_LINE,QSPI_INSTRUCTION_2_LINE,QSPI_INSTRUCTION_4_LINE  
//	addressMode:��ַģʽ; QSPI_ADDRESS_NONE,QSPI_ADDRESS_1_LINE,QSPI_ADDRESS_2_LINE,QSPI_ADDRESS_4_LINE
//	addressSize:��ַ����;QSPI_ADDRESS_8_BITS,QSPI_ADDRESS_16_BITS,QSPI_ADDRESS_24_BITS,QSPI_ADDRESS_32_BITS
//	dataMode:����ģʽ; QSPI_DATA_NONE,QSPI_DATA_1_LINE,QSPI_DATA_2_LINE,QSPI_DATA_4_LINE
 
//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com		

/************************************************************************************************************************************/


void QSPI_Send_CMD(u32 instruction,u32 address,u32 dummyCycles,u32 instructionMode,u32 addressMode,u32 addressSize,u32 dataMode)
{
    QSPI_CommandTypeDef Cmdhandler;
    
    Cmdhandler.Instruction=instruction;                 	//ָ��
    Cmdhandler.Address=address;                            	//��ַ
    Cmdhandler.DummyCycles=dummyCycles;                     //���ÿ�ָ��������
    Cmdhandler.InstructionMode=instructionMode;				//ָ��ģʽ
    Cmdhandler.AddressMode=addressMode;   					//��ַģʽ
    Cmdhandler.AddressSize=addressSize;   					//��ַ����
    Cmdhandler.DataMode=dataMode;             				//����ģʽ
    Cmdhandler.SIOOMode=QSPI_SIOO_INST_EVERY_CMD;       	//ÿ�ζ�����ָ��
    Cmdhandler.AlternateByteMode=QSPI_ALTERNATE_BYTES_NONE; //�޽����ֽ�
    Cmdhandler.DdrMode=QSPI_DDR_MODE_DISABLE;           	//�ر�DDRģʽ
    Cmdhandler.DdrHoldHalfCycle=QSPI_DDR_HHC_ANALOG_DELAY;

    HAL_QSPI_Command(&QSPI_Handler,&Cmdhandler,5000);
}




/************************************************************/

//QSPI����ָ�����ȵ�����
//buf:�������ݻ������׵�ַ
//datalen:Ҫ��������ݳ���
//����ֵ:0,����
//    ����,�������
 
//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com		

/************************************************************/	

u8 QSPI_Receive(u8* buf,u32 datalen)
{
    QSPI_Handler.Instance->DLR=datalen-1;                           //�������ݳ���
    if(HAL_QSPI_Receive(&QSPI_Handler,buf,5000)==HAL_OK) return 0;  //��������
    else return 1;
}



/************************************************************/

//QSPI����ָ�����ȵ�����
//buf:�������ݻ������׵�ַ
//datalen:Ҫ��������ݳ���
//����ֵ:0,����
//    ����,�������
 
//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com		

/************************************************************/	


u8 QSPI_Transmit(u8* buf,u32 datalen)
{
    QSPI_Handler.Instance->DLR=datalen-1;                            //�������ݳ���
    if(HAL_QSPI_Transmit(&QSPI_Handler,buf,5000)==HAL_OK) return 0;  //��������
    else return 1;
}
























/************************************************************/

 
//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com		

/************************************************************/	


