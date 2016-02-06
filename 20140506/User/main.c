/**
 * @file
 * @brief ������
 *
 * ����״̬���ṹ����ѭ���Լ����ֳ�ʼ��
 *
 * @author �³� 22011310@SEU
 * @version 
 * @date 
 */

#include "stm32f10x.h"		//�̼���
#include "stdio.h"			//��׼IO
#include "stdlib.h"

#include "Clock_Init.h"		//ʱ��NVIC

#include "bsp_usart.h"		//���пڣ����Ե��� ��ݮ��ͨѶ 3����������

#include "bsp_pwm.h"		//PWM��ֱ�������
#include "bsp_servos.h"		//���

#include "bsp_ultrasonic.h"	//������
#include "bsp_HMC5883L.h"	//ָ����

void Init(void);

double MOTOR_Speed = 0.00;	//��������ٶȣ�
double SERVOS_Angle = 0.0;	//�Ƕ�

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

    Init();		//����

    //���п�
    USART_sendBuf(USART1, "STM32 USART TEST\r\n");

	DelayMs(100);
	
    //��ѭ��
    while(1)
    {
        if(state==0) {
            //Ӧ�ÿ������ݵ�����Ͷ��
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
    //ʱ������
    RCC_Configuration();
    NVIC_Configuration();
    delay_init(72);

    //��������
    USART1_Configuration();
    USART2_Configuration();
    USART3_Configuration();
    UART4_Configuration();
    UART5_Configuration();
    USART_ITEnable();

    //PWM����
    PWMTIM_Configuration(72000/5,0);	      //����Ƶ��PWMƵ��=Freq

    //ָ��������
    COMPASS_Init();

    //�������
    SERVOS_Init();

    //���õ���ʼֵ
    PWM_Configuration(MOTOR_Speed);
    s3010_SeTAngle(SERVOS_Angle);
}
