#include "as608.h"

#include "stm32f4xx_conf.h"



////////////////////////////////////////////////////////////////////////////////////

extern uint16_t USART3_RX_STA;

//通用定时器中断初始化
//这里始终选择为APB1的2倍，而APB1为36M
//arr：自动重装值。
//psc：时钟预分频数		 
void TIM7_Int_Init(uint16_t arr,uint16_t psc)
{	
	NVIC_InitTypeDef NVIC_InitStructure;
	TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;

	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM7, ENABLE);//TIM7时钟使能    
	
	//定时器TIM7初始化
	TIM_TimeBaseStructure.TIM_Period = arr; //设置在下一个更新事件装入活动的自动重装载寄存器周期的值	
	TIM_TimeBaseStructure.TIM_Prescaler = psc; //设置用来作为TIMx时钟频率除数的预分频值
	TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1; //设置时钟分割:TDTS = Tck_tim
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;  //TIM向上计数模式
	TIM_TimeBaseInit(TIM7 ,&TIM_TimeBaseStructure); //根据指定的参数初始化TIMx的时间基数单位
 
	TIM_ITConfig(TIM7 ,TIM_IT_Update,ENABLE ); //使能指定的TIM7中断,允许更新中断
   
	TIM_Cmd(TIM7 ,ENABLE);//使能定时器7
	
	NVIC_InitStructure.NVIC_IRQChannel = TIM7_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority= 0;//抢占优先级0
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;		//子优先级1
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;			//IRQ通道使能
	NVIC_Init(&NVIC_InitStructure);	//根据指定的参数初始化VIC寄存器
	
}

//定时器7中断服务程序		    
void TIM7_IRQHandler(void)
{ 	
	if (TIM_GetITStatus(TIM7 ,TIM_IT_Update) != RESET)//是更新中断
	{	 			   
		USART3_RX_STA |= 1<<15;	//标记接收完成
		TIM_ClearITPendingBit(TIM7 ,TIM_IT_Update);  //清除TIM7更新中断标志    
		TIM_Cmd(TIM7 ,DISABLE);  //关闭TIM7 
	}	    
}

////////////////////////////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////////////////////////////

//串口接收缓存区 	
uint8_t USART3_RX_BUF[USART3_MAX_RECV_LEN]; 	//接收缓冲,最大USART3_MAX_RECV_LEN个字节.
uint8_t  USART3_TX_BUF[USART3_MAX_SEND_LEN]; //发送缓冲,最大USART3_MAX_SEND_LEN字节


//通过判断接收连续2个字符之间的时间差不大于10ms来决定是不是一次连续的数据.
//如果2个字符接收间隔超过10ms,则认为不是1次连续数据.也就是超过10ms没有接收到
//任何数据,则表示此次接收完毕.
//接收到的数据状态
//[15]:0,没有接收到数据;1,接收到了一批数据.
//[14:0]:接收到的数据长度
uint16_t USART3_RX_STA=0;  

void USART3_Init(uint32_t bound)
{

  	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;
	NVIC_InitTypeDef NVIC_InitStructure;
	 
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB,ENABLE); //使能GPIOB时钟
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3,ENABLE);//使能USART3时钟	
	
	//串口3对应引脚复用映射
	GPIO_PinAFConfig(GPIOB,GPIO_PinSource10,GPIO_AF_USART3); 
	GPIO_PinAFConfig(GPIOB,GPIO_PinSource11,GPIO_AF_USART3); 
	
  	//USART3端口配置
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10|GPIO_Pin_11 ; 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;//复用功能
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;	//速度50MHz
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP; //推挽复用输出
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP; //上拉
	GPIO_Init(GPIOB,&GPIO_InitStructure); 
  
	//Usart3 NVIC 配置
  	NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority=2 ;//抢占优先级0
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 3;		//子优先级0
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;			//IRQ通道使能
	NVIC_Init(&NVIC_InitStructure);	//根据指定的参数初始化VIC寄存器

   	//USART3 初始化设置
	USART_InitStructure.USART_BaudRate = bound;//串口波特率
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;//字长为8位数据格式
	USART_InitStructure.USART_StopBits = USART_StopBits_1;//一个停止位
	USART_InitStructure.USART_Parity = USART_Parity_No;//无奇偶校验位
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;//无硬件数据流控制
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;	//收发模式
  	USART_Init(USART3, &USART_InitStructure); //初始化串口3

  	USART_ITConfig(USART3, USART_IT_RXNE, ENABLE);//开启串口接受中断
  	
	USART_Cmd(USART3, ENABLE);                    //使能串口3 	
	
	TIM7_Int_Init(100-1,8400-1);	//10ms中断一次
	USART3_RX_STA=0;		//清零
	
	
