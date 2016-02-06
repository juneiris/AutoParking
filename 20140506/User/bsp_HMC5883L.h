/**
 * @file
 * @brief C3010舵机的驱动头文件
 *
 * 以100hz左右的高电平脉宽控制的舵机
 * 使用指南：
 * double angle=0;
 * COMPASS_Init();//初始化
 * angle=COMPASS_Read();//读数
 *
 * @author boddmg@boddmg@gmail.com
 * @version 0.2
 * @date 2012/3/9
 */

#ifndef _COMPASS_H
#define _COMPASS_H

#include "stdint.h"
#include "stm32f10x_gpio.h"
#include "bsp_myiic.h"

/**
 * 更换IO口的话就修改相关的宏
 */
#define COMPASS_IIC_SCL_GPIO_RCC	RCC_APB2Periph_GPIOB
#define COMPASS_IIC_SCL_GPIO_PORT	GPIOB
#define COMPASS_IIC_SCL_GPIO_PIN	GPIO_Pin_6

#define COMPASS_IIC_SDA_GPIO_RCC	RCC_APB2Periph_GPIOB
#define COMPASS_IIC_SDA_GPIO_PORT	GPIOB
#define COMPASS_IIC_SDA_GPIO_PIN	GPIO_Pin_7

#define COMPASS_IIC_ADDRESS	0x3C

/**
 *  HMC5883L内部寄存器
 */
#define HMC5883L_REGA   0x00
#define HMC5883L_REGB   0x01
#define HMC5883L_MODE   0x02
#define HMC5883L_HX_H   0x03
#define HMC5883L_HX_L   0x04
#define HMC5883L_HZ_H   0x05
#define HMC5883L_HZ_L   0x06
#define HMC5883L_HY_H   0x07
#define HMC5883L_HY_L   0x08
#define HMC5883L_STATE  0x09

/**
 *  HMC5883L序列号寄存器
 */
#define HMC5883L_IRA    0x0a
#define HMC5883L_IRB    0x0b
#define HMC5883L_IRC    0x0c

/**
 *  漂移系数
 */
#define HMC5883L_OFFSET_X   (9)
#define HMC5883L_OFFSET_Y   (149)
#define HMC5883L_GAIN_X     1f
#define HMC5883L_GAIN_Y     10403

typedef struct
{
    int16_t x;
    int16_t y;
    int16_t z;
} COMPASS_DataStructType;

typedef struct
{
    IIC_StructType COMPASS_IIC;
} COMPASS_StructType;
extern COMPASS_StructType COMPASS_Struct;

/**
 *  写HMC5883L的单个寄存器
 */
void COMPASS_HMC5883L_Write(uint8_t address,uint8_t data);

/**
 *  初始化HMC5883L指南针模块
 */
void COMPASS_Init(void);

/**
 *  读取当前与正北(?)夹角，范围-180.0~+180.0
 */
void COMPASS_Read(void);


#endif
