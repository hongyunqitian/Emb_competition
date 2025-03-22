#include "as608.h"

#include "stm32f4xx_conf.h"



////////////////////////////////////////////////////////////////////////////////////

extern uint16_t USART3_RX_STA;

//ͨ�ö�ʱ���жϳ�ʼ��
//����ʼ��ѡ��ΪAPB1��2������APB1Ϊ36M
//arr���Զ���װֵ��
//psc��ʱ��Ԥ��Ƶ��		 
void TIM7_Int_Init(uint16_t arr,uint16_t psc)
{	
	NVIC_InitTypeDef NVIC_InitStructure;
	TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;

	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM7, ENABLE);//TIM7ʱ��ʹ��    
	
	//��ʱ��TIM7��ʼ��
	TIM_TimeBaseStructure.TIM_Period = arr; //��������һ�������¼�װ�����Զ���װ�ؼĴ������ڵ�ֵ	
	TIM_TimeBaseStructure.TIM_Prescaler = psc; //����������ΪTIMxʱ��Ƶ�ʳ�����Ԥ��Ƶֵ
	TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1; //����ʱ�ӷָ�:TDTS = Tck_tim
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;  //TIM���ϼ���ģʽ
	TIM_TimeBaseInit(TIM7 ,&TIM_TimeBaseStructure); //����ָ���Ĳ�����ʼ��TIMx��ʱ�������λ
 
	TIM_ITConfig(TIM7 ,TIM_IT_Update,ENABLE ); //ʹ��ָ����TIM7�ж�,��������ж�
   
	TIM_Cmd(TIM7 ,ENABLE);//ʹ�ܶ�ʱ��7
	
	NVIC_InitStructure.NVIC_IRQChannel = TIM7_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority= 0;//��ռ���ȼ�0
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;		//�����ȼ�1
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;			//IRQͨ��ʹ��
	NVIC_Init(&NVIC_InitStructure);	//����ָ���Ĳ�����ʼ��VIC�Ĵ���
	
}

//��ʱ��7�жϷ������		    
void TIM7_IRQHandler(void)
{ 	
	if (TIM_GetITStatus(TIM7 ,TIM_IT_Update) != RESET)//�Ǹ����ж�
	{	 			   
		USART3_RX_STA |= 1<<15;	//��ǽ������
		TIM_ClearITPendingBit(TIM7 ,TIM_IT_Update);  //���TIM7�����жϱ�־    
		TIM_Cmd(TIM7 ,DISABLE);  //�ر�TIM7 
	}	    
}

////////////////////////////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////////////////////////////

//���ڽ��ջ����� 	
uint8_t USART3_RX_BUF[USART3_MAX_RECV_LEN]; 	//���ջ���,���USART3_MAX_RECV_LEN���ֽ�.
uint8_t  USART3_TX_BUF[USART3_MAX_SEND_LEN]; //���ͻ���,���USART3_MAX_SEND_LEN�ֽ�


//ͨ���жϽ�������2���ַ�֮���ʱ������10ms�������ǲ���һ������������.
//���2���ַ����ռ������10ms,����Ϊ����1����������.Ҳ���ǳ���10msû�н��յ�
//�κ�����,���ʾ�˴ν������.
//���յ�������״̬
//[15]:0,û�н��յ�����;1,���յ���һ������.
//[14:0]:���յ������ݳ���
uint16_t USART3_RX_STA=0;  

void USART3_Init(uint32_t bound)
{

  	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;
	NVIC_InitTypeDef NVIC_InitStructure;
	 
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB,ENABLE); //ʹ��GPIOBʱ��
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3,ENABLE);//ʹ��USART3ʱ��	
	
	//����3��Ӧ���Ÿ���ӳ��
	GPIO_PinAFConfig(GPIOB,GPIO_PinSource10,GPIO_AF_USART3); 
	GPIO_PinAFConfig(GPIOB,GPIO_PinSource11,GPIO_AF_USART3); 
	
  	//USART3�˿�����
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10|GPIO_Pin_11 ; 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;//���ù���
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;	//�ٶ�50MHz
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP; //���츴�����
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP; //����
	GPIO_Init(GPIOB,&GPIO_InitStructure); 
  
	//Usart3 NVIC ����
  	NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority=2 ;//��ռ���ȼ�0
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 3;		//�����ȼ�0
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;			//IRQͨ��ʹ��
	NVIC_Init(&NVIC_InitStructure);	//����ָ���Ĳ�����ʼ��VIC�Ĵ���

   	//USART3 ��ʼ������
	USART_InitStructure.USART_BaudRate = bound;//���ڲ�����
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;//�ֳ�Ϊ8λ���ݸ�ʽ
	USART_InitStructure.USART_StopBits = USART_StopBits_1;//һ��ֹͣλ
	USART_InitStructure.USART_Parity = USART_Parity_No;//����żУ��λ
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;//��Ӳ������������
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;	//�շ�ģʽ
  	USART_Init(USART3, &USART_InitStructure); //��ʼ������3

  	USART_ITConfig(USART3, USART_IT_RXNE, ENABLE);//�������ڽ����ж�
  	
	USART_Cmd(USART3, ENABLE);                    //ʹ�ܴ���3 	
	
	TIM7_Int_Init(100-1,8400-1);	//10ms�ж�һ��
	USART3_RX_STA=0;		//����
	
	
