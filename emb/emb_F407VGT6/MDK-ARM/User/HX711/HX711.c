#include "HX711.h"
#include "system.h"

// 全局变量
uint32_t HX711_Buffer;       // 称重值缓存
volatile uint32_t Weight_Maopi;       // 毛皮重量（零点）
int32_t Weight_Shiwu;        // 实际物体重量
uint8_t Flag_Error = 0;      // 错误标志

// 校准参数，根据实际偏大增加，偏小减小
#define GapValue 420.5f

/*
 @brief 初始化HX711
 @param 无
 @return 无
 @note 查询手册可知，低电平到高电平跳变时间小于0.1us即10MHZ
*/
void HX711_Init(void){
    GPIO_InitTypeDef GPIO_InitStruct = {0};     
    GPIO_InitStruct.Pin = HX711_SCK_PIN;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;//推挽
    GPIO_InitStruct.Pull = GPIO_PULLUP;//上拉
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    HAL_GPIO_Init(HX711_SCK_PORT, &GPIO_InitStruct);

    GPIO_InitStruct.Pin = HX711_DOUT_PIN;
    GPIO_InitStruct.Mode = GPIO_MODE_INPUT;//输入
    GPIO_InitStruct.Pull = GPIO_PULLUP;//上拉
    HAL_GPIO_Init(HX711_DOUT_PORT, &GPIO_InitStruct);
    
    // 初始化SCK为低电平
    HAL_GPIO_WritePin(HX711_SCK_PORT, HX711_SCK_PIN, GPIO_PIN_RESET);
	
	
}

/*
 * @brief 读取HX711传感器数据
 * @param 无
 * @return uint32_t HX711的24位AD转换结果
 * @note 低电平到高电平跳变时间小于0.1us即10MHZ
 * @sck的时钟脉冲高电平要小于50us大于0.2us，所以无法使用HAL_Delay(1)的1ms延时，需要自定义延时函数
 * @负脉冲电平时间大于等于0.2us，无最大时间要求
*/
 uint32_t HX711_Read(void){
    uint32_t count = 0;
    uint8_t i;
	HAL_GPIO_WritePin(HX711_DOUT_PORT,HX711_DOUT_PIN,GPIO_PIN_SET);//拉高
    //delay_us(5); 
	delay(5);
   // 模块没准备好时，单片机在CLK线上输出低电平
    HAL_GPIO_WritePin(HX711_SCK_PORT, HX711_SCK_PIN, GPIO_PIN_RESET);
    
    // 等待DT引脚变低，表示HX711准备好数据
    uint32_t timeout = 1000000; // 设置超时保护
    while(HAL_GPIO_ReadPin(HX711_DOUT_PORT, HX711_DOUT_PIN)){
        if(--timeout == 0){
            return 0; // 超时返回0
        }
    }
	delay(5);
    //delay_us(5); 
    // 读取24位数据
    for(i = 0; i < 24; i++){
        HAL_GPIO_WritePin(HX711_SCK_PORT, HX711_SCK_PIN, GPIO_PIN_SET); // 拉高时钟
        //delay_us(5);
		delay(5);
        count = count << 1; // 左移一位，为新数据腾出位置
        
        HAL_GPIO_WritePin(HX711_SCK_PORT, HX711_SCK_PIN, GPIO_PIN_RESET); // 拉低时钟
        
        if(HAL_GPIO_ReadPin(HX711_DOUT_PORT, HX711_DOUT_PIN)){
            count++; // 如果DT为高，则当前位为1
        }
        //delay_us(5);
		delay(5);
    }
    
    // 25个脉冲下降沿来时，转换数据
    HAL_GPIO_WritePin(HX711_SCK_PORT, HX711_SCK_PIN, GPIO_PIN_SET);
    //delay_us(2);
	delay(5);
    count = count ^ 0x800000; // 按照数据手册要求进行数据转换
    HAL_GPIO_WritePin(HX711_SCK_PORT, HX711_SCK_PIN, GPIO_PIN_RESET);
     //delay_us(5);
	delay(5);
    return count;
}

/*
 * @brief 获取毛皮重量（零点校准）
 * @param 无
 * @return 无
 * @note 在没有负载情况下调用此函数，获取传感器零点值
*/
void Get_Maopi(void)
{
    Weight_Maopi = HX711_Read();
}

/*
 * @brief 获取实际重量
 * @param 无
 * @return 无
 * @note 读取当前重量并进行计算
*/
void Get_Weight(void)
{
    HX711_Buffer = HX711_Read();

    if(HX711_Buffer > (Weight_Maopi - 200)) // 添加一个小的阈值避免负值
    {
        Weight_Shiwu = HX711_Buffer;
        Weight_Shiwu = Weight_Shiwu - Weight_Maopi;              // 去皮

        Weight_Shiwu = (int32_t)((float)Weight_Shiwu/(float)GapValue);  // 计算实际重量
    }
    else
    {
        Weight_Shiwu = 0; // 小于阈值时显示0
    }
}

/*
 * @brief 获取当前重量值
 * @param 无
 * @return int32_t 当前计算出的重量值(g)
*/
int32_t Get_Weight_Value(void)
{
    Get_Weight();
    return Weight_Shiwu;
}


//这里使用DWT延时有问题，会卡死，需要重新rst上电才能使用
void delay(uint32_t n){


while(n--){
for(int i=0;i<5;i++);
}
}


