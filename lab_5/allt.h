//SUPPLEMENTS.H

#define SIMULATOR	
#define MAX_POINTS 64

#define B_E 0x40 /* Enable */
#define B_RST 0x20 /* Reset */
#define B_CS2 0x10 /* Controller Select 2 */
#define B_CS1 8 /* Controller Select 1 */
#define B_SELECT 4 /* ASCII or Graphics select */
#define B_RW 2 /* Read/Write */
#define B_DI 1 /* Data or Instruction : 1 data, 0 Instr */

#define LCD_ON 0x3F /* Display pÃ¥ */
#define LCD_OFF 0x3E /* Av */
#define LCD_SET_ADD 0x40 /* Set X adress (0 â€“ 63) */
#define LCD_SET_PAGE 0xB8 /* Set Y adress (0 â€“ 7) */
#define LCD_DISP_START 0xC0 /* Start adress i display minne */
#define LCD_BUSY 0x80 /* lÃ¤sa ut busy status. R/W skall vara hÃ¶g */

#define LCD_SET_ADD 0x40 /* Set X adress (0 â€“ 63)*/
#define LCD_SET_PAGE 0xB8 /* Set Y adress (0 â€“ 7) */


typedef enum {false = 0, true} bool;

static volatile int DELAY_COUNT;






















































//STRUCTS.H

#include <stdint.h>

typedef struct tag_usart
{
	volatile unsigned short sr;
	volatile unsigned short Unused0;
	volatile unsigned short dr;
	volatile unsigned short Unused1;
	volatile unsigned short brr;
	volatile unsigned short Unused2;
	volatile unsigned short cr1;
	volatile unsigned short Unused3;
	volatile unsigned short cr2;
	volatile unsigned short Unused4;
	volatile unsigned short cr3;
	volatile unsigned short Unused5;
	volatile unsigned short gtpr;
} USART;

 #define USART1	((USART *) 0x40011000)
 
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
}	GPIO;	

#define GPIO_E	(*((volatile	GPIO*)	0x40021000))	
#define GPIO_D	(*((volatile	GPIO*)	0x40020c00))

typedef struct {
				uint32_t				Ctrl;
				uint32_t				Load;
				uint32_t				Val;
} STK_;

#define STK    (*((volatile STK_*)	0xE000E010	))

typedef struct tPoint 
{
	uint8_t x;
	uint8_t y;
} 	POINT;

typedef struct tGeometry
{
	int	numpoints;
	int	sizeX;
	int	sizeY;
	POINT px [MAX_POINTS];
} 	GEOMETRY, *PGEOMETRY;

typedef struct tObj{
	PGEOMETRY	geo;
	int			dirX, dirY;
	int			posX, posY;
	void (* draw) (struct tObj *);
	void (* clear) (struct tObj *);
	void (* move) (struct tObj *);
	void (* set_speed) (struct tObj *, int , int );
} 	OBJECT, *POBJECT;

#define GPIO_D_EX 0x40020C00
#define GPIO_ODR_LOW_EX ((volatile unsigned char *) (GPIO_D_EX+0x14))




























































//KEYPAD.H

void init_keyb (void)
{
	GPIO_D.moder  &= 0x0000FFFF;
	GPIO_D.moder  |= 0x55000000;
	GPIO_D.otyper &= 0x00FF;
	GPIO_D.pupdr  = 0x0000FFFF;
	GPIO_D.pupdr  |= 0xAAAA00000;
}


void kbdActivate (unsigned int row)
{ 

switch (row) 
	{
	case 1: GPIO_D.odrHigh = 0x10; break;
	case 2: GPIO_D.odrHigh = 0x20; break;
	case 3: GPIO_D.odrHigh = 0x40; break;
	case 4: GPIO_D.odrHigh = 0x80; break;
	case 0: GPIO_D.odrHigh = 0x00; break;
	}
}



int kbdGetCol (void)
{ 
unsigned char c;
c = GPIO_D.idrHigh;
if (c & 0x8) return 4;
if (c & 0x4) return 3;
if (c & 0x2) return 2;
if (c & 0x1) return 1;
return 0;
}