//	TIM_Cmd(TIM7,DISABLE);			//�رն�ʱ��7
}

void USART3_IRQHandler( void )
{	
	uint8_t res;	      
	if(USART_GetITStatus(USART3, USART_IT_RXNE) != RESET)//���յ�����
	{	 
		res =USART_ReceiveData(USART3);		 
		if((USART3_RX_STA&(1<<15))==0)//�������һ������,��û�б�����,���ٽ�����������
		{ 
			if(USART3_RX_STA<USART3_MAX_RECV_LEN)	//�����Խ�������
			{
				TIM_SetCounter(TIM7,0);//���������          				//���������
				if(USART3_RX_STA==0) 				//ʹ�ܶ�ʱ��7���ж� 
				{
					TIM_Cmd(TIM7,ENABLE);//ʹ�ܶ�ʱ��7
				}
				USART3_RX_BUF[USART3_RX_STA++]=res;	//��¼���յ���ֵ	 
			}
			else 
			{
				USART3_RX_STA|=1<<15;				//ǿ�Ʊ�ǽ������
			} 
		}
	}  			
}


//����3,printf ����
//ȷ��һ�η������ݲ�����USART3_MAX_SEND_LEN�ֽ�
void usart3_printf(char* fmt,...)  
{  
	uint16_t i,j; 
	va_list ap; 
	va_start(ap,fmt);
	vsprintf((char*)USART3_TX_BUF,fmt,ap);
	va_end(ap);
	i=strlen((const char*)USART3_TX_BUF);		//�˴η������ݵĳ���
	for(j=0;j<i;j++)							//ѭ����������
	{
		while(USART_GetFlagStatus(USART3,USART_FLAG_TC)==RESET); //ѭ������,ֱ���������   
		USART_SendData(USART3,USART3_TX_BUF[j]); 
	} 
}

////////////////////////////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////////////////////////////

uint32_t AS608Addr = 0XFFFFFFFF; //Ĭ��

//���ڷ���һ���ֽ�
static void MYUSART_SendData(uint8_t data)
{
	while((USART3->SR&0X40)==0); 
	USART3->DR = data;
}

//���Ͱ�ͷ
static void SendHead(void)
{
	MYUSART_SendData(0xEF);
	MYUSART_SendData(0x01);
}
//���͵�ַ
static void SendAddr(void)
{
	MYUSART_SendData(AS608Addr>>24);
	MYUSART_SendData(AS608Addr>>16);
	MYUSART_SendData(AS608Addr>>8);
	MYUSART_SendData(AS608Addr);
}
//���Ͱ���ʶ,
static void SendFlag(uint8_t flag)
{
	MYUSART_SendData(flag);
}
//���Ͱ�����
static void SendLength(int length)
{
	MYUSART_SendData(length>>8);
	MYUSART_SendData(length);
}
//����ָ����
static void Sendcmd(uint8_t cmd)
{
	MYUSART_SendData(cmd);
}
//����У���
static void SendCheck(uint16_t check)
{
	MYUSART_SendData(check>>8);
	MYUSART_SendData(check);
}

//��AS608���� PS_HandShake
//����: PS_Addr��ַָ��
//˵��: ģ�鷵�µ�ַ����ȷ��ַ��	
uint8_t PS_HandShake(uint32_t *PS_Addr)
{
	SendHead();
	SendAddr();
	MYUSART_SendData(0X01);
	MYUSART_SendData(0X00);
	MYUSART_SendData(0X00);	
	Delay_ms(200);
	if(USART3_RX_STA&0X8000)//���յ�����
	{		
		//�ж��ǲ���ģ�鷵�ص�Ӧ���
		if(USART3_RX_BUF[0]==0XEF&&USART3_RX_BUF[1]==0X01&&USART3_RX_BUF[6]==0X07)
		{
			*PS_Addr=(USART3_RX_BUF[2]<<24) + (USART3_RX_BUF[3]<<16)
							+(USART3_RX_BUF[4]<<8) + (USART3_RX_BUF[5]);
			USART3_RX_STA=0;
			return 0;
		}
		USART3_RX_STA=0;					
	}
	return 1;		
}