//	TIM_Cmd(TIM7,DISABLE);			//关闭定时器7
}

void USART3_IRQHandler( void )
{	
	uint8_t res;	      
	if(USART_GetITStatus(USART3, USART_IT_RXNE) != RESET)//接收到数据
	{	 
		res =USART_ReceiveData(USART3);		 
		if((USART3_RX_STA&(1<<15))==0)//接收完的一批数据,还没有被处理,则不再接收其他数据
		{ 
			if(USART3_RX_STA<USART3_MAX_RECV_LEN)	//还可以接收数据
			{
				TIM_SetCounter(TIM7,0);//计数器清空          				//计数器清空
				if(USART3_RX_STA==0) 				//使能定时器7的中断 
				{
					TIM_Cmd(TIM7,ENABLE);//使能定时器7
				}
				USART3_RX_BUF[USART3_RX_STA++]=res;	//记录接收到的值	 
			}
			else 
			{
				USART3_RX_STA|=1<<15;				//强制标记接收完成
			} 
		}
	}  			
}


//串口3,printf 函数
//确保一次发送数据不超过USART3_MAX_SEND_LEN字节
void usart3_printf(char* fmt,...)  
{  
	uint16_t i,j; 
	va_list ap; 
	va_start(ap,fmt);
	vsprintf((char*)USART3_TX_BUF,fmt,ap);
	va_end(ap);
	i=strlen((const char*)USART3_TX_BUF);		//此次发送数据的长度
	for(j=0;j<i;j++)							//循环发送数据
	{
		while(USART_GetFlagStatus(USART3,USART_FLAG_TC)==RESET); //循环发送,直到发送完毕   
		USART_SendData(USART3,USART3_TX_BUF[j]); 
	} 
}

////////////////////////////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////////////////////////////

uint32_t AS608Addr = 0XFFFFFFFF; //默认

//串口发送一个字节
static void MYUSART_SendData(uint8_t data)
{
	while((USART3->SR&0X40)==0); 
	USART3->DR = data;
}

//发送包头
static void SendHead(void)
{
	MYUSART_SendData(0xEF);
	MYUSART_SendData(0x01);
}
//发送地址
static void SendAddr(void)
{
	MYUSART_SendData(AS608Addr>>24);
	MYUSART_SendData(AS608Addr>>16);
	MYUSART_SendData(AS608Addr>>8);
	MYUSART_SendData(AS608Addr);
}
//发送包标识,
static void SendFlag(uint8_t flag)
{
	MYUSART_SendData(flag);
}
//发送包长度
static void SendLength(int length)
{
	MYUSART_SendData(length>>8);
	MYUSART_SendData(length);
}
//发送指令码
static void Sendcmd(uint8_t cmd)
{
	MYUSART_SendData(cmd);
}
//发送校验和
static void SendCheck(uint16_t check)
{
	MYUSART_SendData(check>>8);
	MYUSART_SendData(check);
}

//与AS608握手 PS_HandShake
//参数: PS_Addr地址指针
//说明: 模块返新地址（正确地址）	
uint8_t PS_HandShake(uint32_t *PS_Addr)
{
	SendHead();
	SendAddr();
	MYUSART_SendData(0X01);
	MYUSART_SendData(0X00);
	MYUSART_SendData(0X00);	
	Delay_ms(200);
	if(USART3_RX_STA&0X8000)//接收到数据
	{		
		//判断是不是模块返回的应答包
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

//判断中断接收的数组有没有应答包
//waittime为等待中断接收数据的时间（单位1ms）
//返回值：数据包首地址
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
		if(USART3_RX_STA&0X8000)//接收到一次数据
		{
			USART3_RX_STA=0;
			data=strstr((const char*)USART3_RX_BUF,(const char*)str);
			if(data)
				return (uint8_t*)data;	
		}
	}
	return 0;
}

