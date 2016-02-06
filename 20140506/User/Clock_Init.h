#ifndef __Clock_Init_H
#define __Clock_Init_H
#include <stm32f10x.h>

static u8  fac_us=0;//us延时倍乘数
static u16 fac_ms=0;//ms延时倍乘数

void RCC_Configuration(void);
void NVIC_Configuration(void);
void delay_init(u8);
void DelayMs(u16);
void DelayUs(u32);

#endif