//�ж��жϽ��յ�������û��Ӧ���
//waittimeΪ�ȴ��жϽ������ݵ�ʱ�䣨��λ1ms��
//����ֵ�����ݰ��׵�ַ
static uint8_t *JudgeStr(uint16_t waittime)
{
	char *data;
	uint8_t str[8];
	str[0]=0xef;str[1]=0x01;str[2]=AS608Addr>>24;
	str[3]=AS608Addr>>16;str[4]=AS608Addr>>8;
	str[5]=AS608Addr;str[6]=0x07;str[7]='\0';
	USART3_RX_STA=0;
	while(--waittime)
	{
		Delay_ms(1);
		if(USART3_RX_STA&0X8000)//���յ�һ������
		{
			USART3_RX_STA=0;
			data=strstr((const char*)USART3_RX_BUF,(const char*)str);
			if(data)
				return (uint8_t*)data;	
		}
	}
	return 0;
}

//����Чģ����� PS_ValidTempleteNum
//���ܣ�����Чģ�����
//����: ��
//˵��: ģ�鷵��ȷ����+��Чģ�����ValidN
uint8_t PS_ValidTempleteNum(uint16_t *ValidN)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//�������ʶ
	SendLength(0x03);
	Sendcmd(0x1d);
	temp = 0x01+0x03+0x1d;
	SendCheck(temp);
	data=JudgeStr(2000);
	if(data)
	{
		ensure=data[9];
		*ValidN = (data[10]<<8) +data[11];
	}		
	else
		ensure=0xff;
	
	if(ensure==0x00)
	{
		printf("\r\n��Чָ�Ƹ���=%d",(data[10]<<8)+data[11]);
	}
	else
		printf("\r\n%s",EnsureMessage(ensure));
	return ensure;
}

//ģ��Ӧ���ȷ������Ϣ����
//���ܣ�����ȷ���������Ϣ������Ϣ
//����: ensure
const char *EnsureMessage(uint8_t ensure) 
{
	const char *p;
	switch(ensure)
	{
		case  0x00:
			p="OK";break;		
		case  0x01:
			p="���ݰ����մ���";break;
		case  0x02:
			p="��������û����ָ";break;
		case  0x03:
			p="¼��ָ��ͼ��ʧ��";break;
		case  0x04:
			p="ָ��ͼ��̫�ɡ�̫��������������";break;
		case  0x05:
			p="ָ��ͼ��̫ʪ��̫��������������";break;
		case  0x06:
			p="ָ��ͼ��̫�Ҷ�����������";break;
		case  0x07:
			p="ָ��ͼ����������������̫�٣������̫С��������������";break;
		case  0x08:
			p="ָ�Ʋ�ƥ��";break;
		case  0x09:
			p="û������ָ��";break;
		case  0x0a:
			p="�����ϲ�ʧ��";break;
		case  0x0b:
			p="����ָ�ƿ�ʱ��ַ��ų���ָ�ƿⷶΧ";
		case  0x10:
			p="ɾ��ģ��ʧ��";break;
		case  0x11:
			p="���ָ�ƿ�ʧ��";break;	
		case  0x15:
			p="��������û����Чԭʼͼ��������ͼ��";break;
		case  0x18:
			p="��д FLASH ����";break;
		case  0x19:
			p="δ�������";break;
		case  0x1a:
			p="��Ч�Ĵ�����";break;
		case  0x1b:
			p="�Ĵ����趨���ݴ���";break;
		case  0x1c:
			p="���±�ҳ��ָ������";break;
		case  0x1f:
			p="ָ�ƿ���";break;
		case  0x20:
			p="��ַ����";break;
		default :
			p="ģ�鷵��ȷ��������";break;
	}
 return p;	
}

//��ϵͳ�������� PS_ReadSysPara
//����:  ��ȡģ��Ļ��������������ʣ�����С��)
//����:  ��
//˵��:  ģ�鷵��ȷ���� + ����������16bytes��
uint8_t PS_ReadSysPara(SysPara *p)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//�������ʶ
	SendLength(0x03);
	Sendcmd(0x0F);
	temp = 0x01+0x03+0x0F;
	SendCheck(temp);
	data=JudgeStr(1000);
	if(data)
	{
		ensure = data[9];
		p->PS_max = (data[14]<<8)+data[15];
		p->PS_level = data[17];
		p->PS_addr=(data[18]<<24)+(data[19]<<16)+(data[20]<<8)+data[21];
		p->PS_size = data[23];
		p->PS_N = data[25];
	}		
	else
		ensure=0xff;
	if(ensure==0x00)
	{
		printf("\r\nģ�����ָ������=%d",p->PS_max);
		printf("\r\n�Աȵȼ�=%d",p->PS_level);
		printf("\r\n��ַ=%x",p->PS_addr);
		printf("\r\n������=%d",p->PS_N*9600);
	}
	else 
			printf("\r\n%s",EnsureMessage(ensure));
	return ensure;
}

