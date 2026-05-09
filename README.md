# IEEE-EMBSW-ES2604 Embedded C Branch
main.c is the main program file. <br>
uart.c and uart.h are the libraries of data types and functions. <br> 
startup.s is to indicate where to start the program. <br>
linker_script is to link all these files together and gives an executable program.

makefile is made to facilate using terminal in compiling by:<br>
-adding variables (CC, CFLAGS,...etc) to hold the repeated phrases (arm-none-eabi-, -g -mcpu=arm926ej-s,...etc). <br>
-making functions (clean, clean-all, make) to execute all the wanted commands at once. <br>

