/**
 * @file
 * @brief C3010舵机的驱动
 *
 * 以100hz左右的高电平脉宽控制的舵机
 *
 * @author boddmg@boddmg@gmail.com
 * @version 0.1
 * @date 2012/3/9
 */

#include "stm32f10x.h"
#include "stm32f10x_conf.h"

#include "bsp_servos.h"

SERVOS_StructType SERVOS_Struct;

/**
 * 初始化函数，包括对应的IO口以及定时器的初始化
 * 脉冲产生模式：高电平->OC1触发中断，变低电平->TIMx重载触发中断，变高电平
 * TIM为72预分频，即每个周期为1/(72Mhz/72)=1us，修改高电平脉宽需要修改OC1的计数值
 */
void SERVOS_Init(void)
{
    GPIO_InitTypeDef GPIO_InitStructure; //GPIO
    TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
    NVIC_InitTypeDef NVIC_InitStructure;
    TIM_OCInitTypeDef TIM_OCInitStructure;

    //rcc init
    RCC_APB1PeriphClockCmd(SERVOS_TIM_RCC, ENABLE);
    RCC_APB2PeriphClockCmd(SERVOS_PORT_RCC, ENABLE);

    //enable tim irq
    NVIC_InitStructure.NVIC_IRQChannel = SERVOS_TIM_IRQ;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;

    NVIC_Init(&NVIC_InitStructure);

    //set tim
    TIM_DeInit(SERVOS_TIM);
    TIM_TimeBaseStructure.TIM_Period = 10000; //ARR的值
    TIM_TimeBaseStructure.TIM_Prescaler = 72 - 1;
    TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Down; //向上计数模式
    TIM_TimeBaseInit(SERVOS_TIM, &TIM_TimeBaseStructure);
//	TIM_ARRPreloadConfig(SERVOS_TIM, ENABLE); //使能ARR预装载缓冲器

    TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_Timing; //不影响
    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Disable;
    TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;
    TIM_OCInitStructure.TIM_Pulse = (uint16_t)((RIGHTMOST + LEFTMOST) / 2);
    TIM_OC1Init(SERVOS_TIM, &TIM_OCInitStructure);

    TIM_OC1PreloadConfig(SERVOS_TIM, TIM_OCPreload_Disable);

    TIM_ITConfig(SERVOS_TIM, TIM_IT_Update, ENABLE);
    TIM_ITConfig(SERVOS_TIM, TIM_IT_CC1, ENABLE);
    GPIO_WriteBit(SERVOS_PORT, SERVOS_PIN, Bit_SET);

    GPIO_WriteBit(SERVOS_PORT, SERVOS_PIN, Bit_RESET);

    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Pin = SERVOS_PIN;
    GPIO_Init(SERVOS_PORT, &GPIO_InitStructure);

    TIM_Cmd(SERVOS_TIM, ENABLE); //开启时钟
    //debug
}

/**
 * 手动向舵机发送单个脉冲
 * @param [in] int32_t 高电平的脉宽，单位为us
 */
void SERVOS_SetPulse(uint16_t highLevelTimeInUs)
{
    SERVOS_Struct.highLevelTimeInUs = highLevelTimeInUs;
}

/**
 * 控制舵机的角度
 * @param [in] double 舵机的角度，-45度-45度
 */
void s3010_SeTAngle(double angle)
{
    //钳位防止超出范围出错
    if(angle>45)angle=45;
    else if(angle<-45)angle=-45;

    SERVOS_SetPulse(
        angle / 45 * (RIGHTMOST - LEFTMOST) / 2
        + (RIGHTMOST + LEFTMOST) / 2);
}

/**
 * 定时器处理函数
 */
void SERVOS_TIM_IRQ_HANDLE(void)
{
    if (TIM_GetITStatus(SERVOS_TIM, TIM_IT_Update) != RESET)
    {
        TIM_ClearITPendingBit(SERVOS_TIM, TIM_IT_Update); //清除TIMx更新中断标志
        GPIO_WriteBit(SERVOS_PORT, SERVOS_PIN, Bit_RESET);
        TIM_Cmd(SERVOS_TIM, ENABLE);
    }

    if (TIM_GetITStatus(SERVOS_TIM, TIM_IT_CC1) != RESET)
    {
        TIM_ClearITPendingBit(SERVOS_TIM, TIM_IT_CC1); //进入中断先清除更新标志
        TIM_SetCompare1(SERVOS_TIM,SERVOS_Struct.highLevelTimeInUs-1);
        GPIO_WriteBit(SERVOS_PORT, SERVOS_PIN, Bit_SET);
        TIM_Cmd(SERVOS_TIM, ENABLE);
    }
}