//¼��ͼ�� PS_GetImage
//����:̽����ָ��̽�⵽��¼��ָ��ͼ�����ImageBuffer�� 
//ģ�鷵��ȷ����
uint8_t PS_GetImage(void)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//�������ʶ
	SendLength(0x03);
	Sendcmd(0x01);
	temp =  0x01+0x03+0x01;
	SendCheck(temp);
	data=JudgeStr(2000);
	if(data)
		ensure=data[9];
	else
		ensure=0xff;
	return ensure;
}

//�������� PS_GenChar
//����:��ImageBuffer�е�ԭʼͼ������ָ�������ļ�����CharBuffer1��CharBuffer2			 
//����:BufferID --> charBuffer1:0x01	charBuffer1:0x02												
//ģ�鷵��ȷ����
uint8_t PS_GenChar(uint8_t BufferID)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//�������ʶ
	SendLength(0x04);
	Sendcmd(0x02);
	MYUSART_SendData(BufferID);
	temp = 0x01+0x04+0x02+BufferID;
	SendCheck(temp);
	data=JudgeStr(2000);
	if(data)
		ensure=data[9];
	else
		ensure=0xff;
	return ensure;
}

//��ȷ�ȶ���öָ������ PS_Match
//����:��ȷ�ȶ�CharBuffer1 ��CharBuffer2 �е������ļ� 
//ģ�鷵��ȷ����
uint8_t PS_Match(void)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//�������ʶ
	SendLength(0x03);
	Sendcmd(0x03);
	temp = 0x01+0x03+0x03;
	SendCheck(temp);
	data=JudgeStr(2000);
	if(data)
		ensure=data[9];
	else
		ensure=0xff;
	return ensure;
}

//����ָ�� PS_Search
//����:��CharBuffer1��CharBuffer2�е������ļ����������򲿷�ָ�ƿ�.�����������򷵻�ҳ�롣			
//����:  BufferID @ref CharBuffer1	CharBuffer2
//˵��:  ģ�鷵��ȷ���֣�ҳ�루����ָ��ģ�壩
uint8_t PS_Search(uint8_t BufferID,uint16_t StartPage,uint16_t PageNum,SearchResult *p)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//�������ʶ
	SendLength(0x08);
	Sendcmd(0x04);
	MYUSART_SendData(BufferID);
	MYUSART_SendData(StartPage>>8);
	MYUSART_SendData(StartPage);
	MYUSART_SendData(PageNum>>8);
	MYUSART_SendData(PageNum);
	temp = 0x01+0x08+0x04+BufferID
			+(StartPage>>8)+(uint8_t)StartPage
			+(PageNum>>8)+(uint8_t)PageNum;
	SendCheck(temp);
	data=JudgeStr(2000);
	if(data)
	{
		ensure = data[9];
		p->pageID   =(data[10]<<8)+data[11];
		p->mathscore=(data[12]<<8)+data[13];	
	}
	else
		ensure = 0xff;
	return ensure;	
}

//�ϲ�����������ģ�壩PS_RegModel
//����:��CharBuffer1��CharBuffer2�е������ļ��ϲ����� ģ��,�������CharBuffer1��CharBuffer2	
//˵��:  ģ�鷵��ȷ����
uint8_t PS_RegModel(void)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//�������ʶ
	SendLength(0x03);
	Sendcmd(0x05);
	temp = 0x01+0x03+0x05;
	SendCheck(temp);
	data=JudgeStr(2000);
	if(data)
		ensure=data[9];
	else
		ensure=0xff;
	return ensure;		
}

//����ģ�� PS_StoreChar
//����:�� CharBuffer1 �� CharBuffer2 �е�ģ���ļ��浽 PageID ��flash���ݿ�λ�á�			
//����:  BufferID @ref charBuffer1:0x01	charBuffer1:0x02
//       PageID��ָ�ƿ�λ�úţ�
//˵��:  ģ�鷵��ȷ����
uint8_t PS_StoreChar(uint8_t BufferID,uint16_t PageID)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//�������ʶ
	SendLength(0x06);
	Sendcmd(0x06);
	MYUSART_SendData(BufferID);
	MYUSART_SendData(PageID>>8);
	MYUSART_SendData(PageID);
	temp = 0x01+0x06+0x06+BufferID+(PageID>>8)+(uint8_t)PageID;
	SendCheck(temp);
	data=JudgeStr(2000);
	if(data)
		ensure=data[9];
	else
		ensure=0xff;
	return ensure;	
}

