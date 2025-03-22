#include "stm32f4xx.h"                  // Device header
#include "LIGHTSENSOR.h"
#include "Motor.h"
#include "Delay.h"
#include "as608.h"
#include "usart.h"
#include "dht11.h"
#include "Timer.h"
#include "Voice.h"
#include "OLED.h"
#include "Apps.h"
#include "FMQ.h"
#include "MQ2.h"
#include "PWM.h"
#include "Sys.h"
#include "Key.h"

/////////////////////////////////////////////////////////////////////////////////////

unsigned char Main_Window(void);	//'0'
unsigned char A_Window(void);		// A
unsigned char Pass_Window(void);	// B
unsigned char Finger_Window(void);	// C
unsigned char Config_Window(void);	// D
unsigned char PassCon_Window(void);	// E
unsigned char FingCon_Window(void);	// F
unsigned char Apps_Window(void);	// G


void press_FR(void);
void Add_FR(void);
void Del_FR(void);
void APP_Sys(void);


/////////////////////////////////////////////////////////////////////////////////////

#define AS608_baud  115200

uint16_t ValidN;//模块内有效指纹个数
SysPara AS608Para;//指纹模块AS608参数

unsigned char KEY = 0;
unsigned char Window_Mode = '0';
unsigned int  Sys_Pass = 1234;
unsigned int  Password = 0;
unsigned char Secure = 0;
unsigned char DHT11_Flag = 1;
unsigned char MQ2_Flag = 1;
unsigned int ADValue;
unsigned int MQ2_Value;
unsigned int Fanlight_Flag = 0;
unsigned char NEXT_OK = 0;
unsigned int Wait_OK = 0;
unsigned int Voice_Wait = 0;
char MQTT_State;
unsigned char Light = 0;
unsigned char Water = 0;
unsigned char Wait = 0;

unsigned char Curtain_Auto = 0;
unsigned char Fanlight_Auto = 0;
unsigned char LED_Auto = 0;

unsigned char Curtain_State = 1;
unsigned char Fanlight_State = 0;
unsigned char HVAC_State = 0;
unsigned char Fan_State = 1;
unsigned char InDoorLights_State = 0;
unsigned char OutDoorLights_State = 0;

//char AT_USERCFG[]="AT+MQTTUSERCFG=0,1,\"NULL\",\"6684a206a559ef6226666ab5_humj_tmp\",\"86211d1170fce798155470d56511e7508db7f4427d38ef95bf1f747b39a6b5e9\",0,0,\"\"\r\n";
//char AT_CLIENTID[]="AT+MQTTCLIENTID=0,\"6684a206a559ef6226666ab5_humj_tmp_0_0_2024070303\"\r\n";
//char AT_CONN[]="AT+MQTTCONN=0,\"b157ab6108.st1.iotda-device.cn-north-4.myhuaweicloud.com\",1883,1\r\n"; //连接华为云
//char AT_SUB[]="AT+MQTTSUB=0,\"devices/humj_tmp/sys/messages/down\",1\r\n";
//char AT_PUB1[]="AT+MQTTPUBRAW=0,\"$oc/devices/6684a206a559ef6226666ab5_humj_tmp/user/up\",100,0,0\r\n";
//char AT_PUB2[]="{ \"content\": {\"hum\":\"11\",\"fumes\":\"50\",\"tem\":\"11\",\"light\":\"1\",\"water\":\"1\"} }";


char AT_USERCFG[]="AT+MQTTUSERCFG=0,1,\"NULL\",\"6684a206a559ef6226666ab5_humj_tmp\",\"d1e6fbd249e272cb9be63f03f14d2228ef72a086a33237a8a17f50588d8ef43e\",0,0,\"\"\r\n";
char AT_CLIENTID[]="AT+MQTTCLIENTID=0,\"6684a206a559ef6226666ab5_humj_tmp_0_0_2024121214\"\r\n";
char AT_CONN[]="AT+MQTTCONN=0,\"b157ab6108.st1.iotda-device.cn-north-4.myhuaweicloud.com\",1883,1\r\n"; //连接华为云
char AT_SUB[]="AT+MQTTSUB=0,\"devices/humj_tmp/sys/messages/down\",1\r\n";
char AT_PUB1[]="AT+MQTTPUBRAW=0,\"$oc/devices/6684a206a559ef6226666ab5_humj_tmp/user/up\",100,0,0\r\n";
char AT_PUB2[]="{ \"content\": {\"hum\":\"11\",\"fumes\":\"50\",\"tem\":\"11\",\"light\":\"1\",\"water\":\"1\"} }";

