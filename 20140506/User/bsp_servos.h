/**
 * @file
 * @brief C3010舵机的驱动头文件
 *
 * 以100hz左右的高电平脉宽控制的舵机
 *
 * @author boddmg@boddmg@gmail.com
 * @version 0.1
 * @date 2012/3/9
 */

#ifndef _SERVOS_H
#define _SERVOS_H

#include "stdint.h"
#include "stm32f10x_gpio.h"
#include "stm32f10x_tim.h"
#include "misc.h"

/**
 * 更换定时器的话就修改它，（只能使用TIM2-TIM7）
 */
#define SERVOS_TIM_IRQ_HANDLE TIM3_IRQHandler
#define SERVOS_TIM_IRQ TIM3_IRQn
#define SERVOS_TIM TIM3
#define SERVOS_TIM_RCC RCC_APB1Periph_TIM3

/**
 * 更换IO口的话就修改相关的宏
 */
#define SERVOS_PORT_RCC RCC_APB2Periph_GPIOG
#define SERVOS_PORT GPIOG
#define SERVOS_PIN GPIO_Pin_1

/**
 * 实验测得最左为410us
 */
#define LEFTMOST  410

/**
 * 实验测得最右为1150us
 */
#define RIGHTMOST  1150

typedef struct
{
    uint16_t highLevelTimeInUs;
} SERVOS_StructType;
extern SERVOS_StructType SERVOS_Struct;
void SERVOS_Init(void);
void SERVOS_SetPulse(uint16_t highLevelTimeInUs);
void s3010_SeTAngle(double angle);
#endif