//读有效模板个数 PS_ValidTempleteNum
//功能：读有效模板个数
//参数: 无
//说明: 模块返回确认字+有效模板个数ValidN
uint8_t PS_ValidTempleteNum(uint16_t *ValidN)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//命令包标识
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
		printf("\r\n有效指纹个数=%d",(data[10]<<8)+data[11]);
	}
	else
		printf("\r\n%s",EnsureMessage(ensure));
	return ensure;
}

//模块应答包确认码信息解析
//功能：解析确认码错误信息返回信息
//参数: ensure
const char *EnsureMessage(uint8_t ensure) 
{
	const char *p;
	switch(ensure)
	{
		case  0x00:
			p="OK";break;		
		case  0x01:
			p="数据包接收错误";break;
		case  0x02:
			p="传感器上没有手指";break;
		case  0x03:
			p="录入指纹图像失败";break;
		case  0x04:
			p="指纹图像太干、太淡而生不成特征";break;
		case  0x05:
			p="指纹图像太湿、太糊而生不成特征";break;
		case  0x06:
			p="指纹图像太乱而生不成特征";break;
		case  0x07:
			p="指纹图像正常，但特征点太少（或面积太小）而生不成特征";break;
		case  0x08:
			p="指纹不匹配";break;
		case  0x09:
			p="没搜索到指纹";break;
		case  0x0a:
			p="特征合并失败";break;
		case  0x0b:
			p="访问指纹库时地址序号超出指纹库范围";
		case  0x10:
			p="删除模板失败";break;
		case  0x11:
			p="清空指纹库失败";break;	
		case  0x15:
			p="缓冲区内没有有效原始图而生不成图像";break;
		case  0x18:
			p="读写 FLASH 出错";break;
		case  0x19:
			p="未定义错误";break;
		case  0x1a:
			p="无效寄存器号";break;
		case  0x1b:
			p="寄存器设定内容错误";break;
		case  0x1c:
			p="记事本页码指定错误";break;
		case  0x1f:
			p="指纹库满";break;
		case  0x20:
			p="地址错误";break;
		default :
			p="模块返回确认码有误";break;
	}
 return p;	
}

//读系统基本参数 PS_ReadSysPara
//功能:  读取模块的基本参数（波特率，包大小等)
//参数:  无
//说明:  模块返回确认字 + 基本参数（16bytes）
uint8_t PS_ReadSysPara(SysPara *p)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//命令包标识
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
		printf("\r\n模块最大指纹容量=%d",p->PS_max);
		printf("\r\n对比等级=%d",p->PS_level);
		printf("\r\n地址=%x",p->PS_addr);
		printf("\r\n波特率=%d",p->PS_N*9600);
	}
	else 
			printf("\r\n%s",EnsureMessage(ensure));
	return ensure;
}

//录入图像 PS_GetImage
//功能:探测手指，探测到后录入指纹图像存于ImageBuffer。 
//模块返回确认字
uint8_t PS_GetImage(void)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//命令包标识
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

//生成特征 PS_GenChar
//功能:将ImageBuffer中的原始图像生成指纹特征文件存于CharBuffer1或CharBuffer2			 
//参数:BufferID --> charBuffer1:0x01	charBuffer1:0x02												
//模块返回确认字
uint8_t PS_GenChar(uint8_t BufferID)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//命令包标识
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

//精确比对两枚指纹特征 PS_Match
//功能:精确比对CharBuffer1 与CharBuffer2 中的特征文件 
//模块返回确认字
uint8_t PS_Match(void)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//命令包标识
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

//搜索指纹 PS_Search
//功能:以CharBuffer1或CharBuffer2中的特征文件搜索整个或部分指纹库.若搜索到，则返回页码。			
//参数:  BufferID @ref CharBuffer1	CharBuffer2
//说明:  模块返回确认字，页码（相配指纹模板）
uint8_t PS_Search(uint8_t BufferID,uint16_t StartPage,uint16_t PageNum,SearchResult *p)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//命令包标识
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