int main(void)
{	
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
	
	Delay_init(168);
	Adc_Init();
	fmq_Init();
	Key_Init();
	OLED_Init();
	Motor_Init();
	Voice_Init();
	DHT11_GPIO_IN();
	LightSensor_Init();
	uart_init(9600);
	USART3_Init(115200);
	TIM3_PWM_Init(200-1,8400-1);
	TIM5_Init(1000-1,7200-1);
	Apps_Init();
	
	
	OLED_Clear();
	
	while(1)
	{		
			
		switch(Window_Mode)
		{
			case '0': Main_Window();   break;
			case 'A': A_Window();      break;
			case 'B': Pass_Window();   break;
			case 'C': Finger_Window(); break;
			case 'D': Config_Window(); break;
			case 'E': PassCon_Window();break;
			case 'F': FingCon_Window();break;
			case 'G': Apps_Window();   break;
		}
		
	}
}

////////////////////////////////////////
unsigned char Main_Window(void)		// 0
{
	OLED_Clear();
	OLED_ShowString(1,1,"Main_Window");
	while(1)
	{
		if(Key_scan())
		{
			KEY = Key_scan();
		}
		
		if(KEY != 0 && Secure == 0)
		{
			Window_Mode = 'A';
			KEY = 0;
			return 0;
		}
		if(KEY != 0 && Secure == 1)
		{
			Window_Mode = 'D';
			KEY = 0;
			return 0;
		}
		
		
		if(DHT11_Flag)
		{	
			if( DHT_Read() )//读取数据正确情况下进行温湿度计算
			{
				DHT11_Flag=0;//标志位置零进入下一次计时
				OLED_ShowNum(2,1,dht11_data[2],2);		//显示温度数值
				OLED_ShowChar(2,3,'.');
				OLED_ShowNum(2,4,dht11_data[3],1);		//显示温度数值
				
				OLED_ShowNum(3,1,dht11_data[0],2);		//显示湿度数值
				OLED_ShowChar(3,3,'.');
				OLED_ShowNum(3,4,dht11_data[1],1);		//显示湿度数值				
			}
		}
		if(MQ2_Flag)
		{
			MQ2_Flag = 0;
			ADValue = Get_Adc_Average(1,10);
			MQ2_Value=ADValue*100/4095;//模拟烟雾浓度的值
			fmq(MQ2_Value);	
			OLED_ShowNum(2,8,MQ2_Value,3);
		}
	}
}

////////////////////////////////////////
unsigned char A_Window(void)		// A
{
	unsigned char A_Mode = 0;
	
	OLED_Clear();
	OLED_ShowString(1,1,"A_Window");
	
	OLED_ShowString(2,1,"->PassWord");
	OLED_ShowString(3,3,"Finger");
	
	while(1)
	{
		if(Key_scan())
		{
			KEY = Key_scan();
		}
		
		if(KEY == 1)printf("%s",AT_USERCFG);
		if(KEY == 4)printf("%s",AT_CLIENTID);
		if(KEY == 7)printf("%s",AT_CONN);
		if(KEY == 2)printf("%s",AT_SUB);
		if(KEY == 5)printf("%s",AT_PUB1);
		
		if(KEY == 14)
		{
			if(A_Mode == 1)
				A_Mode = 0;
			else
				A_Mode ++;

		OLED_ShowString(2,1,"  ");
		OLED_ShowString(3,1,"  ");
		OLED_ShowString(2+A_Mode,1,"->");
		}
		if(KEY == 13)
		{
			if(A_Mode == 0)
				A_Mode = 1;
			else
				A_Mode --;

		OLED_ShowString(2,1,"  ");
		OLED_ShowString(3,1,"  ");
		OLED_ShowString(2+A_Mode,1,"->");
		}
		if(KEY == 15)
		{
			if(A_Mode == 0 && KEY == 15)
			{
				Window_Mode = 'B';
				KEY = 0;
				return 0;
			}
			if(A_Mode == 1 && KEY == 15)
			{
				Window_Mode = 'C';
				KEY = 0;
				return 0;
			}
		}
		if(KEY == 16)
		{
			Window_Mode = '0';
			KEY = 0;
			return 0;
		}
		OLED_ShowNum(1,13,KEY,2);
		OLED_ShowNum(1,16,A_Mode,1);
		KEY = 0;
	}
}

