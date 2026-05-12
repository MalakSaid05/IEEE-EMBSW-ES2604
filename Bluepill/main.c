#include "STM32F401xC_HEADER.h"

void main (){
 clear_nBIT(RCC_CFGR,0);
 clear_nBIT(RCC_CFGR,1);

 clear_nBIT(RCC_CFGR,2);
 clear_nBIT(RCC_CFGR,3);

clear_nBIT(RCC_CFGR,7);

 set_nBIT(RCC_CR,0);
while(get_nBit(RCC_CR,1)==0);
 

 set_nBIT(RCC_AHB1ENR,0);
 while(get_nBit(RCC_AHB1ENR,0)==0);

//set_nBITting output to highspeed
 set_nBIT(GPIOA->OSPEEDR,11); 
  clear_nBIT(GPIOA->OSPEEDR,10);

  set_nBIT(GPIOA->OSPEEDR,9); 
  clear_nBIT(GPIOA->OSPEEDR,8);


  set_nBIT(GPIOA->MODER,10); // output at pin 5
  clear_nBIT(GPIOA->MODER,11);

  set_nBIT(GPIOA->MODER,8); // output at pin 4
  clear_nBIT(GPIOA->MODER,9);

  //output push pull
  clear_nBIT(GPIOA->OTYPER,5);
  clear_nBIT(GPIOA->OTYPER,4);


//   set_nBIT(GPIOA->PUPDR,10); // pull up at pin 5
//   clear_nBIT(GPIOA->PUPDR,11);
  
//    set_nBIT(GPIOA->PUPDR,8); // pull up at pin 4
//   clear_nBIT(GPIOA->PUPDR,9);

  clear_nBIT(GPIOA->MODER,4); // input at pin 2
  clear_nBIT(GPIOA->MODER,5);

  clear_nBIT(GPIOA->MODER,2); // input at pin 1
  clear_nBIT(GPIOA->MODER,3);

  clear_nBIT(GPIOA->PUPDR,4); //pull down at pin 2
  set_nBIT(GPIOA->PUPDR,5);

  clear_nBIT(GPIOA->PUPDR,2); //pull down at pin 1
  set_nBIT(GPIOA->PUPDR,3);
  
while(1){
  if(get_nBit(GPIOA->IDR,2)==1){
    set_nBIT(GPIOA->ODR,4);
   };
  if(get_nBit(GPIOA->IDR,1)==1){
    toggle_nBIT(GPIOA->ODR,5);
   };
};


};