//ɾ��ģ�� PS_DeletChar
//����:  ɾ��flash���ݿ���ָ��ID�ſ�ʼ��N��ָ��ģ��
//����:  PageID(ָ�ƿ�ģ���)��Nɾ����ģ�������
//˵��:  ģ�鷵��ȷ����
uint8_t PS_DeletChar(uint16_t PageID,uint16_t N)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//�������ʶ
	SendLength(0x07);
	Sendcmd(0x0C);
	MYUSART_SendData(PageID>>8);
	MYUSART_SendData(PageID);
	MYUSART_SendData(N>>8);
	MYUSART_SendData(N);
	temp = 0x01+0x07+0x0C+(PageID>>8)+(uint8_t)PageID+(N>>8)+(uint8_t)N;
	SendCheck(temp);
	data=JudgeStr(2000);
	if(data)
		ensure=data[9];
	else
		ensure=0xff;
	return ensure;
}

//���ָ�ƿ� PS_Empty
//����:  ɾ��flash���ݿ�������ָ��ģ��
//����:  ��
//˵��:  ģ�鷵��ȷ����
uint8_t PS_Empty(void)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//�������ʶ
	SendLength(0x03);
	Sendcmd(0x0D);
	temp = 0x01+0x03+0x0D;
	SendCheck(temp);
	data=JudgeStr(2000);
	if(data)
		ensure=data[9];
	else
		ensure=0xff;
	return ensure;
}

//дϵͳ�Ĵ��� PS_WriteReg
//����:  дģ��Ĵ���
//����:  �Ĵ������RegNum:4\5\6
//˵��:  ģ�鷵��ȷ����
uint8_t PS_WriteReg(uint8_t RegNum,uint8_t DATA)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//�������ʶ
	SendLength(0x05);
	Sendcmd(0x0E);
	MYUSART_SendData(RegNum);
	MYUSART_SendData(DATA);
	temp = RegNum+DATA+0x01+0x05+0x0E;
	SendCheck(temp);
	data=JudgeStr(2000);
	if(data)
		ensure=data[9];
	else
		ensure=0xff;
	if(ensure==0)
		printf("\r\n���ò����ɹ���");
	else
		printf("\r\n%s",EnsureMessage(ensure));
	return ensure;
}

//����ģ���ַ PS_SetAddr
//����:  ����ģ���ַ
//����:  PS_addr
//˵��:  ģ�鷵��ȷ����
uint8_t PS_SetAddr(uint32_t PS_addr)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//�������ʶ
	SendLength(0x07);
	Sendcmd(0x15);
	MYUSART_SendData(PS_addr>>24);
	MYUSART_SendData(PS_addr>>16);
	MYUSART_SendData(PS_addr>>8);
	MYUSART_SendData(PS_addr);
	temp = 0x01+0x07+0x15
			+(uint8_t)(PS_addr>>24)+(uint8_t)(PS_addr>>16)
			+(uint8_t)(PS_addr>>8) +(uint8_t)PS_addr;				
	SendCheck(temp);
	AS608Addr=PS_addr;//������ָ�������ַ
	data=JudgeStr(2000);
	if(data)
		ensure=data[9];
	else
		ensure=0xff;	
		AS608Addr = PS_addr;
	if(ensure==0x00)
		printf("\r\n���õ�ַ�ɹ���");
	else
		printf("\r\n%s",EnsureMessage(ensure));
	return ensure;
}

//���ܣ� ģ���ڲ�Ϊ�û�������256bytes��FLASH�ռ����ڴ��û����±�,
//	�ü��±��߼��ϱ��ֳ� 16 ��ҳ��
//����:  NotePageNum(0~15),Byte32(Ҫд�����ݣ�32���ֽ�)
//˵��:  ģ�鷵��ȷ����
uint8_t PS_WriteNotepad(uint8_t NotePageNum,uint8_t *Byte32)
{
	uint16_t temp;
	uint8_t  ensure,i;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//�������ʶ
	SendLength(36);
	Sendcmd(0x18);
	MYUSART_SendData(NotePageNum);
	for(i=0;i<32;i++)
	 {
		 MYUSART_SendData(Byte32[i]);
		 temp += Byte32[i];
	 }
	temp =0x01+36+0x18+NotePageNum+temp;
	SendCheck(temp);
	data=JudgeStr(2000);
	if(data)
		ensure=data[9];
	else
		ensure=0xff;
	return ensure;
}

