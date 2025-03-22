#include "dht11.h"

#include "stm32f4xx_conf.h"


uint8_t dht11_data[5]={0x00,0x00,0x00,0x00,0x00};
uint8_t sum = 0;

#define DHT11_Pin  GPIO_Pin_1

/*
*��ʼ�����
*/
void DHT11_GPIO_OUT(void)
{
	GPIO_InitTypeDef  GPIO_InitStructure;
	
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB ,ENABLE); 
		
  	GPIO_InitStructure.GPIO_Pin = DHT11_Pin;
 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT; 
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  	GPIO_Init(GPIOB, &GPIO_InitStructure);
}

/*
*��ʼ������
*/
void DHT11_GPIO_IN(void)
{
	GPIO_InitTypeDef  GPIO_InitStructure;
	
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB ,ENABLE);
		
  	GPIO_InitStructure.GPIO_Pin = DHT11_Pin;	
  	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
  	GPIO_Init(GPIOB, &GPIO_InitStructure);
}

/*
*��ȡһ���ֽ�
*/
uint8_t DHT_Read_Byte(void)
{
	uint8_t temp;
	uint8_t ReadDat = 0;
	
	uint8_t retry = 0;
	uint8_t i;
	for(i=0; i<8;i++)
	{	
		//��ȡһλ����ʱ�������յ��͵�ƽ�ź�50us
		while(GPIO_ReadInputDataBit(GPIOB, DHT11_Pin) == 0 && retry< 100)
		{
			Delay_us(1);
			retry++;
		}
		retry = 0;
		Delay_us(30);
		temp = 0;
		//�ٽ��ոߵ�ƽ�ź�16us-28us����������0����ߵ�ƽ�ź�70us����������1��
		if(GPIO_ReadInputDataBit(GPIOB, DHT11_Pin)==1) temp=1;
		while(GPIO_ReadInputDataBit(GPIOB, DHT11_Pin) == 1 && retry<100)
		{
			Delay_us(1);
			retry++;
		}
		retry = 0;
		ReadDat<<=1;
		ReadDat|=temp;
	}
	return ReadDat;
}

/*
*��ȡһ������
*/
uint8_t DHT_Read(void)
{
	uint8_t i;
	uint8_t retry = 0;
	//��������Ϊ���������18ms
	DHT11_GPIO_OUT();
	GPIO_ResetBits(GPIOB, DHT11_Pin);
	Delay_ms(18);
	//����������40ms
	GPIO_SetBits(GPIOB, DHT11_Pin);
	Delay_us(40);
	//��������Ϊ����
	DHT11_GPIO_IN();
	Delay_us(20);
	//�ȴ���Ӧ�ź�Ϊ�͵�ƽ
	if(GPIO_ReadInputDataBit(GPIOB, DHT11_Pin) == 0)
	{	
		//�ȴ���Ӧ�ź�Ϊ�ߵ�ƽ����ʱ�ȴ�100us
		while(GPIO_ReadInputDataBit(GPIOB, DHT11_Pin)==0&&retry<100)
		{
			Delay_us(1);
			retry++;
		}
		retry=0;
		//�ȴ����ݴ��ͣ���ʱ�ȴ�100us
		while(GPIO_ReadInputDataBit(GPIOB, DHT11_Pin)==1&&retry<100)
		{
			Delay_us(1);
			retry++;
		}
		retry=0;
		//ѭ����ȡ���ݣ�dat[0]Ϊʪ���������ݣ�dat[1]Ϊʪ��С�����ݣ�dat[2]Ϊ�¶��������ݣ�dat[3]Ϊ�¶�С�����ݣ�dat[4]ΪУ�������
		for(i=0;i<5;i++)
		{
			dht11_data[i] = DHT_Read_Byte();
		}
		Delay_us(50);
	}
	//��У�������=ʪ����������+ʪ��С������+�¶���������+�¶�С�����ݣ�˵����ȷ���͡�
	sum = dht11_data[0] + dht11_data[1] + dht11_data[2] + dht11_data[3];
	if(dht11_data[4]  == sum)
	{
		return 1;
	}
	else
		return 0;
}


//if(flag)
//{	
//	if( DHT_Read() )//��ȡ������ȷ����½�����ʪ�ȼ���
//	{
//		flag=0;//��־λ���������һ�μ�ʱ
//		OLED_ShowNum(1,1,dht11_data[2],2);		//��ʾ�¶���ֵ
//		OLED_ShowChar(1,3,'.');
//		OLED_ShowNum(1,4,dht11_data[3],1);		//��ʾ�¶���ֵ
//		
//		OLED_ShowNum(2,1,dht11_data[0],2);		//��ʾʪ����ֵ
//		OLED_ShowChar(2,3,'.');
//		OLED_ShowNum(2,4,dht11_data[1],1);		//��ʾʪ����ֵ				
//	}
//}


