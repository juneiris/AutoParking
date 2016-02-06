#include <stm32f10x.h>

typedef unsigned char  BYTE;
typedef unsigned short WORD;
typedef unsigned long  DWORD;
typedef unsigned int   BOOL;

#define TRUE  1
#define FALSE 0

/*
 bus simulator

 D0 ~ D7  --> PB.8 ~ PB.15

 WR       --> PC.7
 RD       --> PC.8

 A0       --> PC.0
 A1       --> PC.1
 A2       --> PC.2

 A12      --> PC.3
 A13      --> PC.4
 A14      --> PC.5
 A15      --> PC.6
*/



GPIO_InitTypeDef  GPIO_InitStructure_BUS;

void RWDelay()
{
    unsigned int i;
    for (i = 0; i<50; i++);                  //延时
}

void WR(BYTE state)
{
    if(state == 1)
        GPIO_SetBits(GPIOC, GPIO_Pin_7);       //PC7置高 WR=1
    else
        GPIO_ResetBits(GPIOC, GPIO_Pin_7);     //PC7置低 WR=0
    RWDelay();

}

void RD(BYTE state)
{
    if(state == 1)
        GPIO_SetBits(GPIOC, GPIO_Pin_8);         //PC8置高 RD=1
    else
        GPIO_ResetBits(GPIOC, GPIO_Pin_8);       //PC8置低 RD=0
    RWDelay();

}

void SetAddr(WORD addr)
{
    WORD dd;
    dd = addr>>9;		                   /* A12~A15 */
    dd |= (addr & 0x07);	                /* A0 ~A2  */

    GPIO_Write(GPIOC, (GPIO_ReadOutputData(GPIOC)&0xffffff80)|dd);   //输出地址
}

void BusWrite(WORD addr, BYTE data)
{
    SetAddr(addr);

    /* PB8 ~ PB15 设置成输出*/
    GPIO_InitStructure_BUS.GPIO_Pin = GPIO_Pin_8|GPIO_Pin_9|GPIO_Pin_10|GPIO_Pin_11
                                      |GPIO_Pin_12|GPIO_Pin_13|GPIO_Pin_14|GPIO_Pin_15;
    GPIO_InitStructure_BUS.GPIO_Mode = GPIO_Mode_Out_PP; 		                       //推挽输出
    GPIO_InitStructure_BUS.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOB, &GPIO_InitStructure_BUS);
    GPIO_Write(GPIOB, (GPIO_ReadOutputData(GPIOB)&0xffff00ff)|(data<<8));

    WR(0);
    WR(1);

    SetAddr(0);
}

BYTE BusRead(WORD addr)
{
    BYTE dd;

    /* PB8 ~ PB15 设置成输入*/
    GPIO_InitStructure_BUS.GPIO_Pin = GPIO_Pin_8|GPIO_Pin_9|GPIO_Pin_10|GPIO_Pin_11
                                      |GPIO_Pin_12|GPIO_Pin_13|GPIO_Pin_14|GPIO_Pin_15;
    GPIO_InitStructure_BUS.GPIO_Mode = GPIO_Mode_IN_FLOATING; 		                         //浮空输入
    GPIO_InitStructure_BUS.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOB, &GPIO_InitStructure_BUS);

    SetAddr(addr);

    RD(0);
    dd = GPIO_ReadInputData(GPIOB)>>8;       //读入8位数据
    RD(1);
    SetAddr(0);
    return(dd);

}

void init_GPIO()
{



    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);	                       //使能PB端口时钟

    GPIO_InitStructure_BUS.GPIO_Pin = GPIO_Pin_8|GPIO_Pin_9|GPIO_Pin_10|GPIO_Pin_11
                                      |GPIO_Pin_12|GPIO_Pin_13|GPIO_Pin_14|GPIO_Pin_15;
    GPIO_InitStructure_BUS.GPIO_Mode = GPIO_Mode_Out_PP; 		                     //推挽输出
    GPIO_InitStructure_BUS.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOB, &GPIO_InitStructure_BUS);

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC, ENABLE);                        //使能PC端口时钟

    GPIO_InitStructure_BUS.GPIO_Pin = GPIO_Pin_0|GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4
                                      |GPIO_Pin_5| GPIO_Pin_6|GPIO_Pin_7|GPIO_Pin_8;
    GPIO_InitStructure_BUS.GPIO_Mode = GPIO_Mode_Out_PP; 		                      //推挽输出
    GPIO_InitStructure_BUS.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOC, &GPIO_InitStructure_BUS);

    GPIO_SetBits(GPIOC, GPIO_Pin_7);
    GPIO_SetBits(GPIOC, GPIO_Pin_8);

}