//������PS_ReadNotepad
//���ܣ�  ��ȡFLASH�û�����128bytes����
//����:  NotePageNum(0~15)
//˵��:  ģ�鷵��ȷ����+�û���Ϣ
uint8_t PS_ReadNotepad(uint8_t NotePageNum,uint8_t *Byte32)
{
	uint16_t temp;
	uint8_t  ensure,i;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//�������ʶ
	SendLength(0x04);
	Sendcmd(0x19);
	MYUSART_SendData(NotePageNum);
	temp = 0x01+0x04+0x19+NotePageNum;
	SendCheck(temp);
	data=JudgeStr(2000);
	if(data)
	{
		ensure=data[9];
		for(i=0;i<32;i++)
		{
			Byte32[i]=data[10+i];
		}
	}
	else
		ensure=0xff;
	return ensure;
}

//��������PS_HighSpeedSearch
//���ܣ��� CharBuffer1��CharBuffer2�е������ļ��������������򲿷�ָ�ƿ⡣
//		  �����������򷵻�ҳ��,��ָ����ڵ�ȷ������ָ�ƿ��� ���ҵ�¼ʱ����
//		  �ܺõ�ָ�ƣ���ܿ�������������
//����:  BufferID�� StartPage(��ʼҳ)��PageNum��ҳ����
//˵��:  ģ�鷵��ȷ����+ҳ�루����ָ��ģ�壩
uint8_t PS_HighSpeedSearch(uint8_t BufferID,uint16_t StartPage,uint16_t PageNum,SearchResult *p)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//�������ʶ
	SendLength(0x08);
	Sendcmd(0x1b);
	MYUSART_SendData(BufferID);
	MYUSART_SendData(StartPage>>8);
	MYUSART_SendData(StartPage);
	MYUSART_SendData(PageNum>>8);
	MYUSART_SendData(PageNum);
	temp = 0x01+0x08+0x1b+BufferID
			+(StartPage>>8)+(uint8_t)StartPage
			+(PageNum>>8)+(uint8_t)PageNum;
	SendCheck(temp);
	data=JudgeStr(2000);
 	if(data)
	{
		ensure=data[9];
		p->pageID 	=(data[10]<<8) +data[11];
		p->mathscore=(data[12]<<8) +data[13];
	}
	else
		ensure=0xff;
	return ensure;
}

//////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////



//////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////

////�ṹ�嶨��
//typedef struct
//{
//	uint8_t mode;//ģʽ��0��Ĭ��ˢָ��ģʽ��1�����ָ�ƣ�2��ɾ��ָ��
//}_finger;
//extern _finger finger;

//_finger finger;


//#define AS608_baud  115200//ͨ�Ų����ʣ�����ָ��ģ�鲨���ʸ���

//uint16_t ValidN;//ģ������Чָ�Ƹ���
//SysPara AS608Para;//ָ��ģ��AS608����


//��ʾȷ���������Ϣ
void ShowErrMessage(uint8_t ensure)
{
	printf("%s\r\n",EnsureMessage(ensure));
}


////ˢָ��
//void press_FR(void)
//{
//	SearchResult seach;
//	uint8_t ensure;
//	uint8_t strbuf[20];
//	uint8_t key=0;
//	
//	while(1)
//	{
//		ensure=PS_GetImage();
//		if(ensure==0x00)//��ȡͼ��ɹ� 
//		{	
//			ensure=PS_GenChar(CharBuffer1);
//			if(ensure==0x00) //���������ɹ�
//			{
//				ensure=PS_HighSpeedSearch(CharBuffer1,0,AS608Para.PS_max,&seach);
//				if(ensure==0x00)//�����ɹ�
//				{	
//					OLED_Clear();
//					OLED_ShowString(0,0,"Finger Success!",16);
//					sprintf((char *)strbuf,"ID:%d  Score:%d",seach.pageID,seach.mathscore);
//					OLED_ShowString(0,20,strbuf,16);
//					OLED_Refresh_Gram();
//					break;
//				}
//				else 
//					ShowErrMessage(ensure);					
//			}
//			else
//				ShowErrMessage(ensure);
//		}
//		
//		
//		key=KEY_Scan(0);
//		if(key==KEY1_PRESS)//��KEY1�������˳����˵����������ò˵�����
//		{
//			finger.mode=5;
//			break;
//		}
//		else if(key==KEY2_PRESS)//�ֶ�����
//		{
//			OLED_Clear();
//			OLED_ShowString(0,0,"Open Success!",16);
//			OLED_Refresh_Gram();
//			break;
//		}
//	}
//}

