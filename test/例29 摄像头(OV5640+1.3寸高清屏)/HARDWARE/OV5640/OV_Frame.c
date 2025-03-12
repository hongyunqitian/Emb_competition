
#include "OV_Frame.h"
#include "key.h"
#include "LCD.h"
#include "Dis_Picture.h" 
#include "Text.h"	
#include "GBK_LibDrive.h"	

#include "mpu.h"

#include "timer.h"
#include "ov5640.h"
#include "dcmi.h"

#include "usart.h"



extern	uint8_t Print_buf[32];	//消息缓存区

extern   uint8_t Key_Flag; //键值

//////////////////////////////////////////////////////////////////////////////////	 

/************************************************************************************************/
//OV5640--帧数据显示处理 驱动代码

//STM32H7工程模板-HAL库函数版本


 


/************************************************************************************************/							  
////////////////////////////////////////////////////////////////////////////////// 



/************************************************************************************************/

//OV5640 摄像头 驱动显示例程  使用1.3寸240x240高清显示屏


//STM32H7工程模板-HAL库函数版本


 


/************************************************************************************************/


u8 OV_mode=0;							//bit0:0,RGB565模式;1,JPEG模式

u16 yoffset=0;							//y方向的偏移量




#if  USE_HORIZONTAL  

#define RGB_Width    240 //根据屏幕方向，设置缓存大小和格式
#define RGB_Height	 240 //根据屏幕


#else

#define RGB_Width    240 //根据屏幕方向，设置缓存大小和格式
#define RGB_Height	 240//根据屏幕

#endif 


#define jpeg_buf_size   240*240+128		//定义JPEG数据缓存jpeg_buf的大小(240x240x4+128 字节)




//建立一个结构体--用于JPEG的共用缓冲区

union OVxxx
{
	 
	 uint16_t RGB_DATA[RGB_Height][RGB_Width];//缓存一屏幕数据
   uint32_t JPEG_DATA[jpeg_buf_size] ;  //JPEG数据缓存buf,定义在LCD帧缓存之后
 	
} OVxxx; 



u32 RGB_Line_Buf[2][RGB_Width];//RGB屏时,摄像头采用一行一行读取,定义行缓存


u32 jpeg_data_len=0; 			       //buf中的JPEG有效数据长度

u8 jpeg_data_ok=0;				       //JPEG数据采集完成标志





/************************************************************************************************/

//0,数据没有采集完;
//1,数据采集完了,但是还没处理;
//2,数据已经处理完成了,可以开始下一帧接收

//JPEG尺寸支持列表

//STM32H7工程模板-HAL库函数版本


 


/************************************************************************************************/


const u16 jpeg_img_size_tbl[][2]=
{
    //160,120,	//QQVGA
	  240,240,	//QVGA
    320,240,	//QVGA
    640,480,	//VGA
    800,600,	//SVGA
    1024,768,	//XGA
    1280,800,	//WXGA
    1440,900,	//WXGA+
    1280,1024,	//SXGA
    1600,1200,	//UXGA
    1920,1080,	//1080P
    2048,1536,	//QXGA
    2592,1944,	//500W
};





const u8*EFFECTS_TBL[7]= {"Normal","Cool","Warm","B&W","Yellowish ","Inverse","Greenish"};	//7种特效
const u8*JPEG_SIZE_TBL[12]= {"QQVGA","QVGA","VGA","SVGA","XGA","WXGA","WXGA+","SXGA","UXGA","1080P","QXGA","500W"}; //JPEG图片 12种尺寸


//建立一个结构体

union TData
{
	
   uint32_t B32_temp;
   uint8_t  B8_Temp[4];
	
} TData; 



/************************************************************************************************/
//用显示缓冲区数据进行刷屏操作

//STM32H7工程模板-HAL库函数版本


 


/************************************************************************************************/



  u16 Num_Dot;
  u16 Num_H;//行数
	u16 *R_Buf; //刷屏数据指针
	
