/**
 * @file
 * @brief 时钟初始化
 *
 * 时钟和串口中断优先级的设置，SYSTICK技术引自网络上的DEMO
 *
 * 舵机PWM中断优先级请在舵机驱动中修改
 *
 * @author 陈超 22011310@SEU + SYSTICK示例程序原作者
 * @version 
 * @date 
 */

#include "Clock_Init.h"

void RCC_Configuration()
{
    ErrorStatus HSEStartUpStatus;

    RCC_DeInit();                                                          //初始化RCC外部设备寄存器
// RCC_HSICmd(DISABLE);
    RCC_HSEConfig( RCC_HSE_ON );                                           //打开外部高速晶振

    HSEStartUpStatus = RCC_WaitForHSEStartUp();                            //等待外部高速设备准备好

    if( HSEStartUpStatus == SUCCESS )                                       //外部高速设备已准备好
    {

        FLASH_PrefetchBufferCmd(FLASH_PrefetchBuffer_Enable);               //启动FLASH预取值

        FLASH_SetLatency(FLASH_Latency_2);                                  //设置FLASH_Lacency延时2周期

        RCC_HCLKConfig(RCC_SYSCLK_Div1);                                   //配置AHB(HCLK)时钟=SYSCLK

        RCC_PCLK1Config(RCC_HCLK_Div2);                                    //配置APB1(PCLK1)钟=AHB时钟1/2

        RCC_PCLK2Config(RCC_HCLK_Div1);                                   //配置APB2(PCLK2)钟=AHB 时钟

        RCC_ADCCLKConfig(RCC_PCLK2_Div6);                               //配置ADC时钟=PCLK2 1/4

        RCC_PLLConfig(RCC_PLLSource_HSE_Div1, RCC_PLLMul_9);             //配置PLL时钟 == 外部高速晶体时钟*9

        RCC_PLLCmd(ENABLE);                                             //使能PLL

        while(RCC_GetFlagStatus(RCC_FLAG_PLLRDY)==RESET) {};              //等待PLL时钟就绪

        RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);                     //SYSCLK = PLL

        while(RCC_GetSYSCLKSource() != 0x08);                          //检查PLL时钟是否为SYSCLK

    }
}

void NVIC_Configuration(void) {
    NVIC_InitTypeDef NVIC_InitStructure;

#ifdef  VECT_TAB_RAM

    /*如果C/C++ Compiler\Preprocessor\Defined symbols中的定义了VECT_TAB_RAM（见程序库更改内容的表格） */

    NVIC_SetVectorTable(NVIC_VectTab_RAM, 0x0); //则在RAM调试

#else        //如果没有定义VECT_TAB_RAM

    NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x0);//则在Flash里调试

#endif        //结束判断语句

    //NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x2000);
    NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
	
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
	
    // 配置USART1中断优先级
    NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
    // 配置USART2中断优先级
    NVIC_InitStructure.NVIC_IRQChannel = USART2_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
	
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
    // 配置USART3中断优先级
    NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
    // 配置UART4中断优先级
    NVIC_InitStructure.NVIC_IRQChannel = UART4_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
    // 配置UART5中断优先级
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
