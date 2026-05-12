.thumb 
.global gpfnvector
.global Reset_Handler
.word _sidata
.word _sdata
.word _edata
.word _sbss
.word _ebss

.section .text.Reset_Handler

Reset_Handler:

    ldr r0, =_sdata
    ldr r1, =_edata
    ldr r2, =_sidata

data_copy_loop:
    cmp r0, r1
    bcs data_copy_done
    ldr r3, [r2]
    str r3, [r0]
    add r0, r0, #4
    add r2, r2, #4
    b data_copy_loop

data_copy_done:
    ldr r0, =_sbss
    ldr r1, =_ebss

bss_init_loop:
    cmp r0, r1
    bcs bss_init_done
    movs r2, #0
    str r2, [r0]
    add r0, r0, #4
    b bss_init_loop

bss_init_done:
    bl main
    b .


.section .text.Default_Handler
Default_Handler :
    b .



.section .isr_vector
gpfnvector:
    .word stack_top
    .word Reset_Handler
    .word NMI_Handler
    .word HardFault_Handler
    .word MemManger_Handler
    .word BusFault_Handler
    .word UsageFault_Handler
    .word 0
    .word 0
    .word 0
    .word 0
    .word SVCall_Handler
    .word DebugMonitor_Handler
    .word 0
    .word PendSV_Handler
    .word Systick_Handler
    .word WWWDG_Handler
    .word PVD_Handler
    .word TAMPER_Handler
    .word RTC_Handler
    .word FLASH_Handler
    .word RCC_Handler
    .word EXTI0_Handler
    .word EXTI1_Handler
    .word EXTI2_Handler
    .word EXTI3_Handler
    .word EXTI4_Handler
    .word DMA1_Channel1_Handler
    .word DMA1_Channel2_Handler
    .word DMA1_Channel3_Handler
    .word DMA1_Channel4_Handler
    .word DMA1_Channel5_Handler
    .word DMA1_Channel6_Handler
    .word ADC1_2_Handler
    .word EXTI9_5_Handler
    .word TIM1_BRK_Handler
    .word TIM1_UP_Handler
    .word TIM1_TGR_COM_Handler
    .word TIM1_CC_Handler
    .word TIM2_Handler
    .word TIM3_Handler
    .word TIM4_Handler
    .word I2C1_EV_Handler
    .word I2C1_ER_Handler
    .word I2C2_EV_Handler
    .word I2C2_ER_Handler
    .word SPI1_Handler
    .word SPI2_Handler
    .word USART1_Handler
    .word USART2_Handler
    .word USART3_Handler
    .word EXTI15_10_Handler
    .word RTCAlarm_Handler
    .word OTF_FS_WKUP_Handler
    .word 0
    .word 0
    .word 0
    .word 0
    .word 0
    .word 0
    .word TIM5_Handler
    .word SPI3_Handler
    .word UART4_Handler
    .word UART5_Handler
    .word TIM6_Handler
    .word TIM7_Handler
    .word DMA2_Channel1_Handler
    .word DMA2_Channel2_Handler
    .word DMA2_Channel3_Handler
    .word DMA2_Channel4_Handler
    .word DMA2_Channel5_Handler
    .word ETH_Handler
    .word ETH_WKUP_Handler
    .word CAN2_TX_Handler
    .word CAN2_RX0_Handler
    .word CAN2_RX1_Handler
    .word CAN2_SCE_Handler
    .word OTG_FS_Handler

.weak NMI_Handler
.thumb_set NMI_Handler, Default_Handler
.weak HardFault_Handler
.thumb_set HardFault_Handler, Default_Handler

.weak MemManger_Handler
.thumb_set MemManger_Handler, Default_Handler

.weak BusFault_Handler
.thumb_set BusFault_Handler, Default_Handler

.weak UsageFault_Handler
.thumb_set UsageFault_Handler, Default_Handler

.weak SVCall_Handler
.thumb_set SVCall_Handler, Default_Handler

.weak DebugMonitor_Handler
.thumb_set DebugMonitor_Handler, Default_Handler

.weak PendSV_Handler
.thumb_set PendSV_Handler, Default_Handler

.weak Systick_Handler
.thumb_set Systick_Handler, Default_Handler

.weak WWWDG_Handler
.thumb_set WWWDG_Handler, Default_Handler

.weak PVD_Handler
.thumb_set PVD_Handler, Default_Handler

.weak TAMPER_Handler
.thumb_set TAMPER_Handler, Default_Handler

.weak RTC_Handler
.thumb_set RTC_Handler, Default_Handler

.weak FLASH_Handler
.thumb_set FLASH_Handler, Default_Handler

.weak RCC_Handler
.thumb_set RCC_Handler, Default_Handler

.weak EXTI0_Handler
.thumb_set EXTI0_Handler, Default_Handler

