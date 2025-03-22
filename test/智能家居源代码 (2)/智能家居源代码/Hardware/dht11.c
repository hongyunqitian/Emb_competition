#include "dht11.h"

#include "stm32f4xx_conf.h"


uint8_t dht11_data[5]={0x00,0x00,0x00,0x00,0x00};
uint8_t sum = 0;

#define DHT11_Pin  GPIO_Pin_1

/*
*初始化输出
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
*初始化输入
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
*读取一个字节
*/
uint8_t DHT_Read_Byte(void)
{
	uint8_t temp;
	uint8_t ReadDat = 0;
	
	uint8_t retry = 0;
	uint8_t i;
	for(i=0; i<8;i++)
	{	
		//读取一位数据时，会先收到低电平信号50us
		while(GPIO_ReadInputDataBit(GPIOB, DHT11_Pin) == 0 && retry< 100)
		{
			Delay_us(1);
			retry++;
		}
		retry = 0;
		Delay_us(30);
		temp = 0;
		//再接收高电平信号16us-28us（代表数据0）或高电平信号70us（代表数据1）
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
*读取一次数据
*/
uint8_t DHT_Read(void)
{
	uint8_t i;
	uint8_t retry = 0;
	//总线设置为输出并拉低18ms
	DHT11_GPIO_OUT();
	GPIO_ResetBits(GPIOB, DHT11_Pin);
	Delay_ms(18);
	//总线再拉高40ms
	GPIO_SetBits(GPIOB, DHT11_Pin);
	Delay_us(40);
	//总线设置为输入
	DHT11_GPIO_IN();
	Delay_us(20);
	//等待响应信号为低电平
	if(GPIO_ReadInputDataBit(GPIOB, DHT11_Pin) == 0)
	{	
		//等待响应信号为高电平，超时等待100us
		while(GPIO_ReadInputDataBit(GPIOB, DHT11_Pin)==0&&retry<100)
		{
			Delay_us(1);
			retry++;
		}
		retry=0;
		//等待数据传送，超时等待100us
		while(GPIO_ReadInputDataBit(GPIOB, DHT11_Pin)==1&&retry<100)
		{
			Delay_us(1);
			retry++;
		}
		retry=0;
		//循环读取数据，dat[0]为湿度整数数据，dat[1]为湿度小数数据，dat[2]为温度整数数据，dat[3]为温度小数数据，dat[4]为校验和数据
		for(i=0;i<5;i++)
		{
			dht11_data[i] = DHT_Read_Byte();
		}
		Delay_us(50);
	}
	//当校验和数据=湿度整数数据+湿度小数数据+温度整数数据+温度小数数据，说明正确传送。
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
//	if( DHT_Read() )//读取数据正确情况下进行温湿度计算
//	{
//		flag=0;//标志位置零进入下一次计时
//		OLED_ShowNum(1,1,dht11_data[2],2);		//显示温度数值
//		OLED_ShowChar(1,3,'.');
//		OLED_ShowNum(1,4,dht11_data[3],1);		//显示温度数值
//		
//		OLED_ShowNum(2,1,dht11_data[0],2);		//显示湿度数值
//		OLED_ShowChar(2,3,'.');
//		OLED_ShowNum(2,4,dht11_data[1],1);		//显示湿度数值				
//	}
//}


