CC=arm-none-eabi-
CFLAGS=-g -mcpu=arm926ej-s
INCS=-I .
LIBS=
SRC=$(wildcard *.c)
OBJ=$(SRC:.c=.o)
ASM=$(wildcard *.s)
ASOBJ=$(ASM:.s=.o)

PRJ_NAME=ieee_prj

$(PRJ_NAME).bin: $(PRJ_NAME).elf
	$(CC)objcopy -O binary $< $@

$(PRJ_NAME).elf: $(OBJ) $(ASOBJ)
	$(CC)ld -T linker_script.ld $(LIBS) $(OBJ) $(ASOBJ) -o $@ -Map=$(PRJ_NAME).map

%.o: %.c
	$(CC)gcc -c $(INCS) $(CFLAGS) $< -o $@

%.o: %.s
	$(CC)as $(CFLAGS) $< -o $@

clean-all:
	rm *.o *.map *.elf *.bin
	@echo "all files removed"

clean:
	rm *.elf *.bin
	@echo "executable files removed"