////////////////////////////////////////
unsigned char Pass_Window(void)		// B
{
	unsigned char Count;
	OLED_Clear();
	OLED_ShowString(1,1,"Pass_Window");

	Password = 0;
	Count = 0;
	while(1)
	{
		if(Key_scan())
		{
			KEY = Key_scan();
		}
		if(KEY > 0 && KEY <= 10 && Count <=3)
		{
			if(KEY == 10)KEY = 0;
			Password *= 10;
			Password += KEY;
			Count++;
		}
		if(KEY == 12)
		{
			Password /= 10;
			Count --;
		}
		if(KEY == 11)
		{
			Password = 0;
			Count = 0;
		}
		if(KEY == 15)
		{
			if(Password == Sys_Pass)
			{
				Secure = 1;
				Window_Mode = 'D';
				KEY = 0;
				return 0;
			}
			else
			{
				OLED_ShowString(2,1,"                ");
				Delay_ms(200);
				OLED_ShowString(2,1,"PassWord Error");
				Delay_ms(1000);
				OLED_ShowString(2,1,"                ");
			}
		}
		if(KEY == 16)
		{
			Window_Mode = 'A';
			KEY = 0;
			return 0;
		}
		
		OLED_ShowString(2,1,"Pass:");
		OLED_ShowNum(2,6,Password,4);
		KEY = 0;
	}
}

////////////////////////////////////////
unsigned char Finger_Window(void)	// C
{
	uint8_t ensure;
	
	unsigned char Finger_HandShake = 0;
	OLED_Clear();
	OLED_ShowString(1,1,"Finger_Window");
	while(PS_HandShake(&AS608Addr))
	{
		OLED_ShowString(2,1,"AS608 Error");
		Delay_ms(500);
		OLED_ShowString(2,1,"                ");
		Delay_ms(200);
		Finger_HandShake++;
		if(Finger_HandShake > 5)
		{
			Window_Mode = 'A';
			return 0;
		}
	}
	printf("通讯成功!\r\n");
	printf("波特率:%d   地址:0X%X\r\n",AS608_baud,AS608Addr);
	
	ensure=PS_ValidTempleteNum(&ValidN);//读库指纹个数
	if(ensure!=0x00)
		ShowErrMessage(ensure);//显示确认码错误信息
	
	ensure=PS_ReadSysPara(&AS608Para);  //读参数
	if(ensure==0x00)
		printf("\r\n库容量:%d     对比等级: %d\r\n",AS608Para.PS_max-ValidN,AS608Para.PS_level);
	else
		ShowErrMessage(ensure);
	
	while(1)
	{	
		press_FR();
		if(Window_Mode == 'A')
			return 0;
		if(KEY == 17)
		{
			Window_Mode = 'D';
			return 0;
		}
		
	}
}

////////////////////////////////////////
unsigned char Config_Window(void)	// D
{
	unsigned char Config_Mode = 0;
	
	OLED_Clear();
	OLED_ShowString(1,1,"Config_Window");
	OLED_ShowString(2,1,"->PassWord");
	OLED_ShowString(3,3,"Finger");
	OLED_ShowString(4,3,"App");
	while(1)
	{
		if(Key_scan())
		{
			KEY = Key_scan();
		}
		
		if(KEY == 1)printf("%s",AT_USERCFG);
		if(KEY == 4)printf("%s",AT_CLIENTID);
		if(KEY == 7)printf("%s",AT_CONN);
		if(KEY == 2)printf("%s",AT_SUB);
		if(KEY == 5)printf("%s",AT_PUB1);
		
		if(KEY == 14)
		{
			if(Config_Mode == 2)
				Config_Mode = 0;
			else
				Config_Mode ++;

		OLED_ShowString(2,1,"  ");
		OLED_ShowString(3,1,"  ");
		OLED_ShowString(4,1,"  ");
		OLED_ShowString(2+Config_Mode,1,"->");
		}
		if(KEY == 13)
		{
			if(Config_Mode == 0)
				Config_Mode = 2;
			else
				Config_Mode --;
		OLED_ShowString(2,1,"  ");
		OLED_ShowString(3,1,"  ");
		OLED_ShowString(4,1,"  ");
		OLED_ShowString(2+Config_Mode,1,"->");
		}
		if(KEY == 15)
		{
			if(KEY == 15 && Config_Mode == 0)
			{
				Window_Mode = 'E';
				KEY = 0;
				return 0;
			}
			if(KEY == 15 && Config_Mode == 1)
			{
				Window_Mode = 'F';
				KEY = 0;
				return 0;
			}
			if(KEY == 15 && Config_Mode == 2)
			{
				Window_Mode = 'G';
				KEY = 0;
				return 0;
			}
		}
		if(KEY == 16)
		{
			Window_Mode = '0';
			KEY = 0;
			return 0;
		}
		KEY = 0;
	}
}

