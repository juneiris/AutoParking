/**
 * @file
 * @brief ʱ�ӳ�ʼ��
 *
 * ʱ�Ӻʹ����ж����ȼ������ã�SYSTICK�������������ϵ�DEMO
 *
 * ���PWM�ж����ȼ����ڶ���������޸�
 *
 * @author �³� 22011310@SEU + SYSTICKʾ������ԭ����
 * @version 
 * @date 
 */

#include "Clock_Init.h"

void RCC_Configuration()
{
    ErrorStatus HSEStartUpStatus;

    RCC_DeInit();                                                          //��ʼ��RCC�ⲿ�豸�Ĵ���
// RCC_HSICmd(DISABLE);
    RCC_HSEConfig( RCC_HSE_ON );                                           //���ⲿ���پ���

    HSEStartUpStatus = RCC_WaitForHSEStartUp();                            //�ȴ��ⲿ�����豸׼����

    if( HSEStartUpStatus == SUCCESS )                                       //�ⲿ�����豸��׼����
    {

        FLASH_PrefetchBufferCmd(FLASH_PrefetchBuffer_Enable);               //����FLASHԤȡֵ

        FLASH_SetLatency(FLASH_Latency_2);                                  //����FLASH_Lacency��ʱ2����

        RCC_HCLKConfig(RCC_SYSCLK_Div1);                                   //����AHB(HCLK)ʱ��=SYSCLK

        RCC_PCLK1Config(RCC_HCLK_Div2);                                    //����APB1(PCLK1)��=AHBʱ��1/2

        RCC_PCLK2Config(RCC_HCLK_Div1);                                   //����APB2(PCLK2)��=AHB ʱ��

        RCC_ADCCLKConfig(RCC_PCLK2_Div6);                               //����ADCʱ��=PCLK2 1/4

        RCC_PLLConfig(RCC_PLLSource_HSE_Div1, RCC_PLLMul_9);             //����PLLʱ�� == �ⲿ���پ���ʱ��*9

        RCC_PLLCmd(ENABLE);                                             //ʹ��PLL

        while(RCC_GetFlagStatus(RCC_FLAG_PLLRDY)==RESET) {};              //�ȴ�PLLʱ�Ӿ���

        RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);                     //SYSCLK = PLL

        while(RCC_GetSYSCLKSource() != 0x08);                          //���PLLʱ���Ƿ�ΪSYSCLK

    }
}

void NVIC_Configuration(void) {
    NVIC_InitTypeDef NVIC_InitStructure;

#ifdef  VECT_TAB_RAM

    /*���C/C++ Compiler\Preprocessor\Defined symbols�еĶ�����VECT_TAB_RAM���������������ݵı�� */

    NVIC_SetVectorTable(NVIC_VectTab_RAM, 0x0); //����RAM����

#else        //���û�ж���VECT_TAB_RAM

    NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x0);//����Flash�����

#endif        //�����ж����

    //NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x2000);
    NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
	
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
	
    // ����USART1�ж����ȼ�
    NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
    // ����USART2�ж����ȼ�
    NVIC_InitStructure.NVIC_IRQChannel = USART2_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
	
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
    // ����USART3�ж����ȼ�
    NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
    // ����UART4�ж����ȼ�
    NVIC_InitStructure.NVIC_IRQChannel = UART4_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
    // ����UART5�ж����ȼ�
    NVIC_InitStructure.NVIC_IRQChannel = UART5_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
}

void delay_init(u8 SYSCLK)
{
    SysTick_CLKSourceConfig(SysTick_CLKSource_HCLK_Div8);
    fac_us=SYSCLK/8;
    fac_ms=(u16)fac_us*1000;
}

void DelayMs(u16 nms)
{
    u32 temp;
    SysTick->LOAD=(u32)nms*fac_ms ;
    SysTick->VAL=0x00;
    SysTick->CTRL=0x01;
    do
    {
        temp=SysTick->CTRL;
    }
    while(temp&0x01&&!(temp&(1<<16)));
    SysTick->CTRL=0x00;
    SysTick->VAL =0X00;
}


void DelayUs(u32 nus)
{
    u32 temp;
    SysTick->LOAD=nus*fac_us;
    SysTick->VAL=0x00;
    SysTick->CTRL=0x01;
    do
    {
        temp=SysTick->CTRL;
    }
    while(temp&0x01&&!(temp&(1<<16)));
    SysTick->CTRL=0x00;
    SysTick->VAL =0X00;
}
