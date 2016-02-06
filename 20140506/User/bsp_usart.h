#include "stm32f10x.h"

void USART1_Configuration(void);
void USART2_Configuration(void);
void USART3_Configuration(void);
void UART4_Configuration(void);
void UART5_Configuration(void);

void USART_ITDisable(void);
void USART_ITEnable(void);

void USART_sendBuf(USART_TypeDef* USARTx, char* rx_data);
