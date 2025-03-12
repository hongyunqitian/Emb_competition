
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



extern	uint8_t Print_buf[32];	//��Ϣ������

extern   uint8_t Key_Flag; //��ֵ

//////////////////////////////////////////////////////////////////////////////////	 

/************************************************************************************************/
//OV5640--֡������ʾ���� ��������

//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/							  
////////////////////////////////////////////////////////////////////////////////// 



/************************************************************************************************/

//OV5640 ����ͷ ������ʾ����  ʹ��1.3��240x240������ʾ��


//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/


u8 OV_mode=0;							//bit0:0,RGB565ģʽ;1,JPEGģʽ

u16 yoffset=0;							//y�����ƫ����




#if  USE_HORIZONTAL  

#define RGB_Width    240 //������Ļ�������û����С�͸�ʽ
#define RGB_Height	 240 //������Ļ


#else

#define RGB_Width    240 //������Ļ�������û����С�͸�ʽ
#define RGB_Height	 240//������Ļ

#endif 


#define jpeg_buf_size   240*240+128		//����JPEG���ݻ���jpeg_buf�Ĵ�С(240x240x4+128 �ֽ�)




//����һ���ṹ��--����JPEG�Ĺ��û�����

union OVxxx
{
	 
	 uint16_t RGB_DATA[RGB_Height][RGB_Width];//����һ��Ļ����
   uint32_t JPEG_DATA[jpeg_buf_size] ;  //JPEG���ݻ���buf,������LCD֡����֮��
 	
} OVxxx; 



u32 RGB_Line_Buf[2][RGB_Width];//RGB��ʱ,����ͷ����һ��һ�ж�ȡ,�����л���


u32 jpeg_data_len=0; 			       //buf�е�JPEG��Ч���ݳ���

u8 jpeg_data_ok=0;				       //JPEG���ݲɼ���ɱ�־





/************************************************************************************************/

//0,����û�вɼ���;
//1,���ݲɼ�����,���ǻ�û����;
//2,�����Ѿ����������,���Կ�ʼ��һ֡����

//JPEG�ߴ�֧���б�

//STM32H7����ģ��-HAL�⺯���汾


 


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





const u8*EFFECTS_TBL[7]= {"Normal","Cool","Warm","B&W","Yellowish ","Inverse","Greenish"};	//7����Ч
const u8*JPEG_SIZE_TBL[12]= {"QQVGA","QVGA","VGA","SVGA","XGA","WXGA","WXGA+","SXGA","UXGA","1080P","QXGA","500W"}; //JPEGͼƬ 12�ֳߴ�


//����һ���ṹ��

union TData
{
	
   uint32_t B32_temp;
   uint8_t  B8_Temp[4];
	
} TData; 



/************************************************************************************************/
//����ʾ���������ݽ���ˢ������

//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/



  u16 Num_Dot;
  u16 Num_H;//����
	u16 *R_Buf; //ˢ������ָ��
	
static void  RGB_Refresh_LCD(void)
{
	  
		LCD_Set_Window(0,0,lcddev.width,lcddev.height);//����ȫ������
		
    LCD_SetCursor(0,0);              //������Ļ��ʾ���	
	
    LCD_WR_REG(lcddev.wramcmd);	  
	
		for(Num_H=0;Num_H<lcddev.height;Num_H++)
		{
			
			R_Buf=&OVxxx.RGB_DATA[Num_H][0];
			
			for(Num_Dot=0;Num_Dot<lcddev.width;Num_Dot++)
			{
				
				LCD_WR_DATA16(*R_Buf);	
				R_Buf++;
				
			}
			
			Num_H++;//������ʾ����
			
			R_Buf=&OVxxx.RGB_DATA[Num_H][0];
			
			for(Num_Dot=0;Num_Dot<lcddev.width;Num_Dot++)
			{
				
				LCD_WR_DATA16(*R_Buf);	
				R_Buf++;
				

			}
 
	  }
	
	
}


