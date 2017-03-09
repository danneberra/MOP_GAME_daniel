/*
 * 	startup.c
 *
 */
 #include "header.h"
 #include "graphic_objs.h"
 #include "key_input.h"
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	".L1: B .L1\n"				/* never return */
	) ;
}
#ifdef 		SIMULATOR
#define 	DELAY_COUNT 10000
#else
#define		DELAY_COUNT 1000000
#endif
void main(void)
{
	init_app();
	while (1){
		GPIO_E.odrHigh = 0x00;
		delay(DELAY_COUNT);
		GPIO_E.odrHigh = 0xFF;
		delay(DELAY_COUNT);
	}

}

