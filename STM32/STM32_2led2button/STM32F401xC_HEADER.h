#ifndef STM32F401xC_HEADER
#define STM32F401xC_HEADER
#include "std_types.h"
#include "bit_math.h"

#define GPIOA_BASE_ADDR  *(v_uint32_t *)(0x40020000U)
#define GPIOB_BASE_ADDR  *(v_uint32_t *)(0x40020400U)
#define GPIOC_BASE_ADDR  *(v_uint32_t *)(0x40020800U)

#define RCC_CR *((v_uint32_t*)(0X40023800))
#define RCC_CFGR *((v_uint32_t*)(0X40023808))
#define RCC_AHB1ENR *((v_uint32_t*)(0X40023830))

typedef struct {
    uint32_t MODER;
    uint32_t OTYPER;
    uint32_t OSPEEDR;
    uint32_t PUPDR;
    uint32_t IDR;
    uint32_t ODR;
    uint32_t BSRR; 
    uint32_t LCKR;
    uint32_t AFRL;
    uint32_t AFRH;
}GPIO;
#define GPIOA ((GPIO *)GPIOA_BASE_ADDR)
// set(RCCEN,0);
// set(RCCEN,1)
#endif
