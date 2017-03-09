#define SIMULATOR
#include <stdint.h>	

typedef struct {	
				uint32_t				moder;	
				uint16_t				otyper; //	+0x4	
				uint16_t				otReserved;
				uint32_t				ospeedr; //	+0x8
				uint32_t				pupdr; //	+0xc
				uint8_t					idrLow; //	+0x10
				uint8_t					idrHigh; //	+0x11
				uint16_t				idrReserved;
				uint8_t					odrLow; //	+0x14
				uint8_t					odrHigh; //	+0x15
				uint16_t				odrReserved;
}	
GPIO;	

#define GPIO_E	(*((volatile	GPIO*)	0x40021000))	
#define GPIO_D	(*((volatile	GPIO*)	0x40020c00))

typedef struct {
				uint32_t				Ctrl;
				uint32_t				Load;
				uint32_t				Val;
} STK_;

#define STK    (*((volatile STK_*)	0xE000E010	))

#define B_E 0x40 /* Enable */
#define B_RST 0x20 /* Reset */
#define B_CS2 0x10 /* Controller Select 2 */
#define B_CS1 8 /* Controller Select 1 */
#define B_SELECT 4 /* ASCII or Graphics select */
#define B_RW 2 /* Read/Write */
#define B_DI 1 /* Data or Instruction : 1 data, 0 Instr */

#define LCD_ON 0x3F /* Display på */
#define LCD_OFF 0x3E /* Av */
#define LCD_SET_ADD 0x40 /* Set X adress (0 – 63) */
#define LCD_SET_PAGE 0xB8 /* Set Y adress (0 – 7) */
#define LCD_DISP_START 0xC0 /* Start adress i display minne */
#define LCD_BUSY 0x80 /* läsa ut busy status. R/W skall vara hög */

static volatile int DELAY_COUNT;

void delay_250ns( void )
{
 /* SystemCoreClock = 168000000 */
 STK.Ctrl = 0;
 STK.Load = ( (168/4) -1 );
 STK.Val = 0;
 STK.Ctrl = 5;
 while( (STK.Ctrl & 0x10000 )== 0 )
 {}
 STK.Ctrl = 0;
}

void delay_micro( unsigned int us )
{
 while( us-- )
 {
 delay_250ns();
 delay_250ns();
 delay_250ns();
 delay_250ns();
 }
}

void delay_milli( unsigned int ms )
{
 #ifdef SIMULATOR
while( ms-- )
 delay_micro(1);
#else
while( ms-- )
 delay_micro(1000);
#endif
}

void delay_500ns ( void )
{
	delay_250ns();
	delay_250ns();
}


void init_app(void)
{
/* PORT E */
GPIO_E.moder = 0x55555555; /* all bits outputs */
GPIO_E.otyper = 0x00000000; /* outputs are push/pull */
GPIO_E.ospeedr = 0x55555555; /* medium speed */
GPIO_E.pupdr = 0x55550000; /* inputs are pull up */
}

#define LCD_SET_ADD 0x40 /* Set X adress (0 – 63)
*/
#define LCD_SET_PAGE 0xB8 /* Set Y adress (0 – 7) */
static void graphic_ctrl_bit_set( unsigned char x )
{
GPIO_E.odrLow |= ( ~B_SELECT & x );
}
static void graphic_ctrl_bit_clear( unsigned char x )
{
GPIO_E.odrLow &= ( ~B_SELECT & ~x );
}

static void select_controller(unsigned char controller)
{
switch(controller){
case 0:
graphic_ctrl_bit_clear(B_CS1|B_CS2);
break;
case B_CS1 :
graphic_ctrl_bit_set(B_CS1); graphic_ctrl_bit_clear(B_CS2);
break;
case B_CS2 :
graphic_ctrl_bit_set(B_CS2); graphic_ctrl_bit_clear(B_CS1);
break;
case B_CS1|B_CS2 :
graphic_ctrl_bit_set(B_CS1|B_CS2);
break;
}
}

static void graphic_wait_ready(void)
{
unsigned char c;
graphic_ctrl_bit_clear( B_E );
GPIO_E.moder = 0x00005555;
/* b15-8 are inputs,
b7-0 are outputs */
graphic_ctrl_bit_clear( B_DI );
graphic_ctrl_bit_set( B_RW );
delay_500ns();
while( 1 )
{
graphic_ctrl_bit_set( B_E );
delay_500ns();
c = GPIO_E.idrHigh & 0x80;
if( c == 0 )break;
graphic_ctrl_bit_clear( B_E );
delay_500ns();
}
GPIO_E.moder = 0x55555555;
/* all bits outputs */
graphic_ctrl_bit_set( B_E );
}