////¼ָ��
//void Add_FR(void)
//{
//	uint8_t ensure ,processnum=0;
//	uint16_t ID=0;
//	uint8_t key=0;
//	
//	//ѡ��ָ��ID
//	OLED_Clear();
//	OLED_ShowString(0,0,"Add Finger...",16);
//	OLED_ShowString(0,20,"ID:  0",16);
//	OLED_Refresh_Gram();
//	while(1)
//	{
//		key=KEY_Scan(0);
//		if(key==KEY_UP_PRESS)//����������
//		{
//			break;
//		}
//		else if(key==KEY1_PRESS)//�޸�ID
//		{
//			ID++;
//			if(ID>=AS608Para.PS_max)ID=0;
//			OLED_ShowNum(3*8,20,ID,3,16);
//			OLED_Refresh_Gram();
//		}
//		else if(key==KEY0_PRESS)//ȷ��
//		{
//			while(1)
//			{
//				switch (processnum)
//				{
//					case 0:
//						OLED_ShowString(0,40,"Please Press Figner.",12);		
//						OLED_Refresh_Gram();
//						ensure=PS_GetImage();
//						if(ensure==0x00) 
//						{
//							ensure=PS_GenChar(CharBuffer1);//��������
//							if(ensure==0x00)
//							{
//								OLED_ShowString(0,40,"Figner1 OK...       ",12);
//								OLED_Refresh_Gram();
//								processnum=1;//�����ڶ���						
//							}
//							else 
//								ShowErrMessage(ensure);				
//						}
//						else 
//							ShowErrMessage(ensure);						
//						break;



//					case 1:
//						OLED_ShowString(0,40,"Please Press Figner.",12);
//						OLED_Refresh_Gram();
//						ensure=PS_GetImage();
//						if(ensure==0x00) 
//						{
//							ensure=PS_GenChar(CharBuffer2);//��������
//							if(ensure==0x00)
//							{
//								OLED_ShowString(0,40,"Figner2 OK...       ",12);
//								OLED_Refresh_Gram();
//								processnum=2;//����������
//							}
//							else 
//								ShowErrMessage(ensure);	
//						}
//						else 
//							ShowErrMessage(ensure);		
//						break;



//					case 2:
//						OLED_ShowString(0,40,"Figner1 and 2 Match.",12);
//						OLED_Refresh_Gram();
//						ensure=PS_Match();
//						if(ensure==0x00) 
//						{
//							OLED_ShowString(0,40,"Figner1 and 2 OK....",12);
//							OLED_Refresh_Gram();
//							processnum=3;//�������Ĳ�
//						}
//						else 
//						{
//							OLED_ShowString(0,40,"Figner1 and 2 Error.",12);
//							OLED_Refresh_Gram();
//							ShowErrMessage(ensure);
//							processnum=0;//���ص�һ��		
//						}
//						delay_ms(1200);
//						break;



//					case 3:
//						ensure=PS_RegModel();
//						if(ensure==0x00) 
//						{
//							processnum=4;//�������岽
//						}
//						else 
//						{
//							processnum=0;
//							ShowErrMessage(ensure);
//						}
//						delay_ms(1200);
//						break;
//					
//					
//					
//					case 4:	
//						ensure=PS_StoreChar(CharBuffer2,ID);//����ģ��
//						if(ensure==0x00) 
//						{			
//							PS_ValidTempleteNum(&ValidN);//����ָ�Ƹ���
//							OLED_ShowString(0,40,"Figner Save OK!     ",12);
//							OLED_ShowString(0,52,"Cap:",12);
//							OLED_ShowNum(4*6,52,AS608Para.PS_max-ValidN,3,12);
//							OLED_Refresh_Gram();
//							delay_ms(1500);
//							return ;
//						}
//						else
//						{
//							processnum=0;
//							ShowErrMessage(ensure);
//						}					
//						break;
//						
//						
//				}
//				delay_ms(400);
//			}
//		}
//	}

//}

////ɾ��ָ��
//void Del_FR(void)
//{
//	uint8_t  ensure;
//	uint8_t key=0;
//	uint16_t ID=0;
//	
//	//ѡ��ָ��ID
//	OLED_Clear();
//	OLED_ShowString(0,0,"Delete Finger...",16);
//	OLED_ShowString(0,20,"ID:  0",16);
//	OLED_Refresh_Gram();
//	
//	while(1)
//	{
//		key=KEY_Scan(0);
//		if(key==KEY_UP_PRESS)//����������
//		{
//			break;
//		}
//		else if(key==KEY1_PRESS)//�޸�ID
//		{
//			ID++;
//			if(ID>=AS608Para.PS_max)ID=0;
//			OLED_ShowNum(3*8,20,ID,3,16);
//			OLED_Refresh_Gram();
//		}
//		else if(key==KEY0_PRESS)//ȷ��
//		{
//			ensure=PS_DeletChar(ID,1);//ɾ������ָ��
//			if(ensure==0)
//			{
//				OLED_ShowString(0,40,"Delete OK!",12);
//				OLED_Refresh_Gram();
//			}
//			else
//				ShowErrMessage(ensure);
//			
//			delay_ms(1200);
//			PS_ValidTempleteNum(&ValidN);//����ָ�Ƹ���
//			OLED_ShowString(0,52,"Cap:",12);
//			OLED_ShowNum(4*6,52,AS608Para.PS_max-ValidN,3,12);
//			OLED_Refresh_Gram();
//			return ;
//		}
//		else if(key==KEY2_PRESS)//ȫ�����ָ������
//		{
////			ensure=PS_Empty();//���ָ�ƿ�
//		}
//	}	

