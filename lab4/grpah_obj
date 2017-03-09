#define MAX_POINTS 64

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
		if (o->posX > 0 && o->posY > 0 && o->posX < 128 && o->posY < 64)
		{pixel((o->geo->px[i].x + o->posX) , (o->geo->px[i].y + o->posY), 1 );}
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

static OBJECT alien = 
{
	&alien_geometry, /* geometri för en boll */
	0,0, 			//initiala riktningskordinater
	1,1,			//initial startposition
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};