///////////////////////////////////////
unsigned char PassCon_Window(void)	//E
{
	unsigned char Count = 0;
	unsigned int NewPass = 0;
	
	OLED_Clear();
	OLED_ShowString(1,1,"Password Config");
	OLED_ShowString(2,1,"PassSys:");
	OLED_ShowNum(2,9,Sys_Pass,4);
	OLED_ShowString(3,1,"NewPass:");
	OLED_ShowNum(3,9,NewPass,4);	
	while(1)
	{
		if(Key_scan())
		{
			KEY = Key_scan();
		}
		if(KEY > 0 && KEY <= 10 && Count <=3)
		{
			if(KEY == 10)KEY = 0;
			NewPass *= 10;
			NewPass += KEY;
			Count++;
		}
		if(KEY == 12)
		{
			NewPass /= 10;
			Count --;
		}
		if(KEY == 11)
		{
			NewPass = 0;
			Count = 0;
		}
		if(KEY == 15)
		{
			if(Count == 4)
			{
				Sys_Pass = NewPass;
				OLED_ShowNum(2,9,Sys_Pass,4);
				NewPass = 0;
				Count = 0;
				OLED_ShowString(3,1,"                ");
				Delay_ms(200);
				OLED_ShowString(3,1,"Successful");
				Delay_ms(1000);
				OLED_ShowString(3,1,"                ");
			}
			else
			{
				OLED_ShowString(3,1,"                ");
				Delay_ms(200);
				OLED_ShowString(3,1,"Cncontext");
				Delay_ms(1000);
				OLED_ShowString(3,1,"                ");
			}
		}
		if(KEY == 16)
		{
			Window_Mode = 'D';
			KEY = 0;
			return 0;
		}
		
		OLED_ShowString(3,1,"NewPass:");
		OLED_ShowNum(3,9,NewPass,4);
		KEY = 0;
	}
	
}

////////////////////////////////////////
unsigned char FingCon_Window(void)	// F
{
	unsigned char Finger_Mode = 0;
	OLED_Clear();
	OLED_ShowString(1,1,"Finger Config");
	
	OLED_ShowString(2,1,"->Add Finger");
	OLED_ShowString(3,3,"Del Finger");
	while(1)
	{
		if(Key_scan())
		{
			KEY = Key_scan();
		}
		if(KEY == 14)
		{
			if(Finger_Mode == 1)
				Finger_Mode = 0;
			else
				Finger_Mode ++;

		OLED_ShowString(2,1,"  ");
		OLED_ShowString(3,1,"  ");
		OLED_ShowString(2+Finger_Mode,1,"->");
		}
		if(KEY == 13)
		{
			if(Finger_Mode == 0)
				Finger_Mode = 1;
			else
				Finger_Mode --;
		OLED_ShowString(2,1,"  ");
		OLED_ShowString(3,1,"  ");
		OLED_ShowString(4,1,"  ");
		OLED_ShowString(2+Finger_Mode,1,"->");
		}
		if(KEY == 15)
		{
			if(KEY == 15 && Finger_Mode == 0)
			{
				KEY = 0;
				Add_FR();
			}
			if(KEY == 15 && Finger_Mode == 1)
			{
				KEY = 0;
				Del_FR();
			}
		}
		if(KEY == 16)
		{
			KEY = 0;
			Window_Mode = 'D';
			return 0;
		}
		if(KEY == 17)
		{
			KEY = 0;
			Window_Mode = 'F';
			return 0;
		}
		
		
		KEY = 0;
	}
}

