#include "structs.h"




/* Externa avbrott */

#define SYSCFG_EXTCRI1					0x40013808
#define EXTI_IMR 						0x40013C00
#define EXTI_FTSR						0x40013C0C
#define EXTI_PR							0x40013C14	
#define EXTI_IRQ_BPOS 					8
#define EXTI3_IRQVEC					0x2001C064
#define	NVIC_EXTI1_IRQ_BPOS 			(1 << 7)
#define	NVIC_EXTI2_IRQ_BPOS 			(1 << 8)
#define	NVIC_EXTI3_IRQ_BPOS 			(1 << 9)
#define RCC_APB2ENR 					0x40023844

#define IRQ1	2
#define IRQ2	4
#define IRQ3	8

int counter;

void irq_handler(void)
{
	if (( *((unsigned int *) EXTI_PR) & ~IRQ3 ) == IRQ3)
	{
		*((unsigned int *) EXTI_PR) |= IRQ3;
		counter +=1;
		//counter = 0xFF;
	}
	else if (~( *((unsigned int *) EXTI_PR)  == IRQ3))
	{
		*((unsigned int *) EXTI_PR) |= IRQ2;
		counter = 10;
	}
	/*else if (( *((unsigned int *) EXTI_PR) & IRQ1) != 0)
	{
		*((unsigned int *) EXTI_PR) |= IRQ1;
		mad = 1;
	}*/
}

void enable_interrupt(){
	__asm (
	"cpsie i\n"
	);
}

void app_init ( void )
{
	GPIO_D.MODER = 0x55555555;
	GPIO_D.OTYPER = 0x00000000;
	*((unsigned int *)RCC_APB2ENR) |= 0x4000;
	

	*((unsigned int *)SYSCFG_EXTCRI1) &= ~0x0FFF; //clear
	*((unsigned int *)SYSCFG_EXTCRI1) |= 0x4210; //config pinne 3->exti3
	
	#define value 0xD
	*((unsigned int *)EXTI_IMR) |= value; // ON
	*((unsigned int *)EXTI_FTSR) |= value; // neg_trig
	
	*((void (**) (void) ) 0x2001C064) = irq_handler;
	
	*((unsigned int *) 0xE000E100) |= NVIC_EXTI1_IRQ_BPOS;
	*((unsigned int *) 0xE000E100) |= NVIC_EXTI2_IRQ_BPOS;
	*((unsigned int *) 0xE000E100) |= NVIC_EXTI3_IRQ_BPOS;
	
}

/* Graphics */
#define SIMULATOR

#define B_RS 1

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

/*#define portModer ((volatile unsigned int *) (GPIO_E))
#define portOtyper ((volatile unsigned short *) (GPIO_E+0x4))
#define portOspeedr ((volatile unsigned short *) (GPIO_E+0x8))
#define portPupdr ((volatile unsigned short *)(GPIO_E+0xC)) 
#define portIdrLow ((volatile unsigned char *) (GPIO_E+0x10))
#define portIdrHigh ((volatile unsigned char *) (GPIO_E+0x10+1))
#define portOdrLow ((volatile unsigned char *) (GPIO_E+0x14))
#define portOdrHigh ((volatile unsigned char *) (GPIO_E+0x14+1))

#define GPIO_E_MODER ((volatile unsigned int *) (GPIO_E))
#define GPIO_E_OTYPER ((volatile unsigned short *) (GPIO_E+0x4))
#define GPIO_E_PUPDR ((volatile unsigned int *) (GPIO_E+0xC))
#define GPIO_E_IDR_LOW ((volatile unsigned char *) (GPIO_E+0x10))
#define GPIO_E_IDR_HIGH ((volatile unsigned char *) (GPIO_E+0x11))
#define GPIO_E_ODR_LOW ((volatile unsigned char *) (GPIO_E+0x14))
#define GPIO_E_ODR_HIGH ((volatile unsigned char *) (GPIO_E+0x15)) 
*/

#define STK_CTRL ((volatile unsigned int *)(0xE000E010))
#define STK_LOAD ((volatile unsigned int *)(0xE000E014))
#define STK_VAL ((volatile unsigned int *)(0xE000E018)) 

#define MAX_POINTS 20

typedef unsigned char uint8_t;

//Delay funktioner: 

void delay_250ns( void )
{
 /* SystemCoreClock = 168000000 */
 *STK_CTRL = 0;
 *STK_LOAD = ( (168/4) -1 );
 *STK_VAL = 0;
 *STK_CTRL = 5;
 while( (*STK_CTRL & 0x10000 )== 0 )
 {}
 *STK_CTRL = 0;
}

