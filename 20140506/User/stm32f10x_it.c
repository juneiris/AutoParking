/**
 * @file
 * @brief USART1、USART2串口中断处理函数
 *
 * 跨平台通讯串口中断处理函数(USART1、USART2)
 *
 * @author 陈超 22011310@SEU
 * @version 
 * @date 
 */
 
#include "stm32f10x_it.h"
#include "bsp_usart.h"
#include "stdio.h"	//sprintf
#include "stdlib.h"

extern double MOTOR_Speed;
extern double SERVOS_Angle;

extern int total_num;
extern double x[256],y[256];

extern int state;

int count = 0;
int num = 0;

extern char buf[250];

void USART1_IRQHandler(void)
{
    u8 rcmd;
    if(USART_GetITStatus(USART1, USART_IT_RXNE) != RESET)   //判断发生接收中断
    {
        rcmd=USART_ReceiveData(USART1);                       //接收数据
        if(rcmd=='u')
        {
            if(MOTOR_Speed <= 0.30)
            {
                MOTOR_Speed += 0.05;
                sprintf((char*)buf, "PWM:%f\r\n", MOTOR_Speed);
                USART_sendBuf(USART1, buf);
            }
        }
        if(rcmd=='d')
        {
            if(MOTOR_Speed >= 0.00)
            {
                MOTOR_Speed -= 0.05;
                sprintf((char*)buf, "PWM:%f\r\n", MOTOR_Speed);
                USART_sendBuf(USART1, buf);
            }
        }
        if(rcmd=='l')
        {
            if(SERVOS_Angle > (double)(-45))
            {
                SERVOS_Angle -= 1;
                sprintf((char*)buf, "SERVOS:%f\r\n", SERVOS_Angle);
                USART_sendBuf(USART1, buf);
            }
        }
        if(rcmd=='r')
        {
            if(SERVOS_Angle < (double)(45))
            {
                SERVOS_Angle += 1;
                sprintf((char*)buf, "SERVOS:%f\r\n", SERVOS_Angle);
                USART_sendBuf(USART1, buf);
            }
        }
    }
    USART_ClearITPendingBit(USART1, USART_IT_RXNE);       //清除中断标志
}

void USART2_IRQHandler(void)
{
    char **endptr = NULL;

    if (USART_GetITStatus(USART2, USART_IT_RXNE) != RESET) {
        if (num==0) {
            buf[count] = USART_ReceiveData(USART2);
            if(buf[count]==0x00)
            {
                USART_sendBuf(USART1, "\n");
                USART_sendBuf(USART1, buf);
                total_num = (int)strtol(buf, endptr, 0);
                count = -1;
                num = 1;
            }
            count++;
        } else {
            buf[count] = USART_ReceiveData(USART2);
            if(buf[count]==0x00)
            {
                USART_sendBuf(USART1, "\n");
                USART_sendBuf(USART1, buf);
                if(num - 1 < total_num) {
                    USART_sendBuf(USART1, "\n");
                    USART_sendBuf(USART1, buf);
                    x[num - 1] = strtof(buf,endptr);
                } else {
                    USART_sendBuf(USART1, "\n");
                    USART_sendBuf(USART1, buf);
                    y[num - 1 - total_num] = strtof(buf,endptr);
                }
                count = -1;
                num++;
            }
			count++;
        }
		USART_ClearITPendingBit(USART2, USART_IT_RXNE);
    }
}