/************************************************************************************************/
//����JPEG����
//���ɼ���һ֡JPEG���ݺ�,���ô˺���,�л�JPEG BUF.��ʼ��һ֡�ɼ�.

//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/

volatile uint16_t  RGB_FrameNum=0;

volatile uint16_t  curline=0;							//����ͷ�������,��ǰ�б��

void jpeg_data_process(void)
{
    u16 i;
    u16 rlen;			//ʣ�����ݳ���
    u32 *pbuf;
	
		curline=0;	//������λ

    if(OV_mode&0X01)	//ֻ����JPEG��ʽ��,����Ҫ������.
    {
        if(jpeg_data_ok==0)	//jpeg���ݻ�δ�ɼ���?
        {
            DMA1_Stream1->CR&=~(1<<0);		//ֹͣ��ǰ����
					
            while(DMA1_Stream1->CR&0X01);	//�ȴ�DMA1_Stream1������
					
            rlen=jpeg_buf_size-DMA1_Stream1->NDTR;//�õ�ʣ�����ݳ���
				
					  jpeg_data_len+=rlen;			            //����ʣ�೤��
            
					  jpeg_data_ok=1; 				             //���JPEG���ݲɼ����,�ȴ�������������
					
        }
        if(jpeg_data_ok==2)	//��һ�ε�jpeg�����Ѿ���������
        {
										
            DMA1_Stream1->NDTR=jpeg_buf_size;//���䳤��Ϊjpeg_buf_size*4�ֽ�
            DMA1_Stream1->CR|=1<<0;			     //���´���
            jpeg_data_ok=0;					         //�������δ�ɼ�
            jpeg_data_len=0;				         //�������¿�ʼ
					
        }
				
    } 
		else
    {
			 
			RGB_FrameNum++;//֡������
      	
    }
}






/************************************************************************************************/
//JPEG����
//JPEG����,ͨ������2���͸�����.

//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/

