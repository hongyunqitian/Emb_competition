#include "mpu.h"
#include "led.h"
#include "delay.h"
//////////////////////////////////////////////////////////////////////////////////	 
  
/**************************************************************************/

//MPU��������	 
 
//STM32H7����ģ��-HAL�⺯���汾


 	

/**************************************************************************/						  
////////////////////////////////////////////////////////////////////////////////// 

//����ĳ�������MPU����
//baseaddr:MPU��������Ļ�ַ(�׵�ַ)
//size:MPU��������Ĵ�С(������32�ı���,��λΪ�ֽ�),�����õ�ֵ�ο�:CORTEX_MPU_Region_Size
//rnum:MPU���������,��Χ:0~7,���֧��8����������,�����õ�ֵ�ο���CORTEX_MPU_Region_Number
//ap:����Ȩ��,���ʹ�ϵ����:�����õ�ֵ�ο���CORTEX_MPU_Region_Permission_Attributes
//MPU_REGION_NO_ACCESS,�޷��ʣ���Ȩ&�û������ɷ��ʣ�
//MPU_REGION_PRIV_RW,��֧����Ȩ��д����
//MPU_REGION_PRIV_RW_URO,��ֹ�û�д���ʣ���Ȩ�ɶ�д���ʣ�
//MPU_REGION_FULL_ACCESS,ȫ���ʣ���Ȩ&�û����ɷ��ʣ�
//MPU_REGION_PRIV_RO,��֧����Ȩ������
//MPU_REGION_PRIV_RO_URO,ֻ������Ȩ&�û���������д��
//���:STM32F7����ֲ�.pdf,4.6��,Table 89.
//sen:�Ƿ�������;MPU_ACCESS_NOT_SHAREABLE,������;MPU_ACCESS_SHAREABLE,����
//cen:�Ƿ�����cache;MPU_ACCESS_NOT_CACHEABLE,������;MPU_ACCESS_CACHEABLE,����
//ben:�Ƿ�������;MPU_ACCESS_NOT_BUFFERABLE,������;MPU_ACCESS_BUFFERABLE,����
//����ֵ;0,�ɹ�.
//    ����,����.
u8 MPU_Set_Protection(u32 baseaddr,u32 size,u32 rnum,u8 ap,u8 sen,u8 cen,u8 ben)
{
	MPU_Region_InitTypeDef MPU_Initure;
	
	HAL_MPU_Disable();								        //����MPU֮ǰ�ȹر�MPU,��������Ժ���ʹ��MPU

	MPU_Initure.Enable=MPU_REGION_ENABLE;			        //ʹ�ܸñ������� 
	MPU_Initure.Number=rnum;			                    //���ñ�������
	MPU_Initure.BaseAddress=baseaddr;	                    //���û�ַ
	MPU_Initure.Size=size;				                    //���ñ��������С
	MPU_Initure.SubRegionDisable=0X00;                      //��ֹ������
	MPU_Initure.TypeExtField=MPU_TEX_LEVEL0;                //����������չ��Ϊlevel0
	MPU_Initure.AccessPermission=(u8)ap;		            //���÷���Ȩ��,
	MPU_Initure.DisableExec=MPU_INSTRUCTION_ACCESS_ENABLE;	//����ָ�����(�����ȡָ��)
	MPU_Initure.IsShareable=sen;                            //�Ƿ���?
    MPU_Initure.IsCacheable=cen;                            //�Ƿ�cache?     
	MPU_Initure.IsBufferable=ben;                           //�Ƿ񻺳�?
	HAL_MPU_ConfigRegion(&MPU_Initure);                     //����MPU
	HAL_MPU_Enable(MPU_PRIVILEGED_DEFAULT);			        //����MPU
    return 0;
}



/*************************************************************/

//������Ҫ�����Ĵ洢��
//����Բ��ִ洢�������MPU����,������ܵ��³��������쳣
//����MCU������ʾ,����ͷ�ɼ����ݳ���ȵ�����...
 
//STM32H7����ģ��-HAL�⺯���汾


 	

/*************************************************************/

void MPU_Memory_Protection(void)
{
	    //��������DTCM,��128K�ֽ�,��ֹ����,����cache,������
    MPU_Set_Protection( 0x20000000,                 //����ַ
                        MPU_REGION_SIZE_128KB,      //����--128K
                        MPU_REGION_NUMBER1,         //NUMER1
                        MPU_REGION_FULL_ACCESS,     //ȫ����
                        MPU_ACCESS_SHAREABLE,       //������
                        MPU_ACCESS_CACHEABLE,       //����cache
                        MPU_ACCESS_NOT_BUFFERABLE); //��ֹ����
	
    //��������AXI SRAM,��512K�ֽ�,��ֹ����,����cache,������
    MPU_Set_Protection( 0x24000000,                 //����ַ
                        MPU_REGION_SIZE_512KB,      //����--512K
                        MPU_REGION_NUMBER2,         //NUMER2
                        MPU_REGION_FULL_ACCESS,     //ȫ����
                        MPU_ACCESS_SHAREABLE,       //������
                        MPU_ACCESS_CACHEABLE,       //����cache
                        MPU_ACCESS_NOT_BUFFERABLE); //��ֹ����
    
	
	
	    //��������SRAM1~SRAM3,��288K�ֽ�,��ֹ����,����cache,������
    MPU_Set_Protection( 0x30000000,                 //����ַ
                        MPU_REGION_SIZE_512KB,      //����
                        MPU_REGION_NUMBER3,         //NUMER3
                        MPU_REGION_FULL_ACCESS,     //ȫ����
                        MPU_ACCESS_SHAREABLE,       //������
                        MPU_ACCESS_CACHEABLE,       //����cache
                        MPU_ACCESS_NOT_BUFFERABLE); //��ֹ����
		
   //��������SRAM4,��64K�ֽ�,��ֹ����,����cache,������
    MPU_Set_Protection( 0x38000000,                 //����ַ
                        MPU_REGION_SIZE_64KB,       //����--64K 
                        MPU_REGION_NUMBER4,         //NUMER4
                        MPU_REGION_FULL_ACCESS,     //ȫ����
                        MPU_ACCESS_SHAREABLE,       //������
                        MPU_ACCESS_CACHEABLE,       //����cache
                        MPU_ACCESS_NOT_BUFFERABLE); //��ֹ����		
}




/*************************************************************/

// MPU(�ڴ汣��)ʵ��-HAL�⺯����
 
//STM32H7����ģ��-HAL�⺯���汾


 	

/*************************************************************/

//MemManage�������ж�
//������ж��Ժ�,���޷��ָ���������!!
void MemManage_Handler(void)
{ 
	LED2(0);							//����D2
	printf("Mem Access Error!!\r\n"); 	//���������Ϣ
	delay_ms(1000);	
	printf("Soft Reseting...\r\n");		//��ʾ�������
	delay_ms(1000);	
	NVIC_SystemReset();					//��λ
}































/*************************************************************/

// MPU(�ڴ汣��)ʵ��-HAL�⺯����
 
//STM32H7����ģ��-HAL�⺯���汾


 	

/*************************************************************/
