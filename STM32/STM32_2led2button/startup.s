.thumb 
.global gpfnvector
.global Reset_Handler
.word _st_index_data
.word _start_data
.word _end_data
.word _start_bss
.word _end_bss

.section .text.Reset_Handler

Reset_Handler:

    ldr r0, =_start_data
    ldr r1, =_end_data
    ldr r2, =_st_index_data

data_copy_loop:
    cmp r0, r1
    bcs data_copy_done
    ldr r3, [r2]
    str r3, [r0]
    add r0, r0, #4
    add r2, r2, #4
    b data_copy_loop

data_copy_done:
    ldr r0, =_start_bss
    ldr r1, =_end_bss

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
    .word EXTI16_PVD_Handler
    .word EXTI21_TAMP_STAMP_Handler
    .word EXTI22_RTC_WKUP_Handler
    .word FLASH_Handler
    .word RCC_Handler
    .word EXTI0_Handler
    .word EXTI1_Handler
    .word EXTI2_Handler
    .word EXTI3_Handler
    .word EXTI4_Handler
    .word DMA1_Stream0_Handler
    .word DMA1_Stream1_Handler
    .word DMA1_Stream2_Handler
    .word DMA1_Stream3_Handler
    .word DMA1_Stream4_Handler
    .word DMA1_Stream5_Handler
    .word DMA1_Stream6_Handler
    .word ADC_Handler
    .word EXTI9_5_Handler
    .word TIM1_BRK_TIM9_Handler
    .word TIM1_UP_TIM10_Handler
    .word TIM1_TGR_COM_TIM11_Handler
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
    .word EXTI15_10_Handler
    .word EXTI17_Handler
    .word EXTI18_Handler
    .word DMA1_Stream7_Handler
    .word SDIO_Handler
    .word TIM5_Handler
    .word SPI3_Handler
    .word DMA2_Stream0_Handler
    .word DMA2_Stream1_Handler
    .word DMA2_Stream2_Handler
    .word DMA2_Stream3_Handler
    .word DMA2_Stream4_Handler
    .word OTG_FS_Handler
    .word DMA2_Stream5_Handler
    .word DMA2_Stream6_Handle
    .word DMA2_Stream7_Handler
    .word USART6_Handler
    .word I2C3_EV_Handler
    .word I2C3_ER_Handler
    .word FPU_Handler
    .word SPI4_Handler

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

.weak EXTI16_PVD_Handler
.thumb_set EXTI16_PVD_Handler, Default_Handler

.weak EXTI21_TAMP_STAMP_Handler
.thumb_set EXTI21_TAMP_STAMP_Handler, Default_Handler

.weak EXTI22_RTC_WKUP_Handler
.thumb_set EXTI22_RTC_WKUP_Handler, Default_Handler

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

.weak DMA1_Stream0_Handler
.thumb_set DMA1_Stream0_Handler, Default_Handler

.weak DMA1_Stream1_Handler
.thumb_set DMA1_Stream1_Handler, Default_Handler

.weak DMA1_Stream2_Handler
.thumb_set DMA1_Stream2_Handler, Default_Handler

.weak DMA1_Stream3_Handler
.thumb_set DMA1_Stream3_Handler, Default_Handler

.weak DMA1_Stream4_Handler
.thumb_set DMA1_Stream4_Handler, Default_Handler

.weak DMA1_Stream5_Handler
.thumb_set DMA1_Stream5_Handler, Default_Handler

.weak DMA1_Stream6_Handler
.thumb_set DMA1_Stream6_Handler, Default_Handler

.weak ADC_Handler
.thumb_set ADC_Handler, Default_Handler

.weak EXTI9_5_Handler
.thumb_set EXTI9_5_Handler, Default_Handler

.weak TIM1_BRK_TIM9_Handler
.thumb_set TIM1_BRK_TIM9_Handler, Default_Handler

.weak TIM1_UP_TIM10_Handler
.thumb_set TIM1_UP_TIM10_Handler, Default_Handler

.weak TIM1_TGR_COM_TIM11_Handler
.thumb_set TIM1_TGR_COM_TIM11_Handler, Default_Handler

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

.weak EXTI15_10_Handler
.thumb_set EXTI15_10_Handler, Default_Handler

.weak EXTI17_Handler
.thumb_set EXTI17_Handler, Default_Handler

.weak EXTI18_Handler
.thumb_set EXTI18_Handler, Default_Handler

.weak DMA1_Stream7_Handler
.thumb_set DMA1_Stream7_Handler, Default_Handler

.weak SDIO_Handler
.thumb_set SDIO_Handler, Default_Handler

.weak TIM5_Handler
.thumb_set TIM5_Handler, Default_Handler

.weak SPI3_Handler
.thumb_set SPI3_Handler, Default_Handler

.weak DMA2_Stream0_Handler
.thumb_set DMA2_Stream0_Handler, Default_Handler

.weak DMA2_Stream1_Handler
.thumb_set DMA2_Stream1_Handler, Default_Handler

.weak DMA2_Stream2_Handler
.thumb_set DMA2_Stream2_Handler, Default_Handler

.weak DMA2_Stream3_Handler
.thumb_set DMA2_Stream3_Handler, Default_Handler

.weak DMA2_Stream4_Handler
.thumb_set DMA2_Stream4_Handler, Default_Handler

.weak OTG_FS_Handler
.thumb_set OTG_FS_Handler, Default_Handler

.weak DMA2_Stream5_Handler
.thumb_set DMA2_Stream5_Handler, Default_Handler

.weak DMA2_Stream6_Handle
.thumb_set DMA2_Stream6_Handle, Default_Handler

.weak DMA2_Stream7_Handler
.thumb_set DMA2_Stream7_Handler, Default_Handler

.weak USART6_Handler
.thumb_set USART6_Handler, Default_Handler

.weak I2C3_EV_Handler
.thumb_set I2C3_EV_Handler, Default_Handler

.weak I2C3_ER_Handler
.thumb_set I2C3_ER_Handler, Default_Handler

.weak FPU_Handler
.thumb_set FPU_Handler, Default_Handler

.weak SPI4_Handler
.thumb_set SPI4_Handler, Default_Handler