////////////////////////////////////////
unsigned char Apps_Window(void)		//G
{
	unsigned char App_Mode = 0; 
	unsigned char App_MENU = 1;
	OLED_Clear();

	
	while(1)
	{
		if(Key_scan())
		{
			KEY = Key_scan();
		}
		if(App_MENU == 1)
		{
			OLED_Clear();
			OLED_ShowString(1,1,"App MENU 1");
			OLED_ShowString(2,3,"Curtain");
			OLED_ShowString(3,3,"Fanlight");
			OLED_ShowString(4,3,"HVAC");
			OLED_ShowString(App_Mode % 3 + 2,1,"->");
			App_MENU = 0;
		}
		if(App_MENU == 2)
		{
			OLED_Clear();
			OLED_ShowString(1,1,"App MENU 2");
			OLED_ShowString(2,3,"Fan");
			OLED_ShowString(3,3,"InDoor Lights");
			OLED_ShowString(4,3,"OutDoor Lights");
			OLED_ShowString(App_Mode % 3 + 2,1,"->");
			App_MENU = 0;
		}
		if(KEY == 14)
		{
			if(App_Mode == 2)
				App_MENU = 2;
			else if(App_Mode == 5)
				App_MENU = 1;
			
			if(App_Mode == 5)
				App_Mode = 0;
			else
				App_Mode++;
			
				OLED_ShowString(2,1,"  ");
				OLED_ShowString(3,1,"  ");
				OLED_ShowString(4,1,"  ");
			if(App_Mode != 3&&App_Mode != 6)
				OLED_ShowString(App_Mode % 3 + 2,1,"->");
			OLED_ShowNum(1,14,App_Mode,2);
		}
		if(KEY == 13)
		{
			if(App_Mode == 3)
				App_MENU = 1;
			else if(App_Mode == 0)
				App_MENU = 2;
			
			if(App_Mode == 0)
				App_Mode = 5;
			else
				App_Mode--;
			
				OLED_ShowString(2,1,"  ");
				OLED_ShowString(3,1,"  ");
				OLED_ShowString(4,1,"  ");
			if(App_Mode != 2&&App_Mode != 255)
				OLED_ShowString(App_Mode % 3 + 2,1,"->");
			OLED_ShowNum(1,14,App_Mode,2);
		}
		
		
		if(KEY == 15)
		{
if(App_Mode == 0)
{
	OLED_Clear();
	OLED_ShowString(1,1,"Curtain Config");
	OLED_ShowString(2,3,"Auto");
	OLED_ShowString(3,3,"State");
	OLED_ShowNum(2,12,Curtain_Auto,1);
	OLED_ShowNum(3,12,Curtain_State,1);
	while(1)
	{
		if(Key_scan())
		{
			KEY = Key_scan();
		}
		if(KEY == 13)
		{
			if(Curtain_Auto == 0)
				Curtain_Auto = 1;
			else
				Curtain_Auto = 0;
			OLED_ShowNum(2,12,Curtain_Auto,1);
		}
		if(KEY == 14)
		{
			if(Curtain_State == 0)
				Curtain_State = 1;
			else
				Curtain_State = 0;
			OLED_ShowNum(3,12,Curtain_State,1);
		}
		if(KEY == 16)
		{
			KEY = 0;
			Window_Mode = 'G';
			return 0;
		}
		KEY = 0;
	}
}
if(App_Mode == 1)
{
	OLED_Clear();
	OLED_ShowString(1,1,"Fanlight Config");
	OLED_ShowString(2,3,"Auto");
	OLED_ShowString(3,3,"State");
	OLED_ShowNum(2,12,Fanlight_Auto,1);
	OLED_ShowNum(3,12,Fanlight_State,1);
	while(1)
	{
		if(Key_scan())
		{
			KEY = Key_scan();
		}
		if(KEY == 13)
		{
			if(Fanlight_Auto == 0)
				Fanlight_Auto = 1;
			else
				Fanlight_Auto = 0;
			OLED_ShowNum(2,12,Fanlight_Auto,1);
		}
		if(KEY == 14)
		{
			if(Fanlight_State == 0)
				Fanlight_State = 1;
			else
				Fanlight_State = 0;
			OLED_ShowNum(3,12,Fanlight_State,1);
		}
		if(KEY == 16)
		{
			KEY = 0;
			Window_Mode = 'G';
			return 0;
		}
		KEY = 0;
	}
}
if(App_Mode == 2)
{
	OLED_Clear();
	OLED_ShowString(1,1,"HVAC Config");
	OLED_ShowString(2,3,"State");
	OLED_ShowString(3,3,"Auto");
	OLED_ShowNum(2,12,HVAC_State,1);
	while(1)
	{
		if(Key_scan())
		{
			KEY = Key_scan();
		}
		if(KEY == 13)
		{
			if(HVAC_State == 0)
				HVAC_State = 1;
			else
				HVAC_State = 0;
			OLED_ShowNum(2,12,HVAC_State,1);
		}
		if(KEY == 14)
		{
			if(LED_Auto == 0)
				LED_Auto = 1;
			else
				LED_Auto = 0;
			OLED_ShowNum(3,12,LED_Auto,1);
		}
		if(KEY == 16)
		{
			KEY = 0;
			Window_Mode = 'G';
			return 0;
		}
		KEY = 0;
	}
	
}
if(App_Mode == 3)
{
	OLED_Clear();
	OLED_ShowString(1,1,"Fan Config");
	OLED_ShowString(2,3,"State");
	OLED_ShowString(3,3,"Auto");
	OLED_ShowNum(2,12,Fan_State,1);
	while(1)
	{
		if(Key_scan())
		{
			KEY = Key_scan();
		}
		if(KEY == 13)
		{
			if(Fan_State == 0)
				Fan_State = 1;
			else
				Fan_State = 0;
			OLED_ShowNum(2,12,Fan_State,1);
		}
		if(KEY == 14)
		{
			if(LED_Auto == 0)
				LED_Auto = 1;
			else
				LED_Auto = 0;
			OLED_ShowNum(3,12,LED_Auto,1);
		}
		if(KEY == 16)
		{
			KEY = 0;
			Window_Mode = 'G';
			return 0;
		}
		KEY = 0;
	}
	
}
if(App_Mode == 4)
{
	OLED_Clear();
	OLED_ShowString(1,1,"InDooe Config");
	OLED_ShowString(2,3,"State");
	OLED_ShowString(3,3,"Auto");
	OLED_ShowNum(2,12,InDoorLights_State,1);
	while(1)
	{
		if(Key_scan())
		{
			KEY = Key_scan();
		}
		if(KEY == 13)
		{
			if(InDoorLights_State == 0)
				InDoorLights_State = 1;
			else
				InDoorLights_State = 0;
			OLED_ShowNum(2,12,InDoorLights_State,1);
		}
		if(KEY == 14)
		{
			if(LED_Auto == 0)
				LED_Auto = 1;
			else
				LED_Auto = 0;
			OLED_ShowNum(3,12,LED_Auto,1);
		}
		if(KEY == 16)
		{
			KEY = 0;
			Window_Mode = 'G';
			return 0;
		}
		KEY = 0;
	}
	
}
if(App_Mode == 5)
{
	OLED_Clear();
	OLED_ShowString(1,1,"OutDoor Config");
	OLED_ShowString(2,3,"State");
	OLED_ShowString(3,3,"Auto");
	OLED_ShowNum(2,12,OutDoorLights_State,1);
	while(1)
	{
		if(Key_scan())
		{
			KEY = Key_scan();
		}
		if(KEY == 13)
		{
			if(OutDoorLights_State == 0)
				OutDoorLights_State = 1;
			else
				OutDoorLights_State = 0;
			OLED_ShowNum(2,12,OutDoorLights_State,1);
		}
		if(KEY == 14)
		{
			if(LED_Auto == 0)
				LED_Auto = 1;
			else
				LED_Auto = 0;
			OLED_ShowNum(3,12,LED_Auto,1);
		}
		if(KEY == 16)
		{
			KEY = 0;
			Window_Mode = 'G';
			return 0;
		}
		KEY = 0;
	}
	
}
		}
		
		
		if(KEY == 16)
		{
			Window_Mode = 'D';
			KEY = 0;
			return 0;
		}
		KEY = 0;
	}
}