void JPEG_mode(void)
{
    u32 i,jpgstart,jpglen;
    u8  *p;
    
	  u8  headok=0;
	  u8  effect=0;
	  u8  contrast=2;
    u8 size=0;			//Ĭ����QVGA 240*240�ߴ�

	   uart_init(460800);				       //����1 ��ʼ��
	  //usart2_init(921600);			     //��ʼ������2������Ϊ  921600
	  //
    LCD_Clear(WHITE);  //����
    	
    Draw_Font16B(30,50,BLUE," STM32H750 ");
    Draw_Font16B(30,70,BLUE,"OV5640 JPEG Mode");
	
//    Draw_Font16B(30,100,BLUE,"KEY1:Contrast");			//�Աȶ�
//    Draw_Font16B(30,120,BLUE,"KEY2:Auto Focus"); 		//ִ���Զ��Խ�
//    Draw_Font16B(30,140,BLUE,"KEY2:Effects"); 			//��Ч
//    Draw_Font16B(30,160,BLUE,"KEY_UP:Size");				//�ֱ�������
	
    sprintf((char*)Print_buf,"JPEG Size:%s",JPEG_SIZE_TBL[size]);
	
    Draw_Font16B(30,180,BLUE,Print_buf);					       //��ʾ��ǰJPEG�ֱ���
	
    //�Զ��Խ���ʼ��
    OV5640_RGB565_Mode();	//RGB565ģʽ
		
    OV5640_Focus_Init();

    OV5640_JPEG_Mode();		//JPEGģʽ

    OV5640_Light_Mode(0);	//�Զ�ģʽ
    OV5640_Color_Saturation(3); //ɫ�ʱ��Ͷ�0
    OV5640_Brightness(4);     	//����0
    OV5640_Contrast(3);		      //�Աȶ�0
    OV5640_Sharpness(33);     	//�Զ����
    OV5640_Focus_Constant();    //���������Խ�
    DCMI_Init();			          //DCMI����
 		
    DCMI_DMA_Init( (u32)& OVxxx.JPEG_DATA, 0,jpeg_buf_size, DMA_MDATAALIGN_WORD, DMA_MINC_ENABLE);//DCMI DMA����--��ʹ��˫������
		
    OV5640_OutSize_Set(4,0,jpeg_img_size_tbl[size][0],jpeg_img_size_tbl[size][1]);//��������ߴ�
		
    DCMI_Start(); 		//��������
		
		
    while(1)
    {
        if(jpeg_data_ok==1)	//�Ѿ��ɼ���һ֡ͼ����
        {
            p=(u8*)OVxxx.JPEG_DATA;
					
//            printf("Jpeg_data:%d\r\n",jpeg_data_len*4);//��ӡ֡��
					
            Draw_Font16B(30,210,BLUE,"Sending JPEG ..."); //��ʾ���ڴ�������
					
            jpglen=0;	//����jpg�ļ���СΪ0
            headok=0;	//���jpgͷ���
					
            for(i=0; i<jpeg_data_len*4; i++) //����0xFF,0xD8��0xFF,0xD9,��ȡjpg�ļ���С
            {
                if((p[i]==0XFF)&&(p[i+1]==0XD8))//�ҵ�FF D8
                {
                    jpgstart=i;
                    headok=1;	//����ҵ�jpgͷ(FF D8)
                }
                if((p[i]==0XFF)&&(p[i+1]==0XD9)&&headok)//�ҵ�ͷ�Ժ�,����FF D9
                {
                    jpglen=i-jpgstart+2;
                    break;
                }
            }
            if(jpglen)	//������jpeg����
            {
                p+=jpgstart;			//ƫ�Ƶ�0xFF,0xD8��
                for(i=0; i<jpglen; i++)	//��������jpg�ļ�
                {
                    USART1->TDR=p[i];
                    while((USART1->ISR&0X40)==0);	//ѭ������,ֱ���������
//                    Key_Flag=KEY_Scan(0);   //��ȡ��ֵ
//                    if(Key_Flag)break;
                }
            }
						
						Key_Flag=KEY_Scan(0);   //��ȡ��ֵ
						
            if(Key_Flag)	//�а�������,��Ҫ����
            {

                Draw_Font16B(30,210,BLUE,"Quit Sending  ");//��ʾ�˳����ݴ���
							
                switch(Key_Flag)
                {
                case KEY1_PRES:	//�Աȶ�����
                    contrast++;
                    if(contrast>6)contrast=0;
                    OV5640_Contrast(contrast);
                    sprintf((char*)Print_buf,"Contrast:%d",(signed char)contrast-3);
                    break;
                case KEY2_PRES:	//ִ��һ���Զ��Խ�
                    OV5640_Focus_Single();
                    break;
//                case KEY2_PRES:	//��Ч����
//                    effect++;
//                    if(effect>6)effect=0;
//                    OV5640_Special_Effects(effect);//������Ч
//                    sprintf((char*)Print_buf,"%s",EFFECTS_TBL[effect]);
//                    break;
//                case WKUP_PRES:	//JPEG����ߴ�����
//                    size++;
//                    if(size>11)size=0;
//                    OV5640_OutSize_Set(16,4,jpeg_img_size_tbl[size][0],jpeg_img_size_tbl[size][1]);//��������ߴ�
//                    sprintf((char*)Print_buf,"JPEG Size:%s",JPEG_SIZE_TBL[size]);
//                    break;
                }
								
                LCD_Fill(30,180,239,190+16,WHITE);
								
                Draw_Font16B(30,180,BLUE,Print_buf);//��ʾ��ʾ����
								
                delay_ms(800);
								
            } 
						
						else Draw_Font16B(30,210,BLUE,"Send complete!!");//��ʾ�����������
						
            jpeg_data_ok=2;	//���jpeg���ݴ�������,������DMAȥ�ɼ���һ֡��.
        }
    }
}



/************************************************************************************************/
//����ת�溬˰

//STM32H7����ģ��-HAL�⺯���汾


 


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
//RGB�����ݽ��ջص�����

