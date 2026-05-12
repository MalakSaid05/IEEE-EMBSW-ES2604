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

    .reset :
    {
        . = ALIGN(4);
        startup.o(.text)
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


    _st_index_data = .;
    .data :
    {
        . = ALIGN(4);
        _start_data = .;
        *(.data)
        . = ALIGN(4);
        _end_data = .;
    }> SRAM AT> FLASH



    .bss :
    {
        . = ALIGN(4);
        _start_bss = .;
        *(.bss)
        *(.COMMON)
        . = ALIGN(4);
        _end_bss = .;
    }>SRAM

}