unsigned char keyb (void)
{
unsigned char key[]= {1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
int row, col;
for (row=1; row <= 4; row++)
	{
	kbdActivate(row);
	if((col = kbdGetCol() ))
		{
			kbdActivate(0);
			return key [4*(row-1)+(col-1)];
		}
	}
kbdActivate(0);
return 0xFF;
}









































































//GRAPHICS.H

unsigned	char	frameBuffer0[1024], frameBuffer1[1024];		
unsigned	char	*frontBuffer	=	frameBuffer0;	
unsigned	char	*backBuffer	=	frameBuffer1;	


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
switch(controller)
	{
		case 0:				graphic_ctrl_bit_clear(B_CS1|B_CS2);						break;
		case B_CS1 :		graphic_ctrl_bit_set(B_CS1); graphic_ctrl_bit_clear(B_CS2);	break;
		case B_CS2 :		graphic_ctrl_bit_set(B_CS2); graphic_ctrl_bit_clear(B_CS1);	break;
		case B_CS1|B_CS2 :	graphic_ctrl_bit_set(B_CS1|B_CS2);							break;
	}
}

static void graphic_wait_ready(void)
{
unsigned char c;
graphic_ctrl_bit_clear( B_E );
GPIO_E.moder = 0x00005555;	/* b15-8 are inputs, b7-0 are outputs */
graphic_ctrl_bit_clear( B_DI );
graphic_ctrl_bit_set( B_RW );
delay_500ns();
while( 1 )
	{
	graphic_ctrl_bit_set( B_E );
	delay_500ns();
	c = GPIO_E.idrHigh & 0x80;
	if( c == 0 )	break;
	graphic_ctrl_bit_clear( B_E );
	delay_500ns();
	}
GPIO_E.moder = 0x55555555;	/* all bits outputs */
graphic_ctrl_bit_set( B_E );
}

static unsigned char display_read(unsigned char controller)
{
unsigned char c;
GPIO_E.moder = 0x00005555;	/* b15-8 are inputs, 7-0 are outputs */
select_controller( controller );
graphic_ctrl_bit_clear( B_E );
graphic_ctrl_bit_set( B_DI | B_RW );
delay_500ns();
graphic_ctrl_bit_set( B_E );
delay_500ns();
c = GPIO_E.idrHigh;
graphic_ctrl_bit_clear( B_E );
GPIO_E.moder = 0x55555555;	/* all bits outputs */
if	( controller & B_CS1 )
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
if	( controller & B_CS1 )
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
for	(j = 0; j < 8; j++)
	{
	graphic_writeCommand(LCD_SET_PAGE | j, B_CS1|B_CS2 );
	graphic_writeCommand(LCD_SET_ADD | 0, B_CS1|B_CS2 );
	for(i = 0; i <= 63; i++)
		{
		graphic_writeData(0, B_CS1|B_CS2);
		}
	}
}