static void  RGB_Refresh_LCD(void)
{
	  
		LCD_Set_Window(0,0,lcddev.width,lcddev.height);//设置全屏窗口
		
    LCD_SetCursor(0,0);              //设置屏幕显示起点	
	
    LCD_WR_REG(lcddev.wramcmd);	  
	
		for(Num_H=0;Num_H<lcddev.height;Num_H++)
		{
			
			R_Buf=&OVxxx.RGB_DATA[Num_H][0];
			
			for(Num_Dot=0;Num_Dot<lcddev.width;Num_Dot++)
			{
				
				LCD_WR_DATA16(*R_Buf);	
				R_Buf++;
				
			}
			
			Num_H++;//换行显示数据
			
			R_Buf=&OVxxx.RGB_DATA[Num_H][0];
			
			for(Num_Dot=0;Num_Dot<lcddev.width;Num_Dot++)
			{
				
				LCD_WR_DATA16(*R_Buf);	
				R_Buf++;
				

			}
 
	  }
	
	
}


/************************************************************************************************/
//处理JPEG数据
//当采集完一帧JPEG数据后,调用此函数,切换JPEG BUF.开始下一帧采集.

//STM32H7工程模板-HAL库函数版本


 


/************************************************************************************************/

volatile uint16_t  RGB_FrameNum=0;

volatile uint16_t  curline=0;							//摄像头输出数据,当前行编号

void jpeg_data_process(void)
{
    u16 i;
    u16 rlen;			//剩余数据长度
    u32 *pbuf;
	
		curline=0;	//行数复位

    if(OV_mode&0X01)	//只有在JPEG格式下,才需要做处理.
    {
        if(jpeg_data_ok==0)	//jpeg数据还未采集完?
        {
            DMA1_Stream1->CR&=~(1<<0);		//停止当前传输
					
            while(DMA1_Stream1->CR&0X01);	//等待DMA1_Stream1可配置
					
            rlen=jpeg_buf_size-DMA1_Stream1->NDTR;//得到剩余数据长度
				
					  jpeg_data_len+=rlen;			            //加上剩余长度
            
					  jpeg_data_ok=1; 				             //标记JPEG数据采集完成,等待其他函数处理
					
        }
        if(jpeg_data_ok==2)	//上一次的jpeg数据已经被处理了
        {
										
            DMA1_Stream1->NDTR=jpeg_buf_size;//传输长度为jpeg_buf_size*4字节
            DMA1_Stream1->CR|=1<<0;			     //重新传输
            jpeg_data_ok=0;					         //标记数据未采集
            jpeg_data_len=0;				         //数据重新开始
					
        }
				
    } 
		else
    {
			 
			RGB_FrameNum++;//帧数计数
      	
    }
}






/************************************************************************************************/
//JPEG测试
//JPEG数据,通过串口2发送给电脑.

//STM32H7工程模板-HAL库函数版本


 


/************************************************************************************************/