////////////////////////////////
void press_FR(void)		//刷指纹
{
	SearchResult seach;
	uint8_t ensure;
	uint8_t Finger_Error = 0;
	
	while(1)
	{
		ensure=PS_GetImage();
		if(ensure==0x00)//获取图像成功 
		{	
			ensure=PS_GenChar(CharBuffer1);
			if(ensure==0x00) //生成特征成功
			{
				ensure=PS_HighSpeedSearch(CharBuffer1,0,AS608Para.PS_max,&seach);
				if(ensure==0x00)//搜索成功
				{
					printf("刷指纹成功!\r\n");
					printf("确有此人：ID:%d  匹配得分:%d\r\n",seach.pageID,seach.mathscore);
					
					Secure = 1;
					Window_Mode = 'D';
					KEY = 17;
					
					break;
				}
				else
					Finger_Error ++;
			}
			else
				Finger_Error ++;
		}
		
		if(Finger_Error >= 5)
		{
			Window_Mode = 'A';
			printf("错误次数过多，即将返回菜单\r\n");
			Finger_Error = 0;
			break;
		}
	}
}

////////////////////////////
void Add_FR(void)	//录指纹
{
	uint8_t ensure ,processnum=0;
	uint16_t ID=0;
	
	OLED_Clear();
	OLED_ShowString(1,1,"Add Finger...");
	OLED_ShowString(3,1,"ID:  0");
	while(1)
	{
		KEY=Key_scan();
		if(KEY == 16)
		{
			Window_Mode = 'F';
			KEY = 0;
			return ;
		}
		if(KEY == 13)
		{
			if(ID>=AS608Para.PS_max)
				ID=0;
			else
				ID++;
			Delay_ms(20);
			OLED_ShowNum(3,4,ID,3);
		}
		if(KEY == 14)
		{
			if(ID == 0)
				ID = AS608Para.PS_max - 1;
			else
				ID--;
			Delay_ms(20);
			OLED_ShowNum(3,4,ID,3);
		}
		if(KEY == 15)//确定
		{
			while(1)
			{
				switch (processnum)
				{
					case 0:
						OLED_ShowString(4,1,"Please Press Figner.");		
						ensure=PS_GetImage();
						if(ensure==0x00) 
						{
							ensure=PS_GenChar(CharBuffer1);//生成特征
							if(ensure==0x00)
							{
								OLED_ShowString(4,1,"Figner1 OK...       ");
								processnum=1;//跳到第二步						
							}
							else 
								ShowErrMessage(ensure);				
						}
						else 
							ShowErrMessage(ensure);						
						break;



					case 1:
						OLED_ShowString(4,1,"Please Press Figner.");
						ensure=PS_GetImage();
						if(ensure==0x00) 
						{
							ensure=PS_GenChar(CharBuffer2);//生成特征
							if(ensure==0x00)
							{
								OLED_ShowString(4,1,"Figner2 OK...       ");
								processnum=2;//跳到第三步
							}
							else 
								ShowErrMessage(ensure);	
						}
						else 
							ShowErrMessage(ensure);		
						break;



					case 2:
						OLED_ShowString(4,1,"Figner1 and 2 Match.");
						ensure=PS_Match();
						if(ensure==0x00) 
						{
							OLED_ShowString(4,1,"Figner1 and 2 OK....");
							processnum=3;//跳到第四步
						}
						else 
						{
							OLED_ShowString(4,1,"Figner1 and 2 Error.");
							ShowErrMessage(ensure);
							processnum=0;//跳回第一步		
						}
						Delay_ms(1200);
						break;



					case 3:
						ensure=PS_RegModel();
						if(ensure==0x00) 
						{
							processnum=4;//跳到第五步
						}
						else 
						{
							processnum=0;
							ShowErrMessage(ensure);
						}
						Delay_ms(1200);
						break;
					
					
					
					case 4:	
						ensure=PS_StoreChar(CharBuffer2,ID);//储存模板
						if(ensure==0x00) 
						{			
							PS_ValidTempleteNum(&ValidN);//读库指纹个数
							OLED_Clear();
							OLED_ShowString(1,1,"Figner Save OK!     ");
							OLED_ShowString(2,1,"Cap:");
							OLED_ShowNum(2,2,AS608Para.PS_max-ValidN,3);
							Delay_ms(1500);
							KEY = 17;
							return ;
						}
						else
						{
							processnum=0;
							ShowErrMessage(ensure);
						}					
						break;
						
						
				}
				Delay_ms(400);
			}
		}
		
		KEY = 0;
	}
}

