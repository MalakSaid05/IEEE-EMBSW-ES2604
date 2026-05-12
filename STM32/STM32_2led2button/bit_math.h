#include <stdio.h>
#include "std_types.h"
#ifdef BIT_MATH 
#endif
#ifndef BIT_MATH
#define BIT_MATH

#define clear_nBIT(reg, n) (reg &= (~(1<<n)))
#define set_nBIT(reg, n) (reg |= (1<<n))
#define toggle_nBIT(reg, n) (reg ^= (1<<n))
#define get_nBit(reg, n) 1&(reg>>n)

// void bit8_print(uint8_t x){
//     uint8_t arr[8]={0};
//     for (uint8_t i=0; i<8; i++){
//         arr[7-i]=x%2;
//         x/=2;
//     }
//     for (uint8_t i = 0; i < 8; i++){
//         printf("%d", arr[i]);
//     }

//     printf("\n");
// } 



#endif