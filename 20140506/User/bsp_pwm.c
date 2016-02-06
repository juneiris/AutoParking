/**
 * @file
 * @brief 硬件PWM，使用TIM5
 *
 * 硬件PWM配置，负责直流电机的调速
 *
 * @author 陈超 22011310@SEU
 * @version 
 * @date 
 */

#include "bsp_pwm.h"

u16 Speed =0 ;
u16 IC2Value = 0 ;

void PWMTIM_Configuration(u16 arr,u16 psc)
{
    GPIO_InitTypeDef GPIO_InitStructure;
    TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;
    TIM_OCInitTypeDef  TIM_OCInitStructure;

    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM5, ENABLE);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA,ENABLE);

    GPIO_InitStructure.GPIO_Pin=GPIO_Pin_1;
    GPIO_InitStructure.GPIO_Mode=GPIO_Mode_AF_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    TIM_TimeBaseStructure.TIM_Period=arr;
    TIM_TimeBaseStructure.TIM_Prescaler=psc;
    TIM_TimeBaseStructure.TIM_ClockDivision=TIM_CKD_DIV1;
    TIM_TimeBaseStructure.TIM_CounterMode=TIM_CounterMode_Up;
    TIM_TimeBaseInit(TIM5,&TIM_TimeBaseStructure);

    TIM_OCInitStructure.TIM_OCMode=TIM_OCMode_PWM2;
    TIM_OCInitStructure.TIM_OutputState=TIM_OutputState_Enable;
    TIM_OCInitStructure.TIM_Pulse=0;
    TIM_OCInitStructure.TIM_OCPolarity=TIM_OCPolarity_Low;
    TIM_OC2Init(TIM5,&TIM_OCInitStructure);
    TIM_OC2PreloadConfig(TIM5,TIM_OCPreload_Enable);

    TIM_ARRPreloadConfig(TIM5,ENABLE);
    TIM_Cmd(TIM5,ENABLE);
}

void PWM_Configuration(double pw)
{
    int Freq,FreqT,D_cyc;
    Freq=5;
    FreqT=72000/Freq;
    D_cyc=FreqT*pw;
    TIM_SetCompare2(TIM5,D_cyc);
}
