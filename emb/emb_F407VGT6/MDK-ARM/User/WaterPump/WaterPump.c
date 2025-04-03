#include "WaterPump.h"

/*
 * @brief 水泵初始化
 * @param 无
 * @return 无
*/
void WaterPump_Init(void){
    GPIO_InitTypeDef GPIO_InitStruct = {0}; 
    __HAL_RCC_GPIOB_CLK_ENABLE();   
    GPIO_InitStruct.Pin = WATERPUMP_PIN;        
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP; 
    GPIO_InitStruct.Pull = GPIO_NOPULL;     
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(WATERPUMP_GPIO_PORT, &GPIO_InitStruct);       
    HAL_GPIO_WritePin(WATERPUMP_GPIO_PORT, WATERPUMP_PIN, GPIO_PIN_RESET);
    
}
/*
 * @brief 水泵控制
 * @param state 1:开启 0:关闭
 * @return 无
*/
void WaterPump(uint8_t state){        
    if(state == 1){ 
    HAL_GPIO_WritePin(WATERPUMP_GPIO_PORT, WATERPUMP_PIN, GPIO_PIN_SET);      
    }else{
        HAL_GPIO_WritePin(WATERPUMP_GPIO_PORT, WATERPUMP_PIN, GPIO_PIN_RESET);  
    }    
}

