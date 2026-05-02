#include "uart.h"
#define UART0DR *((volatile unsigned int*)((volatile unsigned int*)0x101f1000))

void send_string(unsigned char* p_tx_str){
    while (*p_tx_str != '\0')
    {
        UART0DR = (unsigned int)(*p_tx_str);
        p_tx_str ++;

    }
    
}