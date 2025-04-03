#include "DF_HE_30.h"

/*
 * @brief 初始化雾化器
 * @param 无
*/
void DF_HE_30_Init(void){
    GPIO_InitTypeDef GPIO_InitStruct = {0}; 
    GPIO_InitStruct.Pin = DF_HE_30_PIN;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(DF_HE_30_PORT, &GPIO_InitStruct);
    HAL_GPIO_WritePin(DF_HE_30_PORT, DF_HE_30_PIN, GPIO_PIN_RESET);
}
/*
 * @brief 打开雾化器
 * @param 无
 * @return 无
*/
void DF_HE_30_On(void){
    HAL_GPIO_WritePin(DF_HE_30_PORT, DF_HE_30_PIN, GPIO_PIN_SET);
}

/*
 * @brief 关闭雾化器
 * @param 无
 * @return 无
*/
void DF_HE_30_Off(void){
    HAL_GPIO_WritePin(DF_HE_30_PORT, DF_HE_30_PIN, GPIO_PIN_RESET);
}