//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/



void rgblcd_dcmi_rx_callback(void)
{
		
		if(DMA1_Stream1->CR&(1<<19))//DMAʹ��buf1,��ȡbuf0
		{ 
   			
			Copy_RAM_Data(&OVxxx.RGB_DATA[curline][0], (u16*)RGB_Line_Buf[0], lcddev.width);
			
			if(curline<lcddev.height)++curline;
			
		}
		else 						//DMAʹ��buf0,��ȡbuf1
		{
		
      Copy_RAM_Data(&OVxxx.RGB_DATA[curline][0], (u16*)RGB_Line_Buf[1], lcddev.width);	
			
      if(curline<lcddev.height)++curline;
			
		}

		
}




/************************************************************************************************/
//RGB565����
//RGB����ֱ����ʾ��LCD����

//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/

u8 Key_N;

void RGB565_mode(void)
{
    
    float fac=0;
    u8 effect=0,contrast=2;
    u8 scale=1;		//Ĭ����ȫ�ߴ�����
    
    u16 outputheight=0;

    LCD_Clear(WHITE);
	    	
    Draw_Font16B(30,50,BLUE," STM32H750");
    Draw_Font16B(30,70,BLUE,"OV5640 RGB565 Mode");
	
//    Draw_Font16B(30,100,BLUE,"KEY1:Contrast");			//�Աȶ�
//    Draw_Font16B(30,120,BLUE,"KEY2:Auto Focus"); 		//ִ���Զ��Խ�
//    LCD_ShowString(30,140,200,16,16,"KEY2:Effects"); 			//��Ч
//    LCD_ShowString(30,160,200,16,16,"KEY_UP:FullSize/Scale");	//1:1�ߴ�(��ʾ��ʵ�ߴ�)/ȫ�ߴ�����
	
	
    //�Զ��Խ���ʼ��
    OV5640_RGB565_Mode();	//RGB565ģʽ
    OV5640_Focus_Init();
    OV5640_Light_Mode(0);	//�Զ�ģʽ
    OV5640_Color_Saturation(3);//ɫ�ʱ��Ͷ�0
    OV5640_Brightness(4);	//����0
    OV5640_Contrast(3);		//�Աȶ�0
    OV5640_Sharpness(33);	//�Զ����
    OV5640_Focus_Constant();//���������Խ�
		
    DCMI_Init();			//DCMI����


		dcmi_rx_callback=rgblcd_dcmi_rx_callback;//RGB���������ݻص�����
		
		DCMI_DMA_Init((u32)RGB_Line_Buf[0],(u32)RGB_Line_Buf[1],lcddev.width/2,DMA_MDATAALIGN_HALFWORD,DMA_MINC_ENABLE);//DCMI DMA���� 
		
		
//    TIM3->CR1&=~(0x01);		//�رն�ʱ��3,�ر�֡��ͳ�ƣ��򿪵Ļ���RGB�����ڴ��ڴ�ӡ��ʱ�򣬻ᶶ

//    if(lcddev.height==1024)
//    {
//        yoffset=(lcddev.height-800)/2;
//        outputheight=800;
//        OV5640_WR_Reg(0x3035,0X51);//�������֡�ʣ�������ܶ���
//			
//    } 
//		else if(lcddev.height==1280)
//    {
//        yoffset=(lcddev.height-600)/2;
//        outputheight=600;
//        OV5640_WR_Reg(0x3035,0X51);//�������֡�ʣ�������ܶ���
//    }
//		else
//    {
//        yoffset=0;
//        outputheight=lcddev.height;
        OV5640_WR_Reg(0x3035,0X51);//�������֡�ʣ�������ܶ���
//    }
		
		    
		
    OV5640_OutSize_Set(4,0,lcddev.width,lcddev.height);		//����������ʾ
						
    DCMI_Start(); 			//��������
			
    LCD_Clear(BLACK);
		
    while(1)
    {
			
        Key_Flag=KEY_Scan(0);   //��ȡ��ֵ
       
			  if(Key_Flag==KEY1_PRES)//����1�л�����
				{
						Key_N++;
						if(Key_N>=3)Key_N=0;
		
					if(Key_N==1)
						{
							Draw_Font16B(30,50,BLUE,"OV5640: DCMI_Stop");//��ʾ��ʾ����
					    delay_ms(800);
							
							DCMI_Stop(); //��KEY1����,ֹͣ��ʾ
						}
					else if(Key_N==2) 
						{	
							Draw_Font16B(30,50,BLUE,"OV5640: DCMI_Start");//��ʾ��ʾ����
					    delay_ms(800);
							
							DCMI_Start();	//���¿�ʼ����
						}					
				}
			 else if(Key_Flag==KEY2_PRES)//����1�л�����
				{
					Draw_Font16B(30,50,BLUE,"OV5640: Focus");//��ʾ��ʾ����
					
          delay_ms(800);
					
					OV5640_Focus_Single(); //ִ��һ���Զ��Խ�
				}
				
				
////////////////////        if(Key_Flag)
////////////////////        {
////////////////////					
////////////////////					
////////////////////            if(Key_Flag!=KEY1_PRES)  //û�кܶఴ��
////////////////////							{
////////////////////								
////////////////////							  DCMI_Stop(); //��KEY1����,ֹͣ��ʾ
////////////////////								
////////////////////						   }
////////////////////							
////////////////////            switch(Key_Flag)
////////////////////            {
////////////////////							
////////////////////							
//////////////////////							case KEY1_PRES:	//�Աȶ�����
//////////////////////									contrast++;
//////////////////////									if(contrast>6)contrast=0;
//////////////////////									OV5640_Contrast(contrast);
//////////////////////									sprintf((char*)Print_buf,"Contrast:%d",(signed char)contrast-3);
//////////////////////									break;
////////////////////							case KEY2_PRES:	//ִ��һ���Զ��Խ�
////////////////////									OV5640_Focus_Single();
////////////////////									break;
////////////////////							
////////////////////							
//////////////////////            case KEY2_PRES:	//��Ч����
//////////////////////                effect++;
//////////////////////                if(effect>6)effect=0;
//////////////////////                OV5640_Special_Effects(effect);//������Ч
//////////////////////                sprintf((char*)Print_buf,"%s",EFFECTS_TBL[effect]);
//////////////////////                break;
//////////////////////            case WKUP_PRES:	//1:1�ߴ�(��ʾ��ʵ�ߴ�)/����
//////////////////////                scale=!scale;
//////////////////////                if(scale==0)
//////////////////////                {
//////////////////////                    fac=(float)800/outputheight;	//�õ���������
//////////////////////                    OV5640_OutSize_Set((1280-fac*lcddev.width)/2,(800-fac*outputheight)/2,lcddev.width,outputheight);
//////////////////////                    sprintf((char*)Print_buf,"Full Size 1:1");
//////////////////////                } else
//////////////////////                {
//////////////////////                    OV5640_OutSize_Set(4,0,lcddev.width,outputheight);
//////////////////////                    sprintf((char*)Print_buf,"Scale");
//////////////////////                }
//////////////////////                break;
////////////////////            }
////////////////////            if(Key_Flag!=KEY1_PRES)	//��KEY1����
////////////////////            {
////////////////////                Draw_Font16B(30,50,BLUE,Print_buf);//��ʾ��ʾ����
////////////////////                delay_ms(800);
////////////////////                DCMI_Start();	//���¿�ʼ����
////////////////////            }
////////////////////        }
        //delay_ms(10);
				
				 if(RGB_FrameNum>0)//������֡��ʱ��
				 {
					 RGB_FrameNum=0;//��һ֡����
					 RGB_Refresh_LCD();//����֡���ݣ�����ˢ��
				 }
				 
	    }
}




































/************************************************************************************************/

//STM32H7����ģ��-HAL�⺯���汾


 


/************************************************************************************************/