.weak EXTI1_Handler
.thumb_set EXTI1_Handler, Default_Handler

.weak EXTI2_Handler
.thumb_set EXTI2_Handler, Default_Handler

.weak EXTI3_Handler
.thumb_set EXTI3_Handler, Default_Handler

.weak EXTI4_Handler
.thumb_set EXTI4_Handler, Default_Handler

.weak DMA1_Channel1_Handler
.thumb_set DMA1_Channel1_Handler, Default_Handler

.weak DMA1_Channel2_Handler
.thumb_set DMA1_Channel2_Handler, Default_Handler

.weak DMA1_Channel3_Handler
.thumb_set DMA1_Channel3_Handler, Default_Handler3
.weak DMA1_Channel4_Han3ler
.thumb_set DMA1_Channel4_Handler, Default_Handle5
.weak DMA1_Channel5_Handle6
.thumb_set DMA1_Channel5_Handler, Default_Handler

.weak DMA1_Channel6_Handler
.thumb_set DMA1_Channel6_Handler, Default_Handler

.weak ADC1_2_Handler
.thumb_set ADC1_2_Handler, Default_Handler

.weak EXTI9_5_Handler
.thumb_set EXTI9_5_Handler, Default_Handler

.weak TIM1_BRK_Handler
.thumb_set TIM1_BRK_Handler, Default_Handler

.weak TIM1_UP_Handler
.thumb_set TIM1_UP_Handler, Default_Handler

.weak TIM1_TGR_COM_Handler
.thumb_set TIM1_TGR_COM_Handler, Default_Handler

.weak TIM1_CC_Handler
.thumb_set TIM1_CC_Handler, Default_Handler

.weak TIM2_Handler
.thumb_set TIM2_Handler, Default_Handler

.weak TIM3_Handler
.thumb_set TIM3_Handler, Default_Handler

.weak TIM4_Handler
.thumb_set TIM4_Handler, Default_Handler

.weak I2C1_EV_Handler
.thumb_set I2C1_EV_Handler, Default_Handler

.weak I2C1_ER_Handler
.thumb_set I2C1_ER_Handler, Default_Handler

.weak I2C2_EV_Handler
.thumb_set I2C2_EV_Handler, Default_Handler

.weak I2C2_ER_Handler
.thumb_set I2C2_ER_Handler, Default_Handler

.weak SPI1_Handler
.thumb_set SPI1_Handler, Default_Handler

.weak SPI2_Handler
.thumb_set SPI2_Handler, Default_Handler

.weak USART1_Handler
.thumb_set USART1_Handler, Default_Handler

.weak USART2_Handler
.thumb_set USART2_Handler, Default_Handler

.weak USART3_Handler
.thumb_set USART3_Handler, Default_Handler

.weak EXTI15_10_Handler
.thumb_set EXTI15_10_Handler, Default_Handler

.weak RTCAlarm_Handler
.thumb_set RTCAlarm_Handler, Default_Handler

.weak OTF_FS_WKUP_Handler
.thumb_set OTF_FS_WKUP_Handler, Default_Handler

.weak TIM5_Handler
.thumb_set TIM5_Handler, Default_Handler

.weak SPI3_Handler
.thumb_set SPI3_Handler, Default_Handler

.weak UART4_Handler
.thumb_set UART4_Handler, Default_Handler

.weak UART5_Handler
.thumb_set UART5_Handler, Default_Handler

.weak TIM6_Handler
.thumb_set TIM6_Handler, Default_Handler

.weak TIM7_Handler
.thumb_set TIM7_Handler, Default_Handler

.weak DMA2_Channel1_Handler
.thumb_set DMA2_Channel1_Handler, Default_Handler

.weak DMA2_Channel2_Handler
.thumb_set DMA2_Channel2_Handler, Default_Handler

.weak DMA2_Channel3_Handler
.thumb_set DMA2_Channel3_Handler, Default_Handler

.weak DMA2_Channel4_Handler
.thumb_set DMA2_Channel4_Handler, Default_Handler

.weak DMA2_Channel5_Handler
.thumb_set DMA2_Channel5_Handler, Default_Handler

.weak ETH_Handler
.thumb_set ETH_Handler, Default_Handler

.weak ETH_WKUP_Handler
.thumb_set ETH_WKUP_Handler, Default_Handler

.weak CAN2_TX_Handler
.thumb_set CAN2_TX_Handler, Default_Handler

.weak CAN2_RX0_Handler
.thumb_set CAN2_RX0_Handler, Default_Handler

.weak CAN2_RX1_Handler
.thumb_set CAN2_RX1_Handler, Default_Handler

.weak CAN2_SCE_Handler
.thumb_set CAN2_SCE_Handler, Default_Handler

.weak OTG_FS_Handler
.thumb_set OTG_FS_Handler, Default_Handler

