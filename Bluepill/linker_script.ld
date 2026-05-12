ENTRY (Reset_Handler)
MEMORY {
    FLASH (rx) : ORIGIN =0x08000000 , LENGTH = 256k
    SRAM (rwx) : ORIGIN =0x20000000 , LENGTH = 64K

}
stack_top = ORIGIN(SRAM)+LENGTH(SRAM);

SECTIONS
{ 
    .isr_vector : 
    {
        . = ALIGN(4);
        *(.isr_vector)
        . = ALIGN(4);
    }> FLASH



    .text : 
    {
        . = ALIGN(4);
        *(.text)
        *(.text*)
        . = ALIGN(4);
    }> FLASH

    .rodata :
    {
        . = ALIGN(4);
        *(.rodata)
        *(.rodata*)
        . = ALIGN(4);
    }> FLASH


    _sidata = .;
    .data :
    {
        . = ALIGN(4);
        _sdata = .;
        *(.data)
        . = ALIGN(4);
        _edata = .;
    }> SRAM AT> FLASH



    .bss :
    {
        . = ALIGN(4);
        _sbss = .;
        *(.bss)
        *(.COMMON)
        . = ALIGN(4);
        _ebss = .;
    }>SRAM

}