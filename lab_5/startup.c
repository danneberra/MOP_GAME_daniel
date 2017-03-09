#include "allt.h"


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



int main(int argc, char **argv)
{
			
			char c;
			POBJECT p = &player;
			init_app();
			init_keyb();
			graphic_initalize();	
			graphic_clearScreen();	
			clearBuffers();
			bool gameover	=	false;
			while(	!gameover	) {	
			clearBuffer(0);				
			//			collisionDetection();		
			//updatePlayer();							
			
			//*GPIO_ODR_LOW = keyb();
			c = keyb();
			switch (c)
			{
				case 6: p->set_speed( p, 2, 0 ); break;
				case 4: p->set_speed( p, -2, 0 ); break;
				case 2: p->set_speed( p, 0, -2 ); break;
				case 8: p->set_speed( p, 0, 2 ); break;
			
			}
			update_objects();						
			drawObjects();								
			swapBuffers();		
			delay_milli(40);		
		}	
}

