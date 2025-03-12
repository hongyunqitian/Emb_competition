#ifndef __QSPI_H
#define __QSPI_H
#include "sys.h"
//////////////////////////////////////////////////////////////////////////////////	 
/************************************************************/

//QSPI��������	  
 
//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com		

/************************************************************/									  
////////////////////////////////////////////////////////////////////////////////// 	
extern QSPI_HandleTypeDef QSPI_Handler;    //QSPI���

u8 QSPI_Init(void);												//��ʼ��QSPI
void QSPI_Send_CMD(u32 instruction,u32 address,u32 dummyCycles,u32 instructionMode,u32 addressMode,u32 addressSize,u32 dataMode);			//QSPI��������
u8 QSPI_Receive(u8* buf,u32 datalen);							//QSPI��������
u8 QSPI_Transmit(u8* buf,u32 datalen);							//QSPI��������
#endif





























/************************************************************/

//QSPI��������	  
 
//STM32H7����ģ��-HAL�⺯���汾
//DevEBox  ��Խ����
//�Ա����̣�mcudev.taobao.com
//�Ա����̣�shop389957290.taobao.com		

/************************************************************/	