void JPEG_mode(void)
{
    u32 i,jpgstart,jpglen;
    u8  *p;
    
	  u8  headok=0;
	  u8  effect=0;
	  u8  contrast=2;
    u8 size=0;			//默认是QVGA 240*240尺寸

	   uart_init(460800);				       //串口1 初始化
	  //usart2_init(921600);			     //初始化串口2波特率为  921600
	  //
    LCD_Clear(WHITE);  //清屏
    	
    Draw_Font16B(30,50,BLUE," STM32H750 ");
    Draw_Font16B(30,70,BLUE,"OV5640 JPEG Mode");
	
//    Draw_Font16B(30,100,BLUE,"KEY1:Contrast");			//对比度
//    Draw_Font16B(30,120,BLUE,"KEY2:Auto Focus"); 		//执行自动对焦
//    Draw_Font16B(30,140,BLUE,"KEY2:Effects"); 			//特效
//    Draw_Font16B(30,160,BLUE,"KEY_UP:Size");				//分辨率设置
	
    sprintf((char*)Print_buf,"JPEG Size:%s",JPEG_SIZE_TBL[size]);
	
    Draw_Font16B(30,180,BLUE,Print_buf);					       //显示当前JPEG分辨率
	
    //自动对焦初始化
    OV5640_RGB565_Mode();	//RGB565模式
		
    OV5640_Focus_Init();

    OV5640_JPEG_Mode();		//JPEG模式

    OV5640_Light_Mode(0);	//自动模式
    OV5640_Color_Saturation(3); //色彩饱和度0
    OV5640_Brightness(4);     	//亮度0
    OV5640_Contrast(3);		      //对比度0
    OV5640_Sharpness(33);     	//自动锐度
    OV5640_Focus_Constant();    //启动持续对焦
    DCMI_Init();			          //DCMI配置
 		
    DCMI_DMA_Init( (u32)& OVxxx.JPEG_DATA, 0,jpeg_buf_size, DMA_MDATAALIGN_WORD, DMA_MINC_ENABLE);//DCMI DMA配置--不使用双缓冲区
		
    OV5640_OutSize_Set(4,0,jpeg_img_size_tbl[size][0],jpeg_img_size_tbl[size][1]);//设置输出尺寸
		
    DCMI_Start(); 		//启动传输
		
		
    while(1)
    {
        if(jpeg_data_ok==1)	//已经采集完一帧图像了
        {
            p=(u8*)OVxxx.JPEG_DATA;
					
//            printf("Jpeg_data:%d\r\n",jpeg_data_len*4);//打印帧率
					
            Draw_Font16B(30,210,BLUE,"Sending JPEG ..."); //提示正在传输数据
					
            jpglen=0;	//设置jpg文件大小为0
            headok=0;	//清除jpg头标记
					
            for(i=0; i<jpeg_data_len*4; i++) //查找0xFF,0xD8和0xFF,0xD9,获取jpg文件大小
            {
                if((p[i]==0XFF)&&(p[i+1]==0XD8))//找到FF D8
                {
                    jpgstart=i;
                    headok=1;	//标记找到jpg头(FF D8)
                }
                if((p[i]==0XFF)&&(p[i+1]==0XD9)&&headok)//找到头以后,再找FF D9
                {
                    jpglen=i-jpgstart+2;
                    break;
                }
            }
            if(jpglen)	//正常的jpeg数据
            {
                p+=jpgstart;			//偏移到0xFF,0xD8处
                for(i=0; i<jpglen; i++)	//发送整个jpg文件
                {
                    USART1->TDR=p[i];
                    while((USART1->ISR&0X40)==0);	//循环发送,直到发送完毕
//                    Key_Flag=KEY_Scan(0);   //获取键值
//                    if(Key_Flag)break;
                }
            }
						
						Key_Flag=KEY_Scan(0);   //获取键值
						
            if(Key_Flag)	//有按键按下,需要处理
            {

                Draw_Font16B(30,210,BLUE,"Quit Sending  ");//提示退出数据传输
							
                switch(Key_Flag)
                {
                case KEY1_PRES:	//对比度设置
                    contrast++;
                    if(contrast>6)contrast=0;
                    OV5640_Contrast(contrast);
                    sprintf((char*)Print_buf,"Contrast:%d",(signed char)contrast-3);
                    break;
                case KEY2_PRES:	//执行一次自动对焦
                    OV5640_Focus_Single();
                    break;
//                case KEY2_PRES:	//特效设置
//                    effect++;
//                    if(effect>6)effect=0;
//                    OV5640_Special_Effects(effect);//设置特效
//                    sprintf((char*)Print_buf,"%s",EFFECTS_TBL[effect]);
//                    break;
//                case WKUP_PRES:	//JPEG输出尺寸设置
//                    size++;
//                    if(size>11)size=0;
//                    OV5640_OutSize_Set(16,4,jpeg_img_size_tbl[size][0],jpeg_img_size_tbl[size][1]);//设置输出尺寸
//                    sprintf((char*)Print_buf,"JPEG Size:%s",JPEG_SIZE_TBL[size]);
//                    break;
                }
								
                LCD_Fill(30,180,239,190+16,WHITE);
								
                Draw_Font16B(30,180,BLUE,Print_buf);//显示提示内容
								
                delay_ms(800);
								
            } 
						
						else Draw_Font16B(30,210,BLUE,"Send complete!!");//提示传输结束设置
						
            jpeg_data_ok=2;	//标记jpeg数据处理完了,可以让DMA去采集下一帧了.
        }
    }
}