//合并特征（生成模板）PS_RegModel
//功能:将CharBuffer1与CharBuffer2中的特征文件合并生成 模板,结果存于CharBuffer1与CharBuffer2	
//说明:  模块返回确认字
uint8_t PS_RegModel(void)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//命令包标识
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

//储存模板 PS_StoreChar
//功能:将 CharBuffer1 或 CharBuffer2 中的模板文件存到 PageID 号flash数据库位置。			
//参数:  BufferID @ref charBuffer1:0x01	charBuffer1:0x02
//       PageID（指纹库位置号）
//说明:  模块返回确认字
uint8_t PS_StoreChar(uint8_t BufferID,uint16_t PageID)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//命令包标识
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

//删除模板 PS_DeletChar
//功能:  删除flash数据库中指定ID号开始的N个指纹模板
//参数:  PageID(指纹库模板号)，N删除的模板个数。
//说明:  模块返回确认字
uint8_t PS_DeletChar(uint16_t PageID,uint16_t N)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//命令包标识
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

//清空指纹库 PS_Empty
//功能:  删除flash数据库中所有指纹模板
//参数:  无
//说明:  模块返回确认字
uint8_t PS_Empty(void)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//命令包标识
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

//写系统寄存器 PS_WriteReg
//功能:  写模块寄存器
//参数:  寄存器序号RegNum:4\5\6
//说明:  模块返回确认字
uint8_t PS_WriteReg(uint8_t RegNum,uint8_t DATA)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//命令包标识
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
		printf("\r\n设置参数成功！");
	else
		printf("\r\n%s",EnsureMessage(ensure));
	return ensure;
}

//设置模块地址 PS_SetAddr
//功能:  设置模块地址
//参数:  PS_addr
//说明:  模块返回确认字
uint8_t PS_SetAddr(uint32_t PS_addr)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//命令包标识
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
	AS608Addr=PS_addr;//发送完指令，更换地址
	data=JudgeStr(2000);
	if(data)
		ensure=data[9];
	else
		ensure=0xff;	
		AS608Addr = PS_addr;
	if(ensure==0x00)
		printf("\r\n设置地址成功！");
	else
		printf("\r\n%s",EnsureMessage(ensure));
	return ensure;
}

