/**
 * @file
 * @brief HMC5883L电子罗盘驱动
 *
 * HMC5883L的电子罗盘的驱动
 *
 * @author boddmg@boddmg@gmail.com
 * @version 0.1
 * @date 2012/3/15
 */

#include "stm32f10x.h"
#include "stm32f10x_conf.h"
#include <math.h>

#include "bsp_HMC5883L.h"
#include "Clock_Init.h"

COMPASS_StructType COMPASS_Struct;

extern double COMPASS_Angle;

/**
 * 初始化函数，包括对应的IO口以及定时器的初始化
 * 脉冲产生模式：高电平->OC1触发中断，变低电平->TIMx重载触发中断，变高电平
 * TIM为72预分频，即每个周期为1/(72Mhz/72)=1us，修改高电平脉宽需要修改OC1的计数值
 */

void COMPASS_Init(void)
{
    COMPASS_Struct.COMPASS_IIC.SCL_PIN =COMPASS_IIC_SCL_GPIO_PIN;
    COMPASS_Struct.COMPASS_IIC.SCL_PORT=COMPASS_IIC_SCL_GPIO_PORT;
    COMPASS_Struct.COMPASS_IIC.SCL_RCC =COMPASS_IIC_SCL_GPIO_RCC;

    COMPASS_Struct.COMPASS_IIC.SDA_PIN =COMPASS_IIC_SDA_GPIO_PIN;
    COMPASS_Struct.COMPASS_IIC.SDA_PORT=COMPASS_IIC_SDA_GPIO_PORT;
    COMPASS_Struct.COMPASS_IIC.SDA_RCC =COMPASS_IIC_SDA_GPIO_RCC;

    IIC_Init(&COMPASS_Struct.COMPASS_IIC);


    COMPASS_HMC5883L_Write(HMC5883L_REGA,0x15);
    COMPASS_HMC5883L_Write(HMC5883L_MODE,0x01);
    DelayMs(10);
    COMPASS_HMC5883L_Write(HMC5883L_REGA,0x74);
    COMPASS_HMC5883L_Write(HMC5883L_MODE,0x00);
}

void COMPASS_HMC5883L_Write(uint8_t address,uint8_t data)
{
    IIC_StructType *IIC_Object = &COMPASS_Struct.COMPASS_IIC;

    IIC_SingleWrite(IIC_Object,COMPASS_IIC_ADDRESS,address,data);
}

void COMPASS_Read()
{
    uint8_t buffer[6];

    COMPASS_DataStructType dataStruct;
    IIC_StructType *IIC_Object = &COMPASS_Struct.COMPASS_IIC;
    COMPASS_HMC5883L_Write(HMC5883L_REGA,0x14);
    COMPASS_HMC5883L_Write(HMC5883L_MODE,0x00);

    IIC_MultRead(IIC_Object,COMPASS_IIC_ADDRESS,HMC5883L_HX_H,buffer,6);

    dataStruct.x  = (int16_t)((buffer[0] << 8) | buffer[1]);
    dataStruct.y = (int16_t)((buffer[4] << 8) | buffer[5]);
    dataStruct.z    = (int16_t)((buffer[2] << 8) | buffer[3]);

    if(dataStruct.x>0x7fff)dataStruct.x-=0xffff;
    if(dataStruct.y>0x7fff)dataStruct.y-=0xffff;

    COMPASS_Angle=atan2(((double)dataStruct.y),(double)dataStruct.x) * (180 / 3.14159265);
}