void pixel(	int	x,	int y,	int set	)		
{	
			if (!set)	return;	
			if(	(x	>	127	)		||	(x	<	0)	||	(y	>	63)	||	(y	<	0)	)	
						return;	
			unsigned char mask	=	1	<<	(y%8);	
			int index	=	0;	
			if(x>=64)	{	
						x	-=	64;	
						index	=	512;	
			}	
			index	+=	x	+	(y/8)*64;	
			backBuffer[index]	|=	mask;	
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

char _tstchar (void)
{
	if ((USART1->sr & 0x20) == 0)
		{return 0;}
		
	return (char) USART1->dr;
}



void	graphic_drawScreen(void)	
{	
unsigned	int k	=	0;	
bool bUpdateAddr	=	true;	
for(uint8_t c=0;	c<2;	c++)
	{ 	 	//	loop	over	both	controllers	(the	two	displays)	
		uint8_t controller	=	(c	==	0)	?	B_CS1	:	B_CS2;	
		for(uint8_t j	=	0;	j	<	8;	j++)
		{	 //	loop	over	pages
			graphic_writeCommand(LCD_SET_PAGE	|	j,	controller	);	
			graphic_writeCommand(LCD_SET_ADD	|	0,	controller);	
			for(uint8_t i	=	0;	i	<=	63;	i++,	k++)
			{	 //	loop	over	addresses
				//	update	display	only	where	it	is	different	from	last	frame				
				if(	backBuffer[k]	!=	frontBuffer[k]	)
				{	
					if(bUpdateAddr )		
						graphic_writeCommand(LCD_SET_ADD	|	i,	controller);	
						graphic_writeData(backBuffer[k],		controller);	
						bUpdateAddr	=	false; //	Display	hardware	auto-increments	the	address	per	write	
				}	else	
						bUpdateAddr	=	true; //	No	write	->	we	need	to	update	the	x-address	next	write	
			}	
		}	
	}	

}	

void	clearBuffer(unsigned	char	val)	{	
for	(int i=0;	i<1024;	i++)	
	backBuffer[i]	=	val;	
}	

void	clearBuffers()	{	
for	(int i=0;	i<1024;	i++)	
	backBuffer[i]	=	frontBuffer[i]	=	0;	
}	

void	swapBuffers()	{	
graphic_drawScreen();	
unsigned	char*	tmp	=	frontBuffer;	//	swap	front/backbuffers
frontBuffer	=	backBuffer;	
backBuffer	=	tmp;	
}	


























































































//GAMEOBJECTS.H

unsigned int n_objects	=	1;
char c;

GEOMETRY ball_geometry = 
{
	12,		//numpoints
	4,4,		//SizeX, SizeY
	{	
		/* px[0,1,2...] */
		{0,1},{0,2},{1,0},{1,1},{1,2},{1,3},{2,0},{2,1},{2,2},{2,3},{3,1},{3,2}
	}
};

GEOMETRY alien_geometry = 
{
	64,		//numpoints
	8,8,		//SizeX, SizeY
	{	
		/* px[0,1,2...] */
		{0,0},{3,0},{4,0},{7,0},
		{0,1},{2,1},{3,1},{4,1},{5,1},{7,1},
		{1,2},{3,2},{4,2},{6,2},
		{1,3},{2,3},{3,3},{4,3},{5,3},{6,3},
		{1,4},{6,4},
		{2,5},{3,5},{4,5},{5,5},{6,5},
		{0,6},{1,6},{3,6},{4,6},{6,6},{7,6},
		{0,7},{4,7},{7,7},
	}
};



void draw_object (POBJECT o)
{
	for (int i = 0; i < o->geo->numpoints; i++)
	{
		if (o->posX > 0 && o->posY > 0 && o->posX < 128 && o->posY < 64)
			{
				pixel((o->geo->px[i].x + o->posX) , (o->geo->px[i].y + o->posY), 1 );
			}
	}
	
}

void clear_object (POBJECT o)
{
	for (int i = 0; i < o->geo->numpoints; i++)
	{
		pixel((o->geo->px[i].x + o->posX) , (o->geo->px[i].y + o->posY), 0 );
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

void set_object_speed (POBJECT o, int speedX, int speedY)
{
	o->dirX = speedX;
	o->dirY = speedY;
}

static OBJECT ball = 
{
	&ball_geometry, /* geometri fÃ¶r en boll */
	0,0, 			//initiala riktningskordinater
	1,1,			//initial startposition
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};

static OBJECT alien = 
{
	&alien_geometry, /* geometri fÃ¶r en boll */
	0,0, 			//initiala riktningskordinater
	1,50,			//initial startposition
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};


/*void collision_detect ()
{
	int collisioner1;
	int collisioner2;
	for int (i=0; i < n_objects; i++;)
	{
		if (objects[i]->posX)
	}
}

*/
static OBJECT player	=	{	
			&ball_geometry,		//	geometri fÃ¶r	en	boll	
			1,1, 		//	ini(ala riktningskoordinater
			1,1, 	//	ini(al	startposi(on
			draw_object,					//	funk(onspekare
			clear_object,	
			move_object,
			set_object_speed
};	

POBJECT	objects[]	=	{&player, &alien};	

void update_objects()	
{					
	for(int i=0; i < n_objects;	i++)	
		
		objects[i]->move(objects[i]);	
}	

void drawObjects()	
{	
	for(int i=0; i < n_objects;	i++)	
		objects[i]->draw(objects[i]);	
}	

void updatePlayer()	{	
			*GPIO_ODR_LOW_EX = keyb();
			c = keyb();
			switch (c)
			{
				case	'6': player.set_speed(	&player,	2,		0);		break;	
				case	'4': player.set_speed(	&player,	-2,		0);		break;	
				case	'8': player.set_speed(	&player,	0,		-2);	break;	
				case	'2': player.set_speed(	&player,	0,		2);		break;	
			}	
}	