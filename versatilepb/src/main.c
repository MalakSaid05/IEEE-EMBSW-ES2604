#include "uart.h"


unsigned char string_buffer[100] = "IEEE\"EmbeddedSW\"";

void main(){
    send_string(string_buffer);
}