//功能： 模块内部为用户开辟了256bytes的FLASH空间用于存用户记事本,
//	该记事本逻辑上被分成 16 个页。
//参数:  NotePageNum(0~15),Byte32(要写入内容，32个字节)
//说明:  模块返回确认字
uint8_t PS_WriteNotepad(uint8_t NotePageNum,uint8_t *Byte32)
{
	uint16_t temp;
	uint8_t  ensure,i;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//命令包标识
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

//读记事PS_ReadNotepad
//功能：  读取FLASH用户区的128bytes数据
//参数:  NotePageNum(0~15)
//说明:  模块返回确认字+用户信息
uint8_t PS_ReadNotepad(uint8_t NotePageNum,uint8_t *Byte32)
{
	uint16_t temp;
	uint8_t  ensure,i;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//命令包标识
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

//高速搜索PS_HighSpeedSearch
//功能：以 CharBuffer1或CharBuffer2中的特征文件高速搜索整个或部分指纹库。
//		  若搜索到，则返回页码,该指令对于的确存在于指纹库中 ，且登录时质量
//		  很好的指纹，会很快给出搜索结果。
//参数:  BufferID， StartPage(起始页)，PageNum（页数）
//说明:  模块返回确认字+页码（相配指纹模板）
uint8_t PS_HighSpeedSearch(uint8_t BufferID,uint16_t StartPage,uint16_t PageNum,SearchResult *p)
{
	uint16_t temp;
	uint8_t  ensure;
	uint8_t  *data;
	SendHead();
	SendAddr();
	SendFlag(0x01);//命令包标识
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

////结构体定义
//typedef struct
//{
//	uint8_t mode;//模式，0：默认刷指纹模式，1：添加指纹，2：删除指纹
//}_finger;
//extern _finger finger;

//_finger finger;


//#define AS608_baud  115200//通信波特率，根据指纹模块波特率更改

//uint16_t ValidN;//模块内有效指纹个数
//SysPara AS608Para;//指纹模块AS608参数


//显示确认码错误信息
void ShowErrMessage(uint8_t ensure)
{
	printf("%s\r\n",EnsureMessage(ensure));
}


////刷指纹
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
//		if(ensure==0x00)//获取图像成功 
//		{	
//			ensure=PS_GenChar(CharBuffer1);
//			if(ensure==0x00) //生成特征成功
//			{
//				ensure=PS_HighSpeedSearch(CharBuffer1,0,AS608Para.PS_max,&seach);
//				if(ensure==0x00)//搜索成功
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
//		if(key==KEY1_PRESS)//当KEY1键按下退出主菜单，进入设置菜单界面
//		{
//			finger.mode=5;
//			break;
//		}
//		else if(key==KEY2_PRESS)//手动开锁
//		{
//			OLED_Clear();
//			OLED_ShowString(0,0,"Open Success!",16);
//			OLED_Refresh_Gram();
//			break;
//		}
//	}
//}

////录指纹
//void Add_FR(void)
//{
//	uint8_t ensure ,processnum=0;
//	uint16_t ID=0;
//	uint8_t key=0;
//	
//	//选择指纹ID
//	OLED_Clear();
//	OLED_ShowString(0,0,"Add Finger...",16);
//	OLED_ShowString(0,20,"ID:  0",16);
//	OLED_Refresh_Gram();
//	while(1)
//	{
//		key=KEY_Scan(0);
//		if(key==KEY_UP_PRESS)//返回主界面
//		{
//			break;
//		}
//		else if(key==KEY1_PRESS)//修改ID
//		{
//			ID++;
//			if(ID>=AS608Para.PS_max)ID=0;
//			OLED_ShowNum(3*8,20,ID,3,16);
//			OLED_Refresh_Gram();
//		}
//		else if(key==KEY0_PRESS)//确定
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
//							ensure=PS_GenChar(CharBuffer1);//生成特征
//							if(ensure==0x00)
//							{
//								OLED_ShowString(0,40,"Figner1 OK...       ",12);
//								OLED_Refresh_Gram();
//								processnum=1;//跳到第二步						
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
//							ensure=PS_GenChar(CharBuffer2);//生成特征
//							if(ensure==0x00)
//							{
//								OLED_ShowString(0,40,"Figner2 OK...       ",12);
//								OLED_Refresh_Gram();
//								processnum=2;//跳到第三步
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
//							processnum=3;//跳到第四步
//						}
//						else 
//						{
//							OLED_ShowString(0,40,"Figner1 and 2 Error.",12);
//							OLED_Refresh_Gram();
//							ShowErrMessage(ensure);
//							processnum=0;//跳回第一步		
//						}
//						delay_ms(1200);
//						break;



//					case 3:
//						ensure=PS_RegModel();
//						if(ensure==0x00) 
//						{
//							processnum=4;//跳到第五步
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
//						ensure=PS_StoreChar(CharBuffer2,ID);//储存模板
//						if(ensure==0x00) 
//						{			
//							PS_ValidTempleteNum(&ValidN);//读库指纹个数
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

////删除指纹
//void Del_FR(void)
//{
//	uint8_t  ensure;
//	uint8_t key=0;
//	uint16_t ID=0;
//	
//	//选择指纹ID
//	OLED_Clear();
//	OLED_ShowString(0,0,"Delete Finger...",16);
//	OLED_ShowString(0,20,"ID:  0",16);
//	OLED_Refresh_Gram();
//	
//	while(1)
//	{
//		key=KEY_Scan(0);
//		if(key==KEY_UP_PRESS)//返回主界面
//		{
//			break;
//		}
//		else if(key==KEY1_PRESS)//修改ID
//		{
//			ID++;
//			if(ID>=AS608Para.PS_max)ID=0;
//			OLED_ShowNum(3*8,20,ID,3,16);
//			OLED_Refresh_Gram();
//		}
//		else if(key==KEY0_PRESS)//确定
//		{
//			ensure=PS_DeletChar(ID,1);//删除单个指纹
//			if(ensure==0)
//			{
//				OLED_ShowString(0,40,"Delete OK!",12);
//				OLED_Refresh_Gram();
//			}
//			else
//				ShowErrMessage(ensure);
//			
//			delay_ms(1200);
//			PS_ValidTempleteNum(&ValidN);//读库指纹个数
//			OLED_ShowString(0,52,"Cap:",12);
//			OLED_ShowNum(4*6,52,AS608Para.PS_max-ValidN,3,12);
//			OLED_Refresh_Gram();
//			return ;
//		}
//		else if(key==KEY2_PRESS)//全部清空指纹数据
//		{
////			ensure=PS_Empty();//清空指纹库
//		}
//	}	

//}


////主菜单显示
//void main_window_show(void)
//{
//	uint8_t strbuf[20];
//	uint8_t ensure=0;

//MENU:	
//	//默认刷指纹模式
//	if(finger.mode==0)
//	{
//		OLED_Clear();
//		OLED_ShowString(20,0,"FingerPrint",16);
//		while(PS_HandShake(&AS608Addr))//与AS608模块握手
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
//		ensure=PS_ValidTempleteNum(&ValidN);//读库指纹个数
//		if(ensure!=0x00)
//			ShowErrMessage(ensure);//显示确认码错误信息
//		
//		ensure=PS_ReadSysPara(&AS608Para);  //读参数
//		if(ensure==0x00)
//		{
//			sprintf((char *)strbuf,"Cap:%d  Level:%d",AS608Para.PS_max-ValidN,AS608Para.PS_level);
//			OLED_ShowString(0,50,strbuf,12);
//			
//		}
//		else
//			ShowErrMessage(ensure);
//		
//		OLED_Refresh_Gram();  //刷新GRAM数组
//		
//		while(1)
//		{
//			press_FR();//刷指纹
//			goto MENU;//回到主菜单界面
//		}
//	}	
//}

////设置菜单显示
//void setup_window_show(void)
//{
//	uint8_t key=0;
//	uint8_t mode=0;
//	
//	//指纹设置模式
//	if(finger.mode!=0)
//	{
//		OLED_Clear();
//		OLED_ShowString(30,0,"FingerPrint",16);
//		OLED_ShowString(40,20,"Add Finger",16);
//		OLED_ShowString(40,40,"Delete",16);
//		OLED_ShowString(0,20,"-->",16);
//		OLED_Refresh_Gram();  //刷新GRAM数组
//				
//		while(1)
//		{
//			key=KEY_Scan(0);
//			if(key==KEY1_PRESS)//选择模式
//			{
//				mode++;
//				OLED_ShowString(0,(mode)*20,"   ",16);//清除上次箭头指向
//				if(mode>=2)mode=0;
//				OLED_ShowString(0,(mode+1)*20,"-->",16);//箭头指向
//				OLED_Refresh_Gram();
//			}
//			else if(key==KEY_UP_PRESS)//返回主菜单
//			{
//				finger.mode=0;
//				break;
//			}
//			else if(key==KEY0_PRESS)//确认
//			{
//				finger.mode=mode+1;
//			}
//			//添加指纹
//			if(finger.mode==1)
//			{
//				Add_FR();
//				mode=0;
//				finger.mode=5;
//				//返回上一级菜单
//				OLED_Clear();
//				OLED_ShowString(30,0,"FingerPrint",16);
//				OLED_ShowString(40,20,"Add Finger",16);
//				OLED_ShowString(40,40,"Delete",16);
//				OLED_ShowString(0,20,"-->",16);
//				OLED_Refresh_Gram();  //刷新GRAM数组
//			}
//			//删除指纹
//			else if(finger.mode==2)
//			{
//				Del_FR();
//				mode=0;
//				finger.mode=5;
//				//返回上一级菜单
//				OLED_Clear();
//				OLED_ShowString(30,0,"FingerPrint",16);
//				OLED_ShowString(40,20,"Add Finger",16);
//				OLED_ShowString(40,40,"Delete",16);
//				OLED_ShowString(0,20,"-->",16);

//				OLED_Refresh_Gram();  //刷新GRAM数组
//			}
//		}
//	}
//}

////AS608指纹锁
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