void delay_500ns( void )
{
	delay_250ns();
	delay_250ns();
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



//set up port E
void init_app(void)
{
/* PORT E */
GPIO_E.MODER = 0x55555555; /* all bits outputs */
GPIO_E.OTYPER = 0x00000000; /* outputs are push/pull */
GPIO_E.OSPEEDR = 0x55555555; /* medium speed */
GPIO_E.PUPDR = 0x55550000; /* inputs are pull up */
}

//välj display och ettställ de bitar som är 1 i x
static void graphic_ctrl_bit_set(uint8_t x)
{
*portOdrLow |= ( ~B_SELECT & x );
}
static void graphic_ctrl_bit_clear(uint8_t x)
{
*portOdrLow &= ( ~B_SELECT & ~x );
}

//konfigurera CS-signalerna
static void select_controller(uint8_t controller)
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
	*portModer = 0x00005555;
		/* b15-8 are inputs,
		b7-0 are outputs */
	graphic_ctrl_bit_clear( B_DI );
	graphic_ctrl_bit_set( B_RW );
	delay_500ns();
	while( 1 )
	{
		graphic_ctrl_bit_set( B_E );
		delay_500ns();
		c = *portIdrHigh & 0x80;
		if( c == 0 )break;
		graphic_ctrl_bit_clear( B_E );
		delay_500ns();
	}
	*portModer = 0x55555555;
		/* all bits outputs */
	graphic_ctrl_bit_set( B_E );
}


//läser en byte från displayens bildminne, används i nästa funktion
static uint8_t display_read(uint8_t controller)
{
uint8_t c;
*portModer = 0x00005555;
/* b15-8 are inputs, 7-0 are outputs */
select_controller( controller );
graphic_ctrl_bit_clear( B_E );
graphic_ctrl_bit_set( B_DI | B_RW );
delay_500ns();
graphic_ctrl_bit_set( B_E );
delay_500ns();
c = *portIdrHigh;
graphic_ctrl_bit_clear( B_E );
*portModer = 0x55555555;
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


//funktionen som läser bildminnet, måste läsas två gånger
static uint8_t graphic_read(uint8_t controller)
{
display_read(controller);
return display_read(controller);
}


//skrivfunktion till displayen
static void graphic_write(uint8_t val,
uint8_t controller)
{
	*portOdrHigh = val;
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
		
	*portOdrHigh = 0;
	graphic_ctrl_bit_set( B_E );
	select_controller( 0 );
}


//skriver kommandon och data
static void graphic_writeCommand(uint8_t commandToWrite, uint8_t controller)
{
	graphic_ctrl_bit_clear( B_E );
	graphic_ctrl_bit_clear( B_DI | B_RW );
	graphic_write(commandToWrite, controller);
}

static void graphic_writeData(uint8_t data, uint8_t controller)
{
	graphic_ctrl_bit_clear( B_E );
	graphic_ctrl_bit_set( B_DI );
	graphic_ctrl_bit_clear( B_RW );
	graphic_write(data, controller);
}


//initiering av displayen
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


//tömmer skärmen
void graphic_clearScreen(void)
{
	uint8_t i, j;
	for(j = 0; j < 8; j++)
	{
		graphic_writeCommand(LCD_SET_PAGE | j, B_CS1|B_CS2 );
		graphic_writeCommand(LCD_SET_ADD | 0, B_CS1|B_CS2 );
		for(i = 0; i <= 63; i++){
			graphic_writeData(0, B_CS1|B_CS2);
		}
	}
}


// Funktionen för att välja pixlar som ska sättas igång
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




// Structs

typedef struct tPoint 
{
	uint8_t x;
	uint8_t y;
} POINT;

typedef struct tGeometry
{
	int	numpoints;
	int	sizeX;
	int	sizeY;
	POINT px [MAX_POINTS];
} GEOMETRY, *PGEOMETRY;

GEOMETRY ball_geometry = 
{
	12,		//numpoints
	4,4,		//SizeX, SizeY
	{	
		/* px[0,1,2...] */
		{0,1},{0,2},{1,0},{1,1},{1,2},{1,3},{2,0},{2,1},{2,2},{2,3},{3,1},{3,2}
	}
};


typedef struct tObj{
	PGEOMETRY	geo;
	int			dirX, dirY;
	int			posX, posY;
	void (* draw) (struct tObj *);
	void (* clear) (struct tObj *);
	void (* move) (struct tObj *);
	void (* set_speed) (struct tObj *, int , int );
} OBJECT, *POBJECT;



void set_object_speed (POBJECT o, int speedX, int speedY)
{
	o->dirX = speedX;
	o->dirY = speedY;
}


void draw_object (POBJECT o)
{
	for (int i = 0; i < o->geo->numpoints; i++)
	{
		{pixel((o->geo->px[i].x + o->posX) , (o->geo->px[i].y + o->posY), 1 );}
	}
	
}

void clear_object (POBJECT o)
{
	for (int i = 0; i < o->geo->numpoints; i++)
	{
		{pixel((o->geo->px[i].x + o->posX) , (o->geo->px[i].y + o->posY), 0 );}
	}
	
}

void move_object (POBJECT o)
{
	clear_object(o);
	
	if (o->posX < 1 )
		{ o->dirX = o->dirX * -1; }
	if (o->posX > 128 )
		{ o->dirX = o->dirX * -1; }
	if (o->posY < 1 )
		{ o->dirY = o->dirY * -1; }
	if (o->posY > 64 )
		{ o->dirY = o->dirY * -1; }
		
	o->posY += o->dirY;
	o->posX += o->dirX;
	
	draw_object(o);
}

static OBJECT ball = 
{
	&ball_geometry, /* geometri för en boll */
	0,0, 			//initiala riktningskordinater
	1,1,			//initial startposition
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};