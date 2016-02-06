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

#include "bsp_myiic.h"
#include "Clock_Init.h"

#define assert(expr) ((void)0)

__inline void IIC_delay(void)
{

    uint8_t i = IIC_DELAY_VAL;
    while (i)
    {
        i--;
    }
}

//初始化IIC
void IIC_Init(IIC_StructType* IIC_Object)
{
    GPIO_InitTypeDef GPIO_InitStructure;
    RCC_APB2PeriphClockCmd(IIC_Object->SDA_RCC, ENABLE);
    RCC_APB2PeriphClockCmd(IIC_Object->SCL_RCC, ENABLE);

    GPIO_InitStructure.GPIO_Pin = IIC_Object->SCL_PIN;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP; //推挽输出
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(((GPIO_TypeDef*) IIC_Object->SCL_PORT), &GPIO_InitStructure);

    GPIO_InitStructure.GPIO_Pin = IIC_Object->SDA_PIN;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_OD; //内部上拉输入
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(((GPIO_TypeDef*) IIC_Object->SDA_PORT), &GPIO_InitStructure);

    IIC_Set_SCL(IIC_Object);
    IIC_Set_SDA(IIC_Object);
}

//产生IIC起始信号
void IIC_Start(IIC_StructType* IIC_Object)
{
    IIC_Set_SDA(IIC_Object);
    IIC_Set_SCL(IIC_Object);
    IIC_delay();
    IIC_Clr_SDA(IIC_Object);
    //START:when CLK is high,DATA change form high to low
    IIC_delay();
    IIC_Clr_SCL(IIC_Object);
    //钳住I2C总线，准备发送或接收数据
}

//产生IIC停止信号
void IIC_Stop(IIC_StructType* IIC_Object)
{
    IIC_Clr_SCL(IIC_Object);
    IIC_delay();
    IIC_Clr_SDA(IIC_Object);
    //STOP:when CLK is high DATA change form low to high
    IIC_delay();
    IIC_Set_SCL(IIC_Object);
    IIC_delay();
    IIC_Set_SDA(IIC_Object);
    //发送I2C总线结束信号
    IIC_delay();
}

//等待应答信号到来
//返回值：1，接收应答失败
//        0，接收应答成功
uint8_t IIC_WaitAck(IIC_StructType* IIC_Object)
{
    uint8_t ack;
    IIC_Clr_SCL(IIC_Object);
    IIC_delay();
    IIC_Set_SDA(IIC_Object);
    IIC_delay();
    IIC_Set_SCL(IIC_Object);
    IIC_delay();
    ack = IIC_READ_SDA(IIC_Object);
    IIC_Clr_SCL(IIC_Object);
    //时钟输出0
    IIC_delay();

    return ack;
}

//产生ACK应答
void IIC_Ack(IIC_StructType* IIC_Object)
{
    IIC_Clr_SCL(IIC_Object);
    IIC_delay();
    IIC_Clr_SDA(IIC_Object);
    IIC_delay();
    IIC_Set_SCL(IIC_Object);
    IIC_delay();
    IIC_Clr_SCL(IIC_Object);
    IIC_delay();
}

//不产生ACK应答
void IIC_NoAck(IIC_StructType* IIC_Object)
{
    IIC_Clr_SCL(IIC_Object);
    IIC_delay();
    IIC_Set_SDA(IIC_Object);
    IIC_delay();
    IIC_Set_SCL(IIC_Object);
    IIC_delay();
    IIC_Clr_SCL(IIC_Object);
    IIC_delay();
}

//IIC发送一个字节
void IIC_SendByte(IIC_StructType* IIC_Object, uint8_t data)
{
    uint8_t t;
    for (t = 0; t < 8; t++)
    {
        IIC_Clr_SCL(IIC_Object);
        //拉低时钟开始数据传输
        IIC_delay();
        if (data & 0x80)
            IIC_Set_SDA(IIC_Object)
            else
                IIC_Clr_SDA(IIC_Object);
        data <<= 1;
        IIC_delay();
        IIC_Set_SCL(IIC_Object);
        IIC_delay();
    }
    IIC_Clr_SCL(IIC_Object);
    DelayUs(2);
}

//读1个字节
uint8_t IIC_ReadByte(IIC_StructType* IIC_Object)
{
    unsigned char i, receive = 0;
    IIC_Set_SDA(IIC_Object);
    for (i = 0; i < 8; i++)
    {
        IIC_Clr_SCL(IIC_Object);
        IIC_delay();
        IIC_Set_SCL(IIC_Object);
        IIC_delay();
        receive <<= 1;
        if (IIC_READ_SDA(IIC_Object))
        {
            receive |= 0x01;
        }
    }
    IIC_Clr_SCL(IIC_Object);
    return receive;
}

void IIC_SingleWrite(IIC_StructType* IIC_Object, uint8_t slaveAddress,
                     uint8_t regAddress, uint8_t regData)
{
    IIC_Start(IIC_Object);
    IIC_SendByte(IIC_Object, slaveAddress);
    IIC_WaitAck(IIC_Object);
    IIC_SendByte(IIC_Object, regAddress);
    IIC_WaitAck(IIC_Object);
    IIC_SendByte(IIC_Object, regData);
    IIC_WaitAck(IIC_Object);
    IIC_Stop(IIC_Object);
}
uint8_t IIC_SingleRead(IIC_StructType* IIC_Object, uint8_t slaveAddress,
                       uint8_t regAddress)
{
    uint8_t regData;
    IIC_Start(IIC_Object);
    IIC_SendByte(IIC_Object, slaveAddress);
    IIC_WaitAck(IIC_Object);
    IIC_SendByte(IIC_Object, regAddress);
    IIC_WaitAck(IIC_Object);
    IIC_Start(IIC_Object);
    IIC_SendByte(IIC_Object, slaveAddress + 1);
    IIC_WaitAck(IIC_Object);
    regData = IIC_ReadByte(IIC_Object);
    IIC_NoAck(IIC_Object);
    IIC_Stop(IIC_Object);
    //return true;
    return regData;
}

uint8_t IIC_MultRead(IIC_StructType* IIC_Object, uint8_t slaveAddress,
                     uint8_t regAddress, uint8_t * pBuffer, uint8_t size)
{
    uint8_t i;

    assert(size > 1);
    IIC_Start(IIC_Object);
    IIC_SendByte(IIC_Object, slaveAddress);
    IIC_WaitAck(IIC_Object);
    IIC_SendByte(IIC_Object, regAddress);
    IIC_WaitAck(IIC_Object);

    IIC_Start(IIC_Object);
    IIC_SendByte(IIC_Object, slaveAddress + 1);
    IIC_WaitAck(IIC_Object);

    for (i = 1; i < size; i++)
    {
        *pBuffer++ = IIC_ReadByte(IIC_Object);
        IIC_Ack(IIC_Object);
    }
    *pBuffer++ = IIC_ReadByte(IIC_Object);
    IIC_NoAck(IIC_Object);
    IIC_Stop(IIC_Object);
    return 1;
}