/************************************************************************************************/
//数据转存含税

//STM32H7工程模板-HAL库函数版本


 


/************************************************************************************************/

static void  Copy_RAM_Data(u16 *P1, u16 *P2, u16 Num)
{
	u16 i;
	
	for(i=0;i<Num;i++)
	{
		*P1++=*P2++;

	}
	
}



/************************************************************************************************/
//RGB屏数据接收回调函数

//STM32H7工程模板-HAL库函数版本


 


/************************************************************************************************/



void rgblcd_dcmi_rx_callback(void)
{
		
		if(DMA1_Stream1->CR&(1<<19))//DMA使用buf1,读取buf0
		{ 
   			
			Copy_RAM_Data(&OVxxx.RGB_DATA[curline][0], (u16*)RGB_Line_Buf[0], lcddev.width);
			
			if(curline<lcddev.height)++curline;
			
		}
		else 						//DMA使用buf0,读取buf1
		{
		
      Copy_RAM_Data(&OVxxx.RGB_DATA[curline][0], (u16*)RGB_Line_Buf[1], lcddev.width);	
			
      if(curline<lcddev.height)++curline;
			
		}

		
}




/************************************************************************************************/
//RGB565测试
//RGB数据直接显示在LCD上面

//STM32H7工程模板-HAL库函数版本


 


/************************************************************************************************/

u8 Key_N;