static unsigned char display_read(unsigned char controller)
{
unsigned char c;
GPIO_E.moder = 0x00005555;
/* b15-8 are inputs, 7-0 are outputs */
select_controller( controller );
graphic_ctrl_bit_clear( B_E );
graphic_ctrl_bit_set( B_DI | B_RW );
delay_500ns();
graphic_ctrl_bit_set( B_E );
delay_500ns();
c = GPIO_E.idrHigh;
graphic_ctrl_bit_clear( B_E );
GPIO_E.moder = 0x55555555;
/* all bits outputs */
if( controller & B_CS1 )
{
select_controller( B_CS1);
graphic_wait_ready();
}
if( controller & B_CS2 )
{
select_controller( B_CS2);
graphic_wait_ready();
}
return c;
}

static unsigned char graphic_read(unsigned char controller)
{
display_read(controller);
return display_read(controller);
}

static void graphic_write(unsigned char val,
unsigned char controller)
{
GPIO_E.odrHigh = val;
select_controller( controller );
delay_500ns();
graphic_ctrl_bit_set( B_E );
delay_500ns();
graphic_ctrl_bit_clear( B_E );
if( controller & B_CS1 )
{
select_controller( B_CS1);
graphic_wait_ready();
}
if( controller & B_CS2 )
{
select_controller( B_CS2);
graphic_wait_ready();
}
GPIO_E.odrHigh = 0;
graphic_ctrl_bit_set( B_E );
select_controller( 0 );
}

static void graphic_writeCommand(unsigned char commandToWrite,
unsigned char controller)
{
graphic_ctrl_bit_clear( B_E );
graphic_ctrl_bit_clear( B_DI | B_RW );
graphic_write(commandToWrite, controller);
}
static void graphic_writeData(unsigned char data,
unsigned char controller)
{
graphic_ctrl_bit_clear( B_E );
graphic_ctrl_bit_set( B_DI );
graphic_ctrl_bit_clear( B_RW );
graphic_write(data, controller);
}

void graphic_initalize(void)
{
graphic_ctrl_bit_set( B_E );
delay_micro(10);
graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
delay_milli( 30 );
graphic_ctrl_bit_set(B_RST);
graphic_writeCommand(LCD_OFF, B_CS1|B_CS2);
graphic_writeCommand(LCD_ON, B_CS1|B_CS2);
graphic_writeCommand(LCD_DISP_START, B_CS1|B_CS2);
graphic_writeCommand(LCD_SET_ADD, B_CS1|B_CS2);
graphic_writeCommand(LCD_SET_PAGE, B_CS1|B_CS2);
select_controller(0);
}

void graphic_clearScreen(void)
{
unsigned char i, j;
for(j = 0; j < 8; j++)
{
graphic_writeCommand(LCD_SET_PAGE | j, B_CS1|B_CS2 );
graphic_writeCommand(LCD_SET_ADD | 0, B_CS1|B_CS2 );
for(i = 0; i <= 63; i++){
graphic_writeData(0, B_CS1|B_CS2);
}
}
}

void pixel( int x, int y, int set )
	{
	uint8_t mask,c, controller;
	int index;
	if( (x > 128 ) || (y > 64) )
		return;
	index = (y-1)/8;
	switch( (y-1)%8 )
	{
		case 0: mask = 1; break;
		case 1: mask = 2; break;
		case 2: mask = 4; break;
		case 3: mask = 8; break;
		case 4: mask = 0x10; break;
		case 5: mask = 0x20; break;
		case 6: mask = 0x40; break;
		case 7: mask = 0x80; break;
	}
	if( set == 0)
		mask = ~mask;
	if(x > 64){
		controller = B_CS2;
		x = x - 65;
	} else {
		controller = B_CS1;
		x = x-1;
	}
	graphic_writeCommand(LCD_SET_ADD | x, controller );
	graphic_writeCommand(LCD_SET_PAGE | index, controller );
	c = graphic_read( controller );
	graphic_writeCommand(LCD_SET_ADD | x, controller );
	if( set ) mask = mask | c;
	else mask = mask & c;
	graphic_writeData( mask, controller);
}

void delay_1mikro ( void )
{
	STK.Ctrl = 0;
	STK.Load = (168 - 1);
	STK.Val = 0;
	STK.Ctrl = 7;
}

void systick_irq_handler (void)
{
	STK.Ctrl = 0;
	DELAY_COUNT -- ;
	if (DELAY_COUNT > 0)
	{
		delay_1mikro();
	}
}

void delay (unsigned int count){
	DELAY_COUNT = count;
	if (count == 0){
		return;
	}
	delay_1mikro();
}
