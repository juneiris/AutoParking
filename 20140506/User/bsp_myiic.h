#ifndef _MYIIC_H
#define _MYIIC_H

#include "stm32f10x.h"
#include "stdint.h"
#include "stm32f10x_gpio.h"

typedef struct
{
    uint32_t SDA_RCC;
    GPIO_TypeDef* SDA_PORT;
    uint16_t SDA_PIN;

    uint32_t SCL_RCC;
    GPIO_TypeDef* SCL_PORT;
    uint16_t SCL_PIN;
} IIC_StructType;


#define IIC_DELAY_VAL   4    //30对应100K
//4对应400K

//IO操作函数
#define IIC_Set_SCL(IIC_ObjectPointer)  {GPIO_SetBits(IIC_ObjectPointer->SCL_PORT,IIC_ObjectPointer->SCL_PIN);}
#define IIC_Clr_SCL(IIC_ObjectPointer)  {GPIO_ResetBits(IIC_ObjectPointer->SCL_PORT,IIC_ObjectPointer->SCL_PIN);}

#define IIC_Set_SDA(IIC_ObjectPointer)  {GPIO_SetBits(IIC_ObjectPointer->SDA_PORT,IIC_ObjectPointer->SDA_PIN);}
#define IIC_Clr_SDA(IIC_ObjectPointer)  {GPIO_ResetBits(IIC_ObjectPointer->SDA_PORT,IIC_ObjectPointer->SDA_PIN);}

#define IIC_READ_SDA(IIC_ObjectPointer)    (GPIO_ReadInputDataBit(IIC_ObjectPointer->SDA_PORT, IIC_ObjectPointer->SDA_PIN))

//I2C所有操作函数
void IIC_Init(IIC_StructType* IIC_Object); //初始化I2C的IO口
void IIC_Start(IIC_StructType* IIC_Object); //发送I2C开始信号
void IIC_Stop(IIC_StructType* IIC_Object); //发送I2C停止信号
void IIC_Send_Byte(IIC_StructType* IIC_Object, uint8_t txd); //I2C发送一个字节
uint8_t IIC_Read_Byte(IIC_StructType* IIC_Object); //I2C读取一个字节
uint8_t IIC_Wait_Ack(IIC_StructType* IIC_Object); //I2C等待ACK信号
void IIC_Ack(IIC_StructType* IIC_Object); //I2C发送ACK信号
void IIC_NAck(IIC_StructType* IIC_Object); //I2C不发送ACK信号

void IIC_Write_One_Byte(IIC_StructType* IIC_Object, uint8_t daddr, uint8_t addr,
                        uint8_t data);
uint8_t IIC_Read_One_Byte(IIC_StructType* IIC_Object, uint8_t daddr,
                          uint8_t addr);

void IIC_SingleWrite(IIC_StructType* IIC_Object, uint8_t slaveAddress,
                     uint8_t regAddress, uint8_t regData);
uint8_t IIC_MultRead(IIC_StructType* IIC_Object, uint8_t slaveAddress,
                     uint8_t regAddress, uint8_t * pBuffer, uint8_t size);

#endif

