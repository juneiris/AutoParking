/**
 * @file
 * @brief 主函数
 *
 * 包含状态机结构的主循环以及各种初始化
 *
 * @author 陈超 22011310@SEU
 * @version 
 * @date 
 */

#include "stm32f10x.h"		//固件库
#include "stdio.h"			//标准IO
#include "stdlib.h"

#include "Clock_Init.h"		//时钟NVIC

#include "bsp_usart.h"		//串行口（电脑调试 树莓派通讯 3个超声波）

#include "bsp_pwm.h"		//PWM（直流电机）
#include "bsp_servos.h"		//舵机

#include "bsp_ultrasonic.h"	//超声波
#include "bsp_HMC5883L.h"	//指南针

void Init(void);

double MOTOR_Speed = 0.00;	//脉宽（电机速度）
double SERVOS_Angle = 0.0;	//角度

double ULTRASONIC_Dist1,ULTRASONIC_Dist2,ULTRASONIC_Dist3;
double COMPASS_Angle = 0;

int state = 1;

int total_num;
double x[256],y[256];

char buf[250];

extern int num;

int main()
{
    int x0 = 9;
    int y0 = 7;

    double MOTOR_Speed_Previous = MOTOR_Speed;
    double SERVOS_Angle_Previous = SERVOS_Angle;

    Init();		//加载

    //串行口
    USART_sendBuf(USART1, "STM32 USART TEST\r\n");

	DelayMs(100);
	
    //主循环
    while(1)
    {
        if(state==0) {
            //应用控制数据到电机和舵机
            if(MOTOR_Speed != MOTOR_Speed_Previous)
            {
                PWM_Configuration(MOTOR_Speed);
                MOTOR_Speed_Previous = MOTOR_Speed;
				continue;
            }

            if(SERVOS_Angle != SERVOS_Angle_Previous)
            {
                s3010_SeTAngle(SERVOS_Angle);
                SERVOS_Angle_Previous = SERVOS_Angle;
				continue;
            }
			
            ULTRASONIC_Read();
			COMPASS_Read();

            sprintf((char*)buf, "ULTRASONIC_Dist1:%f\r\n", ULTRASONIC_Dist1);
			USART_sendBuf(USART1, buf);
			
            sprintf((char*)buf, "ULTRASONIC_Dist2:%f\r\n", ULTRASONIC_Dist2);
			USART_sendBuf(USART1, buf);
			
            sprintf((char*)buf, "ULTRASONIC_Dist3:%f\r\n", ULTRASONIC_Dist3);
			USART_sendBuf(USART1, buf);
			
            sprintf((char*)buf, "COMPASS_Angle:%f\r\n", COMPASS_Angle);
            USART_sendBuf(USART1, buf);
			
        }
        if(state==1) {

            USART_sendBuf(USART1, "STM32 POWER ON\r\n");
			
			ULTRASONIC_Read();
            COMPASS_Read();
			
            //Calculate x0,y0 here
			//x0 = ULTRASONIC_Dist3;
			//y0 = ULTRASONIC_Dist1;
            //End of calculation

            sprintf((char*)buf, "%d\n", x0);
            USART_sendBuf(USART2,buf);
            USART_sendBuf(USART1,buf);
            sprintf((char*)buf, "%d\n", y0);
            USART_sendBuf(USART2,buf);
            USART_sendBuf(USART1,buf);

            state = 2;
        }
        if(state==2) {
            DelayMs(50);
			if(num == total_num * 2 + 1){
				USART_sendBuf(USART1, "DATA TRANSFER COMPLETE\r\n");
				state=3;
			}
        }
		if(state==3) {
			//Add PID here
			DelayMs(50);
		}
    }
}

void Init(void)
{
    //时钟配置
    RCC_Configuration();
    NVIC_Configuration();
    delay_init(72);

    //串口配置
    USART1_Configuration();
    USART2_Configuration();
    USART3_Configuration();
    UART4_Configuration();
    UART5_Configuration();
    USART_ITEnable();

    //PWM配置
    PWMTIM_Configuration(72000/5,0);	      //不分频。PWM频率=Freq

    //指南针配置
    COMPASS_Init();

    //舵机配置
    SERVOS_Init();

    //设置到初始值
    PWM_Configuration(MOTOR_Speed);
    s3010_SeTAngle(SERVOS_Angle);
}