//////////////////////////////
void Del_FR(void)	//删除指纹
{
	uint8_t  ensure;
	uint16_t ID=0;
	
	//选择指纹ID
	OLED_Clear();
	OLED_ShowString(1,1,"Delete Finger...");
	OLED_ShowString(3,1,"ID:  0");
	
	while(1)
	{
		KEY=Key_scan();
		if(KEY == 16)
		{
			Window_Mode = 'F';
			KEY = 0;
			return ;
		}
		if(KEY == 13)
		{
			if(ID>=AS608Para.PS_max)
				ID=0;
			else
				ID++;
			Delay_ms(20);
			OLED_ShowNum(3,4,ID,3);
		}
		if(KEY == 14)
		{
			if(ID == 0)
				ID = AS608Para.PS_max - 1;
			else
				ID--;
			Delay_ms(20);
			OLED_ShowNum(3,4,ID,3);
		}
		if(KEY==15)//确定
		{
			ensure=PS_DeletChar(ID,1);//删除单个指纹
			if(ensure==0)
			{
				OLED_ShowString(4,1,"Delete OK!");
				Delay_ms(1000);
				OLED_ShowString(4,1,"                ");
				KEY = 17;
			}
			else
				ShowErrMessage(ensure);
			
			PS_ValidTempleteNum(&ValidN);//读库指纹个数
			OLED_ShowString(4,1,"Cap:");
			OLED_ShowNum(4,5,AS608Para.PS_max-ValidN,3);
			Delay_ms(1200);
			return ;
		}
		if(KEY == 16)
		{
			KEY = 17;
			return ;
		}
		if(KEY==66)//全部清空指纹数据
		{
			ensure=PS_Empty();//清空指纹库
		}
	
	}	
}

