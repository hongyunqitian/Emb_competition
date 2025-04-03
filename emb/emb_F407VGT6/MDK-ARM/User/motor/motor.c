#include "motor.h"

void motor_init(void)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    __HAL_RCC_GPIOA_CLK_ENABLE();
    GPIO_InitStruct.Pin = MOTOR_en_PIN | MOTOR_stp_PIN | MOTOR_dir_PIN;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    HAL_GPIO_Init(MOTOR_en_GPIO_PORT, &GPIO_InitStruct);
    HAL_GPIO_Init(MOTOR_stp_GPIO_PORT, &GPIO_InitStruct);
    HAL_GPIO_Init(MOTOR_dir_GPIO_PORT, &GPIO_InitStruct);
    HAL_GPIO_WritePin(MOTOR_en_GPIO_PORT, MOTOR_en_PIN, GPIO_PIN_RESET);//默认不使能
    HAL_GPIO_WritePin(MOTOR_stp_GPIO_PORT, MOTOR_stp_PIN, GPIO_PIN_RESET);//默认不输出PWM
    HAL_GPIO_WritePin(MOTOR_dir_GPIO_PORT, MOTOR_dir_PIN, GPIO_PIN_SET);//默认正转
}


void motor_set_dir(uint8_t dir)
{
    HAL_GPIO_WritePin(MOTOR_dir_GPIO_PORT, MOTOR_dir_PIN, (GPIO_PinState)(dir));
}

void motor_set_en(uint8_t en)
{
    HAL_GPIO_WritePin(MOTOR_en_GPIO_PORT, MOTOR_en_PIN, (GPIO_PinState)(en));
}

void motor_set_enPWM(uint8_t en_PWM){
	if(en_PWM==1){}


}
void motor_proc(uint8_t en,uint8_t dir,uint8_t en_PWM)
{
	motor_set_en(en);
	motor_set_dir(dir);
}