void RGB565_mode(void)
{
    
    float fac=0;
    u8 effect=0,contrast=2;
    u8 scale=1;		//默认是全尺寸缩放
    
    u16 outputheight=0;

    LCD_Clear(WHITE);
	    	
    Draw_Font16B(30,50,BLUE," STM32H750");
    Draw_Font16B(30,70,BLUE,"OV5640 RGB565 Mode");
	
//    Draw_Font16B(30,100,BLUE,"KEY1:Contrast");			//对比度
//    Draw_Font16B(30,120,BLUE,"KEY2:Auto Focus"); 		//执行自动对焦
//    LCD_ShowString(30,140,200,16,16,"KEY2:Effects"); 			//特效
//    LCD_ShowString(30,160,200,16,16,"KEY_UP:FullSize/Scale");	//1:1尺寸(显示真实尺寸)/全尺寸缩放
	
	
    //自动对焦初始化
    OV5640_RGB565_Mode();	//RGB565模式
    OV5640_Focus_Init();
    OV5640_Light_Mode(0);	//自动模式
    OV5640_Color_Saturation(3);//色彩饱和度0
    OV5640_Brightness(4);	//亮度0
    OV5640_Contrast(3);		//对比度0
    OV5640_Sharpness(33);	//自动锐度
    OV5640_Focus_Constant();//启动持续对焦
		
    DCMI_Init();			//DCMI配置


		dcmi_rx_callback=rgblcd_dcmi_rx_callback;//RGB屏接收数据回调函数
		
		DCMI_DMA_Init((u32)RGB_Line_Buf[0],(u32)RGB_Line_Buf[1],lcddev.width/2,DMA_MDATAALIGN_HALFWORD,DMA_MINC_ENABLE);//DCMI DMA配置 
		
		
//    TIM3->CR1&=~(0x01);		//关闭定时器3,关闭帧率统计，打开的话，RGB屏，在串口打印的时候，会抖

//    if(lcddev.height==1024)
//    {
//        yoffset=(lcddev.height-800)/2;
//        outputheight=800;
//        OV5640_WR_Reg(0x3035,0X51);//降低输出帧率，否则可能抖动
//			
//    } 
//		else if(lcddev.height==1280)
//    {
//        yoffset=(lcddev.height-600)/2;
//        outputheight=600;
//        OV5640_WR_Reg(0x3035,0X51);//降低输出帧率，否则可能抖动
//    }
//		else
//    {
//        yoffset=0;
//        outputheight=lcddev.height;
        OV5640_WR_Reg(0x3035,0X51);//降低输出帧率，否则可能抖动
//    }
		
		    
		
    OV5640_OutSize_Set(4,0,lcddev.width,lcddev.height);		//满屏缩放显示
						
    DCMI_Start(); 			//启动传输
			
    LCD_Clear(BLACK);
		
    while(1)
    {
			
        Key_Flag=KEY_Scan(0);   //获取键值
       
			  if(Key_Flag==KEY1_PRES)//按键1切换功能
				{
						Key_N++;
						if(Key_N>=3)Key_N=0;
		
					if(Key_N==1)
						{
							Draw_Font16B(30,50,BLUE,"OV5640: DCMI_Stop");//显示提示内容
					    delay_ms(800);
							
							DCMI_Stop(); //非KEY1按下,停止显示
						}
					else if(Key_N==2) 
						{	
							Draw_Font16B(30,50,BLUE,"OV5640: DCMI_Start");//显示提示内容
					    delay_ms(800);
							
							DCMI_Start();	//重新开始传输
						}					
				}
			 else if(Key_Flag==KEY2_PRES)//按键1切换功能
				{
					Draw_Font16B(30,50,BLUE,"OV5640: Focus");//显示提示内容
					
          delay_ms(800);
					
					OV5640_Focus_Single(); //执行一次自动对焦
				}
				
				
////////////////////        if(Key_Flag)
////////////////////        {
////////////////////					
////////////////////					
////////////////////            if(Key_Flag!=KEY1_PRES)  //没有很多按键
////////////////////							{
////////////////////								
////////////////////							  DCMI_Stop(); //非KEY1按下,停止显示
////////////////////								
////////////////////						   }
////////////////////							
////////////////////            switch(Key_Flag)
////////////////////            {
////////////////////							
////////////////////							
//////////////////////							case KEY1_PRES:	//对比度设置
//////////////////////									contrast++;
//////////////////////									if(contrast>6)contrast=0;
//////////////////////									OV5640_Contrast(contrast);
//////////////////////									sprintf((char*)Print_buf,"Contrast:%d",(signed char)contrast-3);
//////////////////////									break;
////////////////////							case KEY2_PRES:	//执行一次自动对焦
////////////////////									OV5640_Focus_Single();
////////////////////									break;
////////////////////							
////////////////////							
//////////////////////            case KEY2_PRES:	//特效设置
//////////////////////                effect++;
//////////////////////                if(effect>6)effect=0;
//////////////////////                OV5640_Special_Effects(effect);//设置特效
//////////////////////                sprintf((char*)Print_buf,"%s",EFFECTS_TBL[effect]);
//////////////////////                break;
//////////////////////            case WKUP_PRES:	//1:1尺寸(显示真实尺寸)/缩放
//////////////////////                scale=!scale;
//////////////////////                if(scale==0)
//////////////////////                {
//////////////////////                    fac=(float)800/outputheight;	//得到比例因子
//////////////////////                    OV5640_OutSize_Set((1280-fac*lcddev.width)/2,(800-fac*outputheight)/2,lcddev.width,outputheight);
//////////////////////                    sprintf((char*)Print_buf,"Full Size 1:1");
//////////////////////                } else
//////////////////////                {
//////////////////////                    OV5640_OutSize_Set(4,0,lcddev.width,outputheight);
//////////////////////                    sprintf((char*)Print_buf,"Scale");
//////////////////////                }
//////////////////////                break;
////////////////////            }
////////////////////            if(Key_Flag!=KEY1_PRES)	//非KEY1按下
////////////////////            {
////////////////////                Draw_Font16B(30,50,BLUE,Print_buf);//显示提示内容
////////////////////                delay_ms(800);
////////////////////                DCMI_Start();	//重新开始传输
////////////////////            }
////////////////////        }
        //delay_ms(10);
				
				 if(RGB_FrameNum>0)//有数据帧的时候
				 {
					 RGB_FrameNum=0;//有一帧数据
					 RGB_Refresh_LCD();//根据帧数据，进行刷屏
				 }
				 
	    }
}




































/************************************************************************************************/

//STM32H7工程模板-HAL库函数版本


 


/************************************************************************************************/