//}


////���˵���ʾ
//void main_window_show(void)
//{
//	uint8_t strbuf[20];
//	uint8_t ensure=0;

//MENU:	
//	//Ĭ��ˢָ��ģʽ
//	if(finger.mode==0)
//	{
//		OLED_Clear();
//		OLED_ShowString(20,0,"FingerPrint",16);
//		while(PS_HandShake(&AS608Addr))//��AS608ģ������
//		{
//			OLED_ShowString(0,20,"AS608 Error!",16);
//			OLED_Refresh_Gram();
//			delay_ms(500);
//			OLED_Fill_rectangle(0,20,128,16,0);
//			OLED_Refresh_Gram();
//			delay_ms(200);
//		}


//		sprintf((char *)strbuf,"Baud:%d",AS608_baud);
//		OLED_ShowString(0,20,strbuf,12);
//		sprintf((char *)strbuf,"Address:0X%X",AS608Addr);
//		OLED_ShowString(0,35,strbuf,12);
//		
//		ensure=PS_ValidTempleteNum(&ValidN);//����ָ�Ƹ���
//		if(ensure!=0x00)
//			ShowErrMessage(ensure);//��ʾȷ���������Ϣ
//		
//		ensure=PS_ReadSysPara(&AS608Para);  //������
//		if(ensure==0x00)
//		{
//			sprintf((char *)strbuf,"Cap:%d  Level:%d",AS608Para.PS_max-ValidN,AS608Para.PS_level);
//			OLED_ShowString(0,50,strbuf,12);
//			
//		}
//		else
//			ShowErrMessage(ensure);
//		
//		OLED_Refresh_Gram();  //ˢ��GRAM����
//		
//		while(1)
//		{
//			press_FR();//ˢָ��
//			goto MENU;//�ص����˵�����
//		}
//	}	
//}

////���ò˵���ʾ
//void setup_window_show(void)
//{
//	uint8_t key=0;
//	uint8_t mode=0;
//	
//	//ָ������ģʽ
//	if(finger.mode!=0)
//	{
//		OLED_Clear();
//		OLED_ShowString(30,0,"FingerPrint",16);
//		OLED_ShowString(40,20,"Add Finger",16);
//		OLED_ShowString(40,40,"Delete",16);
//		OLED_ShowString(0,20,"-->",16);
//		OLED_Refresh_Gram();  //ˢ��GRAM����
//				
//		while(1)
//		{
//			key=KEY_Scan(0);
//			if(key==KEY1_PRESS)//ѡ��ģʽ
//			{
//				mode++;
//				OLED_ShowString(0,(mode)*20,"   ",16);//����ϴμ�ͷָ��
//				if(mode>=2)mode=0;
//				OLED_ShowString(0,(mode+1)*20,"-->",16);//��ͷָ��
//				OLED_Refresh_Gram();
//			}
//			else if(key==KEY_UP_PRESS)//�������˵�
//			{
//				finger.mode=0;
//				break;
//			}
//			else if(key==KEY0_PRESS)//ȷ��
//			{
//				finger.mode=mode+1;
//			}
//			//���ָ��
//			if(finger.mode==1)
//			{
//				Add_FR();
//				mode=0;
//				finger.mode=5;
//				//������һ���˵�
//				OLED_Clear();
//				OLED_ShowString(30,0,"FingerPrint",16);
//				OLED_ShowString(40,20,"Add Finger",16);
//				OLED_ShowString(40,40,"Delete",16);
//				OLED_ShowString(0,20,"-->",16);
//				OLED_Refresh_Gram();  //ˢ��GRAM����
//			}
//			//ɾ��ָ��
//			else if(finger.mode==2)
//			{
//				Del_FR();
//				mode=0;
//				finger.mode=5;
//				//������һ���˵�
//				OLED_Clear();
//				OLED_ShowString(30,0,"FingerPrint",16);
//				OLED_ShowString(40,20,"Add Finger",16);
//				OLED_ShowString(40,40,"Delete",16);
//				OLED_ShowString(0,20,"-->",16);

//				OLED_Refresh_Gram();  //ˢ��GRAM����
//			}
//		}
//	}
//}

////AS608ָ����
//void app_demo(void)
//{
//	USART3_Init(AS608_baud);
//	
//	OLED_Init();

//	OLED_Clear();
//	OLED_Refresh_Gram();
//	
//	while(1)
//	{	
//		main_window_show();
////		setup_window_show();
//	}
//}
