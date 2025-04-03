/*
    电机驱动模块
    42HS48电机1.3A电流
    减速比1:50
    步进角1.8度
    步进电机驱动器引脚:
    stp:PWM输出,PE9
    dir:方向输出,PA1,1正0反
    en:使能输出,PA0,1使能0不使能
    COM:stm32IO口高电平大小3.3V
    V+:12V
    G:GND
    其他参数:
    1.细分:16
    2.步进角:1.8度
    一圈脉冲数:360/1.8*16=3200个脉冲
    引脚从左到右:V+(12V),G(GND),COM(3.3V),dir(1正0反),stp(PWM输出),en(1使能0不使能)
*/


#ifndef __MOTOR_H
#define __MOTOR_H

#include "system.h"
#define MOTOR_en_PIN GPIO_PIN_0   //使能输出
#define MOTOR_en_GPIO_PORT GPIOA  //使能输出端口
#define MOTOR_stp_PIN GPIO_PIN_9  //PWM输出
#define MOTOR_stp_GPIO_PORT GPIOE //PWM输出端口
#define MOTOR_dir_PIN GPIO_PIN_1  //方向输出
#define MOTOR_dir_GPIO_PORT GPIOA //方向输出端口


void motor_init(void);
void motor_set_dir(uint8_t dir);
void motor_set_en(uint8_t en);


#endif










