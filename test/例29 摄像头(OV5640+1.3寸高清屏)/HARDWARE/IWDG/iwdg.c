#include "iwdg.h"
#include "sys.h"


 
/***************************************************************************/
//独立看门狗驱动代码	  

//STM32H7工程模板-HAL库函数版本
//DevEBox  大越创新
//淘宝店铺：mcudev.taobao.com
//淘宝店铺：shop389957290.taobao.com	

/***************************************************************************/						  


IWDG_HandleTypeDef IWDG_Handler; //独立看门狗句柄


/***************************************************************************/
//初始化独立看门狗
//prer:分频数:0~7(只有低3位有效!)
//rlr:自动重装载值,0~0XFFF.
//分频因子=4*2^prer.但最大值只能是256!
//rlr:重装载寄存器值:低11位有效.
//时间计算(大概):Tout=((4*2^prer)*rlr)/32 (ms).  

//STM32H7工程模板-HAL库函数版本
//DevEBox  大越创新
//淘宝店铺：mcudev.taobao.com
//淘宝店铺：shop389957290.taobao.com	

/***************************************************************************/	


void IWDG_Init(u8 prer,u16 rlr)
{
    IWDG_Handler.Instance=IWDG1;
    IWDG_Handler.Init.Prescaler=prer;    //设置IWDG分频系数
    IWDG_Handler.Init.Reload=rlr;        //重装载
    IWDG_Handler.Init.Window=IWDG_WINDOW_DISABLE;//关闭窗口功能
    HAL_IWDG_Init(&IWDG_Handler);    
}
  
/***************************************************************************/
//喂独立看门狗 

//STM32H7工程模板-HAL库函数版本
//DevEBox  大越创新
//淘宝店铺：mcudev.taobao.com
//淘宝店铺：shop389957290.taobao.com	

/***************************************************************************/	


void IWDG_Feed(void)
{   
    HAL_IWDG_Refresh(&IWDG_Handler); //重装载
}

























/***************************************************************************/

//STM32H7工程模板-HAL库函数版本
//DevEBox  大越创新
//淘宝店铺：mcudev.taobao.com
//淘宝店铺：shop389957290.taobao.com	

/***************************************************************************/