void APP_Sys(void)
{
	if(Curtain_Auto == 0){
		if(Curtain_State == 1)
			Curtain_On();
		else if(Curtain_State == 0)
			Curtain_Off();
	}
	if(Curtain_Auto == 1)
	{
		if(Rain_Get() == 1)
			Curtain_On();
		else
			Curtain_Off();
	}

	if(Fanlight_Auto == 0)
		{
		if(Fanlight_State == 1 && Fanlight_Flag <= 20)
			Fanlight_On();
		else if(Fanlight_State == 1 && Fanlight_Flag >= 20)
			Fanlight_Stop();
		
		if(Fanlight_State == 0 && Fanlight_Flag > 0)
			Fanlight_Off();
		else if(Fanlight_State == 0 && Fanlight_Flag == 0)
			Fanlight_Stop();
	}
	if(Fanlight_Auto == 1)
	{
		if(Fanlight_State == 1 && Fanlight_Flag <= 20)
			Fanlight_On();
		else if(Fanlight_State == 1 && Fanlight_Flag >= 20)
			Fanlight_Stop();
		
		if(Fanlight_State == 0 && Fanlight_Flag > 0)
			Fanlight_Off();
		else if(Fanlight_State == 0 && Fanlight_Flag == 0)
			Fanlight_Stop();
	}
	

if(LED_Auto == 0)
{
	if(InDoorLights_State == 1)
		InDoor_On();
	else
		InDoor_Off();
		
	if(OutDoorLights_State == 1)
		OutDoor_On();
	else
		OutDoor_Off();
		
	if(Fan_State == 1)
		Fan_On();
	else
		Fan_Off();
		
	if(HVAC_State == 1)
		HVAC_On();
	else
		HVAC_Off();
}
if(LED_Auto == 1)
{
	
}
	
}

void TIM5_IRQHandler(void)
{ 
	uint8_t len;
	if (TIM_GetITStatus(TIM5 ,TIM_IT_Update) == SET)//是更新中断
	{
		Wait++;
		
		if(Wait == 19||Wait == 18)
		{
			printf("%s",AT_PUB1);
		}
		if(Wait == 21)
		{
			printf("{ \"content\": {\"hum\":\"%d\",\"fumes\":\"%d\",\"tem\":\"%d\",\"light\":\"%d\",\"water\":\"%d\"} }",dht11_data[0],MQ2_Value,dht11_data[2],Light,Water);
			Wait = 0;
		}
		
		
		APP_Sys();
		DHT11_Flag = 1;
		MQ2_Flag = 1;
		
		Voice_Wait ++;
		
		if(Fanlight_Flag <= 20 && Fanlight_State == 1)
		{
			Fanlight_Flag ++;
		}
		if(Fanlight_Flag > 0 && Fanlight_State == 0)
		{
			Fanlight_Flag --;
		}
		
		Light = LightSensor_Get();
		Water = Rain_Get();
		
		
		
		
		if(Fanlight_Auto == 1)
			Fanlight_State = Light;	
		

		TIM_ClearITPendingBit(TIM5 ,TIM_IT_Update);  //清除TIM7更新中断标志    
	}
	
	
	if(USART_RX_STA&0x8000)
	{
		len=USART_RX_STA&0x3fff;
//		OLED_ShowNum (4,2,len,4);
//		OLED_ShowChar(4,8,USART_RX_BUF[55]);
		MQTT_State = USART_RX_BUF[55];
		USART_RX_STA=0;
	}
	switch(MQTT_State)
	{
		case '0': Fan_State = 0 ; break;
		case '1': InDoorLights_State = 1; break;
		case '2': InDoorLights_State = 0; break;
		case '3': OutDoorLights_State = 1; break;
		case '4': OutDoorLights_State = 0; break;
		case '5': Fanlight_State = 1; break;
		case '6': Fanlight_State = 0; break;
		case '7': Curtain_State = 1; break;
		case '8': Curtain_State = 0; break;
		case '9': Fan_State = 1; break;
		case 'a': Fanlight_Auto = 1; Curtain_Auto = 1; LED_Auto = 1; break;
		case 'b': Fanlight_Auto = 0; Curtain_Auto = 0; LED_Auto = 0; break;
	}

	
	if(PDin(15)&&Voice_Wait > 8)
	{
		Voice_Wait = 0;
		Fanlight_State = PDin(8);
		Fan_State = PDin(9);
		HVAC_State = PDin(10);
		Curtain_State = PDin(11); 
		InDoorLights_State = PDin(13);
		OutDoorLights_State = PDin(14);
	}
	
}

