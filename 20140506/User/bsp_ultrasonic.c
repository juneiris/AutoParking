/**
 * @file
 * @brief 读取超声波的值
 *
 * 读取超声波的值到全局变量，需要预先将串口初始化
 *
 * @author 陈超 22011310@SEU
 * @version 
 * @date 
 */

#include "bsp_ultrasonic.h"

#include "bsp_usart.h"
#include "Clock_Init.h"

extern double ULTRASONIC_Dist1,ULTRASONIC_Dist2,ULTRASONIC_Dist3;
u8 rdist3[2];
u8 rdist4[2];
u8 rdist5[2];
u8 i,j,k,l;

void ULTRASONIC_Read()
{
	USART_SendData(USART3, 0x55);
	DelayMs(10);
	
	USART_SendData(UART4, 0x55);
	DelayMs(10);
	
	USART_SendData(UART5, 0x55);
	DelayMs(10);
}

void USART3_IRQHandler(void)
{
	if (USART_GetITStatus(USART3, USART_IT_RXNE) != RESET)
    {
		rdist3[i++]=USART_ReceiveData(USART3);
		if(i==2)
		{
			ULTRASONIC_Dist1=(double)rdist3[0]*(double)256+(double)rdist3[1];
			i=0;
		}
		USART_ClearITPendingBit(USART3, USART_IT_RXNE);
    }
}

void UART4_IRQHandler(void)
{
    if(USART_GetITStatus(UART4, USART_IT_RXNE) != RESET)
    {
        rdist4[j++]=USART_ReceiveData(UART4);
        if(j==2)
        {
            ULTRASONIC_Dist2=(double)rdist4[0]*(double)256+(double)rdist4[1];
            j=0;
        }
		USART_ClearITPendingBit(UART4, USART_IT_RXNE);
    }
}

void UART5_IRQHandler(void)
{
    if (USART_GetITStatus(UART5, USART_IT_RXNE) != RESET)
    {
		rdist5[k++]=USART_ReceiveData(UART5);
        if(k==2)
        {
            ULTRASONIC_Dist3=(double)rdist5[0]*(double)256+(double)rdist5[1];
            k=0;
        }
		USART_ClearITPendingBit(UART4, USART_IT_RXNE);
    }
}
