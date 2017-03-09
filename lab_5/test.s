   1              		.syntax unified
   2              		.arch armv6-m
   3              		.fpu softvfp
   4              		.eabi_attribute 20, 1
   5              		.eabi_attribute 21, 1
   6              		.eabi_attribute 23, 3
   7              		.eabi_attribute 24, 1
   8              		.eabi_attribute 25, 1
   9              		.eabi_attribute 26, 1
  10              		.eabi_attribute 30, 6
  11              		.eabi_attribute 34, 0
  12              		.eabi_attribute 18, 4
  13              		.thumb
  14              		.syntax unified
  15              		.file	"startup.c"
  16              		.text
  17              	.Ltext0:
  18              		.cfi_sections	.debug_frame
  19              		.bss
  20              		.align	2
  21              	DELAY_COUNT:
  22 0000 00000000 		.space	4
  23              		.text
  24              		.align	2
  25              		.global	init_keyb
  26              		.code	16
  27              		.thumb_func
  29              	init_keyb:
  30              	.LFB0:
  31              		.file 1 "C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5/allt.h"
   1:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** //SUPPLEMENTS.H
   2:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
   3:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define SIMULATOR	
   4:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define MAX_POINTS 64
   5:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
   6:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define B_E 0x40 /* Enable */
   7:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define B_RST 0x20 /* Reset */
   8:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define B_CS2 0x10 /* Controller Select 2 */
   9:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define B_CS1 8 /* Controller Select 1 */
  10:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define B_SELECT 4 /* ASCII or Graphics select */
  11:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define B_RW 2 /* Read/Write */
  12:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define B_DI 1 /* Data or Instruction : 1 data, 0 Instr */
  13:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  14:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define LCD_ON 0x3F /* Display pÃ¥ */
  15:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define LCD_OFF 0x3E /* Av */
  16:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define LCD_SET_ADD 0x40 /* Set X adress (0 â€“ 63) */
  17:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define LCD_SET_PAGE 0xB8 /* Set Y adress (0 â€“ 7) */
  18:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define LCD_DISP_START 0xC0 /* Start adress i display minne */
  19:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define LCD_BUSY 0x80 /* lÃ¤sa ut busy status. R/W skall vara hÃ¶g */
  20:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  21:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define LCD_SET_ADD 0x40 /* Set X adress (0 â€“ 63)*/
  22:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define LCD_SET_PAGE 0xB8 /* Set Y adress (0 â€“ 7) */
  23:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  24:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  25:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** typedef enum {false = 0, true} bool;
  26:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  27:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** static volatile int DELAY_COUNT;
  28:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  29:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  30:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  31:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  32:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  33:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  34:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  35:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  36:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  37:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  38:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  39:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  40:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  41:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  42:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  43:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  44:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  45:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  46:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  47:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  48:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  49:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  50:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  51:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  52:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  53:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  54:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  55:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  56:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  57:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  58:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  59:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  60:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  61:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  62:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  63:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  64:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  65:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  66:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  67:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  68:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  69:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  70:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  71:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  72:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  73:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  74:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  75:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  76:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  77:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  78:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  79:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  80:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  81:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  82:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** //STRUCTS.H
  83:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  84:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #include <stdint.h>
  85:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
  86:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** typedef struct tag_usart
  87:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
  88:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	volatile unsigned short sr;
  89:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	volatile unsigned short Unused0;
  90:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	volatile unsigned short dr;
  91:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	volatile unsigned short Unused1;
  92:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	volatile unsigned short brr;
  93:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	volatile unsigned short Unused2;
  94:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	volatile unsigned short cr1;
  95:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	volatile unsigned short Unused3;
  96:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	volatile unsigned short cr2;
  97:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	volatile unsigned short Unused4;
  98:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	volatile unsigned short cr3;
  99:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	volatile unsigned short Unused5;
 100:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	volatile unsigned short gtpr;
 101:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** } USART;
 102:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 103:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h ****  #define USART1	((USART *) 0x40011000)
 104:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h ****  
 105:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h ****  typedef struct {	
 106:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				uint32_t				moder;	
 107:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				uint16_t				otyper; //	+0x4	
 108:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				uint16_t				otReserved;
 109:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				uint32_t				ospeedr; //	+0x8
 110:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				uint32_t				pupdr; //	+0xc
 111:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				uint8_t					idrLow; //	+0x10
 112:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				uint8_t					idrHigh; //	+0x11
 113:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				uint16_t				idrReserved;
 114:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				uint8_t					odrLow; //	+0x14
 115:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				uint8_t					odrHigh; //	+0x15
 116:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				uint16_t				odrReserved;
 117:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }	GPIO;	
 118:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 119:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define GPIO_E	(*((volatile	GPIO*)	0x40021000))	
 120:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define GPIO_D	(*((volatile	GPIO*)	0x40020c00))
 121:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 122:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** typedef struct {
 123:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				uint32_t				Ctrl;
 124:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				uint32_t				Load;
 125:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				uint32_t				Val;
 126:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** } STK_;
 127:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 128:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define STK    (*((volatile STK_*)	0xE000E010	))
 129:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 130:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** typedef struct tPoint 
 131:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 132:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	uint8_t x;
 133:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	uint8_t y;
 134:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** } 	POINT;
 135:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 136:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** typedef struct tGeometry
 137:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 138:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	int	numpoints;
 139:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	int	sizeX;
 140:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	int	sizeY;
 141:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	POINT px [MAX_POINTS];
 142:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** } 	GEOMETRY, *PGEOMETRY;
 143:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 144:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** typedef struct tObj{
 145:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	PGEOMETRY	geo;
 146:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	int			dirX, dirY;
 147:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	int			posX, posY;
 148:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	void (* draw) (struct tObj *);
 149:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	void (* clear) (struct tObj *);
 150:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	void (* move) (struct tObj *);
 151:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	void (* set_speed) (struct tObj *, int , int );
 152:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** } 	OBJECT, *POBJECT;
 153:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 154:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define GPIO_D_EX 0x40020C00
 155:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #define GPIO_ODR_LOW_EX ((volatile unsigned char *) (GPIO_D_EX+0x14))
 156:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 157:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 158:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 159:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 160:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 161:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 162:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 163:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 164:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 165:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 166:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 167:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 168:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 169:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 170:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 171:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 172:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 173:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 174:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 175:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 176:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 177:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 178:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 179:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 180:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 181:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 182:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 183:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 184:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 185:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 186:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 187:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 188:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 189:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 190:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 191:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 192:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 193:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 194:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 195:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 196:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 197:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 198:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 199:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 200:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 201:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 202:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 203:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 204:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 205:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 206:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 207:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 208:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 209:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 210:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 211:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 212:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 213:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 214:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 215:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 216:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** //KEYPAD.H
 217:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 218:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void init_keyb (void)
 219:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
  32              		.loc 1 219 0
  33              		.cfi_startproc
  34 0000 80B5     		push	{r7, lr}
  35              		.cfi_def_cfa_offset 8
  36              		.cfi_offset 7, -8
  37              		.cfi_offset 14, -4
  38 0002 00AF     		add	r7, sp, #0
  39              		.cfi_def_cfa_register 7
 220:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	GPIO_D.moder  &= 0x0000FFFF;
  40              		.loc 1 220 0
  41 0004 104B     		ldr	r3, .L2
  42 0006 104A     		ldr	r2, .L2
  43 0008 1268     		ldr	r2, [r2]
  44 000a 1204     		lsls	r2, r2, #16
  45 000c 120C     		lsrs	r2, r2, #16
  46 000e 1A60     		str	r2, [r3]
 221:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	GPIO_D.moder  |= 0x55000000;
  47              		.loc 1 221 0
  48 0010 0D4B     		ldr	r3, .L2
  49 0012 0D4A     		ldr	r2, .L2
  50 0014 1268     		ldr	r2, [r2]
  51 0016 AA21     		movs	r1, #170
  52 0018 C905     		lsls	r1, r1, #23
  53 001a 0A43     		orrs	r2, r1
  54 001c 1A60     		str	r2, [r3]
 222:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	GPIO_D.otyper &= 0x00FF;
  55              		.loc 1 222 0
  56 001e 0A4A     		ldr	r2, .L2
  57 0020 094B     		ldr	r3, .L2
  58 0022 9B88     		ldrh	r3, [r3, #4]
  59 0024 9BB2     		uxth	r3, r3
  60 0026 FF21     		movs	r1, #255
  61 0028 0B40     		ands	r3, r1
  62 002a 9BB2     		uxth	r3, r3
  63 002c 9380     		strh	r3, [r2, #4]
 223:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	GPIO_D.pupdr  = 0x0000FFFF;
  64              		.loc 1 223 0
  65 002e 064B     		ldr	r3, .L2
  66 0030 064A     		ldr	r2, .L2+4
  67 0032 DA60     		str	r2, [r3, #12]
 224:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	GPIO_D.pupdr  |= 0xAAAA00000;
  68              		.loc 1 224 0
  69 0034 044B     		ldr	r3, .L2
  70 0036 044A     		ldr	r2, .L2
  71 0038 D268     		ldr	r2, [r2, #12]
  72 003a 1100     		movs	r1, r2
  73 003c 044A     		ldr	r2, .L2+8
  74 003e 0A43     		orrs	r2, r1
  75 0040 DA60     		str	r2, [r3, #12]
 225:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
  76              		.loc 1 225 0
  77 0042 C046     		nop
  78 0044 BD46     		mov	sp, r7
  79              		@ sp needed
  80 0046 80BD     		pop	{r7, pc}
  81              	.L3:
  82              		.align	2
  83              	.L2:
  84 0048 000C0240 		.word	1073875968
  85 004c FFFF0000 		.word	65535
  86 0050 0000A0AA 		.word	-1432354816
  87              		.cfi_endproc
  88              	.LFE0:
  90              		.align	2
  91              		.global	kbdActivate
  92              		.code	16
  93              		.thumb_func
  95              	kbdActivate:
  96              	.LFB1:
 226:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 227:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 228:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void kbdActivate (unsigned int row)
 229:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** { 
  97              		.loc 1 229 0
  98              		.cfi_startproc
  99 0054 80B5     		push	{r7, lr}
 100              		.cfi_def_cfa_offset 8
 101              		.cfi_offset 7, -8
 102              		.cfi_offset 14, -4
 103 0056 82B0     		sub	sp, sp, #8
 104              		.cfi_def_cfa_offset 16
 105 0058 00AF     		add	r7, sp, #0
 106              		.cfi_def_cfa_register 7
 107 005a 7860     		str	r0, [r7, #4]
 230:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 231:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** switch (row) 
 108              		.loc 1 231 0
 109 005c 7B68     		ldr	r3, [r7, #4]
 110 005e 042B     		cmp	r3, #4
 111 0060 19D8     		bhi	.L12
 112 0062 7B68     		ldr	r3, [r7, #4]
 113 0064 9A00     		lsls	r2, r3, #2
 114 0066 0E4B     		ldr	r3, .L13
 115 0068 D318     		adds	r3, r2, r3
 116 006a 1B68     		ldr	r3, [r3]
 117 006c 9F46     		mov	pc, r3
 118              		.section	.rodata
 119              		.align	2
 120              	.L7:
 121 0000 8E000000 		.word	.L6
 122 0004 6E000000 		.word	.L8
 123 0008 76000000 		.word	.L9
 124 000c 7E000000 		.word	.L10
 125 0010 86000000 		.word	.L11
 126              		.text
 127              	.L8:
 232:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 233:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	case 1: GPIO_D.odrHigh = 0x10; break;
 128              		.loc 1 233 0
 129 006e 0D4B     		ldr	r3, .L13+4
 130 0070 1022     		movs	r2, #16
 131 0072 5A75     		strb	r2, [r3, #21]
 132 0074 0FE0     		b	.L5
 133              	.L9:
 234:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	case 2: GPIO_D.odrHigh = 0x20; break;
 134              		.loc 1 234 0
 135 0076 0B4B     		ldr	r3, .L13+4
 136 0078 2022     		movs	r2, #32
 137 007a 5A75     		strb	r2, [r3, #21]
 138 007c 0BE0     		b	.L5
 139              	.L10:
 235:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	case 3: GPIO_D.odrHigh = 0x40; break;
 140              		.loc 1 235 0
 141 007e 094B     		ldr	r3, .L13+4
 142 0080 4022     		movs	r2, #64
 143 0082 5A75     		strb	r2, [r3, #21]
 144 0084 07E0     		b	.L5
 145              	.L11:
 236:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	case 4: GPIO_D.odrHigh = 0x80; break;
 146              		.loc 1 236 0
 147 0086 074B     		ldr	r3, .L13+4
 148 0088 8022     		movs	r2, #128
 149 008a 5A75     		strb	r2, [r3, #21]
 150 008c 03E0     		b	.L5
 151              	.L6:
 237:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	case 0: GPIO_D.odrHigh = 0x00; break;
 152              		.loc 1 237 0
 153 008e 054B     		ldr	r3, .L13+4
 154 0090 0022     		movs	r2, #0
 155 0092 5A75     		strb	r2, [r3, #21]
 156 0094 C046     		nop
 157              	.L5:
 158              	.L12:
 238:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 239:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 159              		.loc 1 239 0
 160 0096 C046     		nop
 161 0098 BD46     		mov	sp, r7
 162 009a 02B0     		add	sp, sp, #8
 163              		@ sp needed
 164 009c 80BD     		pop	{r7, pc}
 165              	.L14:
 166 009e C046     		.align	2
 167              	.L13:
 168 00a0 00000000 		.word	.L7
 169 00a4 000C0240 		.word	1073875968
 170              		.cfi_endproc
 171              	.LFE1:
 173              		.align	2
 174              		.global	kbdGetCol
 175              		.code	16
 176              		.thumb_func
 178              	kbdGetCol:
 179              	.LFB2:
 240:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 241:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 242:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 243:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** int kbdGetCol (void)
 244:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** { 
 180              		.loc 1 244 0
 181              		.cfi_startproc
 182 00a8 80B5     		push	{r7, lr}
 183              		.cfi_def_cfa_offset 8
 184              		.cfi_offset 7, -8
 185              		.cfi_offset 14, -4
 186 00aa 82B0     		sub	sp, sp, #8
 187              		.cfi_def_cfa_offset 16
 188 00ac 00AF     		add	r7, sp, #0
 189              		.cfi_def_cfa_register 7
 245:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** unsigned char c;
 246:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** c = GPIO_D.idrHigh;
 190              		.loc 1 246 0
 191 00ae 124A     		ldr	r2, .L21
 192 00b0 FB1D     		adds	r3, r7, #7
 193 00b2 527C     		ldrb	r2, [r2, #17]
 194 00b4 1A70     		strb	r2, [r3]
 247:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** if (c & 0x8) return 4;
 195              		.loc 1 247 0
 196 00b6 FB1D     		adds	r3, r7, #7
 197 00b8 1B78     		ldrb	r3, [r3]
 198 00ba 0822     		movs	r2, #8
 199 00bc 1340     		ands	r3, r2
 200 00be 01D0     		beq	.L16
 201              		.loc 1 247 0 is_stmt 0 discriminator 1
 202 00c0 0423     		movs	r3, #4
 203 00c2 15E0     		b	.L17
 204              	.L16:
 248:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** if (c & 0x4) return 3;
 205              		.loc 1 248 0 is_stmt 1
 206 00c4 FB1D     		adds	r3, r7, #7
 207 00c6 1B78     		ldrb	r3, [r3]
 208 00c8 0422     		movs	r2, #4
 209 00ca 1340     		ands	r3, r2
 210 00cc 01D0     		beq	.L18
 211              		.loc 1 248 0 is_stmt 0 discriminator 1
 212 00ce 0323     		movs	r3, #3
 213 00d0 0EE0     		b	.L17
 214              	.L18:
 249:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** if (c & 0x2) return 2;
 215              		.loc 1 249 0 is_stmt 1
 216 00d2 FB1D     		adds	r3, r7, #7
 217 00d4 1B78     		ldrb	r3, [r3]
 218 00d6 0222     		movs	r2, #2
 219 00d8 1340     		ands	r3, r2
 220 00da 01D0     		beq	.L19
 221              		.loc 1 249 0 is_stmt 0 discriminator 1
 222 00dc 0223     		movs	r3, #2
 223 00de 07E0     		b	.L17
 224              	.L19:
 250:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** if (c & 0x1) return 1;
 225              		.loc 1 250 0 is_stmt 1
 226 00e0 FB1D     		adds	r3, r7, #7
 227 00e2 1B78     		ldrb	r3, [r3]
 228 00e4 0122     		movs	r2, #1
 229 00e6 1340     		ands	r3, r2
 230 00e8 01D0     		beq	.L20
 231              		.loc 1 250 0 is_stmt 0 discriminator 1
 232 00ea 0123     		movs	r3, #1
 233 00ec 00E0     		b	.L17
 234              	.L20:
 251:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** return 0;
 235              		.loc 1 251 0 is_stmt 1
 236 00ee 0023     		movs	r3, #0
 237              	.L17:
 252:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 238              		.loc 1 252 0
 239 00f0 1800     		movs	r0, r3
 240 00f2 BD46     		mov	sp, r7
 241 00f4 02B0     		add	sp, sp, #8
 242              		@ sp needed
 243 00f6 80BD     		pop	{r7, pc}
 244              	.L22:
 245              		.align	2
 246              	.L21:
 247 00f8 000C0240 		.word	1073875968
 248              		.cfi_endproc
 249              	.LFE2:
 251              		.section	.rodata
 252              		.align	2
 253              	.LC0:
 254 0014 01       		.byte	1
 255 0015 02       		.byte	2
 256 0016 03       		.byte	3
 257 0017 0A       		.byte	10
 258 0018 04       		.byte	4
 259 0019 05       		.byte	5
 260 001a 06       		.byte	6
 261 001b 0B       		.byte	11
 262 001c 07       		.byte	7
 263 001d 08       		.byte	8
 264 001e 09       		.byte	9
 265 001f 0C       		.byte	12
 266 0020 0E       		.byte	14
 267 0021 00       		.byte	0
 268 0022 0F       		.byte	15
 269 0023 0D       		.byte	13
 270              		.text
 271              		.align	2
 272              		.global	keyb
 273              		.code	16
 274              		.thumb_func
 276              	keyb:
 277              	.LFB3:
 253:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 254:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** unsigned char keyb (void)
 255:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 278              		.loc 1 255 0
 279              		.cfi_startproc
 280 00fc 80B5     		push	{r7, lr}
 281              		.cfi_def_cfa_offset 8
 282              		.cfi_offset 7, -8
 283              		.cfi_offset 14, -4
 284 00fe 86B0     		sub	sp, sp, #24
 285              		.cfi_def_cfa_offset 32
 286 0100 00AF     		add	r7, sp, #0
 287              		.cfi_def_cfa_register 7
 256:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** unsigned char key[]= {1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
 288              		.loc 1 256 0
 289 0102 3A00     		movs	r2, r7
 290 0104 174B     		ldr	r3, .L29
 291 0106 1000     		movs	r0, r2
 292 0108 1900     		movs	r1, r3
 293 010a 1023     		movs	r3, #16
 294 010c 1A00     		movs	r2, r3
 295 010e FFF7FEFF 		bl	memcpy
 257:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** int row, col;
 258:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** for (row=1; row <= 4; row++)
 296              		.loc 1 258 0
 297 0112 0123     		movs	r3, #1
 298 0114 7B61     		str	r3, [r7, #20]
 299 0116 19E0     		b	.L24
 300              	.L27:
 259:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 260:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	kbdActivate(row);
 301              		.loc 1 260 0
 302 0118 7B69     		ldr	r3, [r7, #20]
 303 011a 1800     		movs	r0, r3
 304 011c FFF7FEFF 		bl	kbdActivate
 261:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	if((col = kbdGetCol() ))
 305              		.loc 1 261 0
 306 0120 FFF7FEFF 		bl	kbdGetCol
 307 0124 0300     		movs	r3, r0
 308 0126 3B61     		str	r3, [r7, #16]
 309 0128 3B69     		ldr	r3, [r7, #16]
 310 012a 002B     		cmp	r3, #0
 311 012c 0BD0     		beq	.L25
 262:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{
 263:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			kbdActivate(0);
 312              		.loc 1 263 0
 313 012e 0020     		movs	r0, #0
 314 0130 FFF7FEFF 		bl	kbdActivate
 264:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			return key [4*(row-1)+(col-1)];
 315              		.loc 1 264 0
 316 0134 7B69     		ldr	r3, [r7, #20]
 317 0136 013B     		subs	r3, r3, #1
 318 0138 9A00     		lsls	r2, r3, #2
 319 013a 3B69     		ldr	r3, [r7, #16]
 320 013c 013B     		subs	r3, r3, #1
 321 013e D318     		adds	r3, r2, r3
 322 0140 3A00     		movs	r2, r7
 323 0142 D35C     		ldrb	r3, [r2, r3]
 324 0144 09E0     		b	.L28
 325              	.L25:
 258:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 326              		.loc 1 258 0 discriminator 2
 327 0146 7B69     		ldr	r3, [r7, #20]
 328 0148 0133     		adds	r3, r3, #1
 329 014a 7B61     		str	r3, [r7, #20]
 330              	.L24:
 258:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 331              		.loc 1 258 0 is_stmt 0 discriminator 1
 332 014c 7B69     		ldr	r3, [r7, #20]
 333 014e 042B     		cmp	r3, #4
 334 0150 E2DD     		ble	.L27
 265:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		}
 266:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 267:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** kbdActivate(0);
 335              		.loc 1 267 0 is_stmt 1
 336 0152 0020     		movs	r0, #0
 337 0154 FFF7FEFF 		bl	kbdActivate
 268:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** return 0xFF;
 338              		.loc 1 268 0
 339 0158 FF23     		movs	r3, #255
 340              	.L28:
 269:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 341              		.loc 1 269 0 discriminator 1
 342 015a 1800     		movs	r0, r3
 343 015c BD46     		mov	sp, r7
 344 015e 06B0     		add	sp, sp, #24
 345              		@ sp needed
 346 0160 80BD     		pop	{r7, pc}
 347              	.L30:
 348 0162 C046     		.align	2
 349              	.L29:
 350 0164 14000000 		.word	.LC0
 351              		.cfi_endproc
 352              	.LFE3:
 354              		.comm	frameBuffer0,1024,4
 355              		.comm	frameBuffer1,1024,4
 356              		.global	frontBuffer
 357              		.data
 358              		.align	2
 361              	frontBuffer:
 362 0000 00000000 		.word	frameBuffer0
 363              		.global	backBuffer
 364              		.align	2
 367              	backBuffer:
 368 0004 00000000 		.word	frameBuffer1
 369              		.text
 370              		.align	2
 371              		.global	delay_250ns
 372              		.code	16
 373              		.thumb_func
 375              	delay_250ns:
 376              	.LFB4:
 270:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 271:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 272:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 273:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 274:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 275:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 276:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 277:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 278:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 279:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 280:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 281:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 282:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 283:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 284:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 285:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 286:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 287:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 288:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 289:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 290:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 291:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 292:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 293:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 294:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 295:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 296:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 297:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 298:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 299:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 300:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 301:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 302:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 303:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 304:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 305:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 306:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 307:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 308:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 309:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 310:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 311:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 312:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 313:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 314:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 315:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 316:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 317:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 318:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 319:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 320:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 321:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 322:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 323:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 324:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 325:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 326:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 327:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 328:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 329:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 330:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 331:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 332:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 333:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 334:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 335:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 336:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 337:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 338:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 339:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 340:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 341:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 342:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 343:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** //GRAPHICS.H
 344:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 345:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** unsigned	char	frameBuffer0[1024], frameBuffer1[1024];		
 346:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** unsigned	char	*frontBuffer	=	frameBuffer0;	
 347:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** unsigned	char	*backBuffer	=	frameBuffer1;	
 348:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 349:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 350:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void delay_250ns( void )
 351:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 377              		.loc 1 351 0
 378              		.cfi_startproc
 379 0168 80B5     		push	{r7, lr}
 380              		.cfi_def_cfa_offset 8
 381              		.cfi_offset 7, -8
 382              		.cfi_offset 14, -4
 383 016a 00AF     		add	r7, sp, #0
 384              		.cfi_def_cfa_register 7
 352:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h ****  /* SystemCoreClock = 168000000 */
 353:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h ****  STK.Ctrl = 0;
 385              		.loc 1 353 0
 386 016c 0C4B     		ldr	r3, .L33
 387 016e 0022     		movs	r2, #0
 388 0170 1A60     		str	r2, [r3]
 354:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h ****  STK.Load = ( (168/4) -1 );
 389              		.loc 1 354 0
 390 0172 0B4B     		ldr	r3, .L33
 391 0174 2922     		movs	r2, #41
 392 0176 5A60     		str	r2, [r3, #4]
 355:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h ****  STK.Val = 0;
 393              		.loc 1 355 0
 394 0178 094B     		ldr	r3, .L33
 395 017a 0022     		movs	r2, #0
 396 017c 9A60     		str	r2, [r3, #8]
 356:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h ****  STK.Ctrl = 5;
 397              		.loc 1 356 0
 398 017e 084B     		ldr	r3, .L33
 399 0180 0522     		movs	r2, #5
 400 0182 1A60     		str	r2, [r3]
 357:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h ****  while( (STK.Ctrl & 0x10000 )== 0 )
 401              		.loc 1 357 0
 402 0184 C046     		nop
 403              	.L32:
 404              		.loc 1 357 0 is_stmt 0 discriminator 1
 405 0186 064B     		ldr	r3, .L33
 406 0188 1A68     		ldr	r2, [r3]
 407 018a 8023     		movs	r3, #128
 408 018c 5B02     		lsls	r3, r3, #9
 409 018e 1340     		ands	r3, r2
 410 0190 F9D0     		beq	.L32
 358:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h ****  {}
 359:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h ****  STK.Ctrl = 0;
 411              		.loc 1 359 0 is_stmt 1
 412 0192 034B     		ldr	r3, .L33
 413 0194 0022     		movs	r2, #0
 414 0196 1A60     		str	r2, [r3]
 360:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 415              		.loc 1 360 0
 416 0198 C046     		nop
 417 019a BD46     		mov	sp, r7
 418              		@ sp needed
 419 019c 80BD     		pop	{r7, pc}
 420              	.L34:
 421 019e C046     		.align	2
 422              	.L33:
 423 01a0 10E000E0 		.word	-536813552
 424              		.cfi_endproc
 425              	.LFE4:
 427              		.align	2
 428              		.global	delay_micro
 429              		.code	16
 430              		.thumb_func
 432              	delay_micro:
 433              	.LFB5:
 361:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 362:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void delay_micro( unsigned int us )
 363:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 434              		.loc 1 363 0
 435              		.cfi_startproc
 436 01a4 80B5     		push	{r7, lr}
 437              		.cfi_def_cfa_offset 8
 438              		.cfi_offset 7, -8
 439              		.cfi_offset 14, -4
 440 01a6 82B0     		sub	sp, sp, #8
 441              		.cfi_def_cfa_offset 16
 442 01a8 00AF     		add	r7, sp, #0
 443              		.cfi_def_cfa_register 7
 444 01aa 7860     		str	r0, [r7, #4]
 364:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	while( us-- )
 445              		.loc 1 364 0
 446 01ac 07E0     		b	.L36
 447              	.L37:
 365:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 366:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		delay_250ns();
 448              		.loc 1 366 0
 449 01ae FFF7FEFF 		bl	delay_250ns
 367:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		delay_250ns();
 450              		.loc 1 367 0
 451 01b2 FFF7FEFF 		bl	delay_250ns
 368:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		delay_250ns();
 452              		.loc 1 368 0
 453 01b6 FFF7FEFF 		bl	delay_250ns
 369:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		delay_250ns();
 454              		.loc 1 369 0
 455 01ba FFF7FEFF 		bl	delay_250ns
 456              	.L36:
 364:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 457              		.loc 1 364 0
 458 01be 7B68     		ldr	r3, [r7, #4]
 459 01c0 5A1E     		subs	r2, r3, #1
 460 01c2 7A60     		str	r2, [r7, #4]
 461 01c4 002B     		cmp	r3, #0
 462 01c6 F2D1     		bne	.L37
 370:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 371:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 463              		.loc 1 371 0
 464 01c8 C046     		nop
 465 01ca BD46     		mov	sp, r7
 466 01cc 02B0     		add	sp, sp, #8
 467              		@ sp needed
 468 01ce 80BD     		pop	{r7, pc}
 469              		.cfi_endproc
 470              	.LFE5:
 472              		.align	2
 473              		.global	delay_milli
 474              		.code	16
 475              		.thumb_func
 477              	delay_milli:
 478              	.LFB6:
 372:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 373:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void delay_milli( unsigned int ms )
 374:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 479              		.loc 1 374 0
 480              		.cfi_startproc
 481 01d0 80B5     		push	{r7, lr}
 482              		.cfi_def_cfa_offset 8
 483              		.cfi_offset 7, -8
 484              		.cfi_offset 14, -4
 485 01d2 82B0     		sub	sp, sp, #8
 486              		.cfi_def_cfa_offset 16
 487 01d4 00AF     		add	r7, sp, #0
 488              		.cfi_def_cfa_register 7
 489 01d6 7860     		str	r0, [r7, #4]
 375:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h ****  #ifdef SIMULATOR
 376:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** while( ms-- )
 490              		.loc 1 376 0
 491 01d8 02E0     		b	.L39
 492              	.L40:
 377:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h ****  delay_micro(1);
 493              		.loc 1 377 0
 494 01da 0120     		movs	r0, #1
 495 01dc FFF7FEFF 		bl	delay_micro
 496              	.L39:
 376:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h ****  delay_micro(1);
 497              		.loc 1 376 0
 498 01e0 7B68     		ldr	r3, [r7, #4]
 499 01e2 5A1E     		subs	r2, r3, #1
 500 01e4 7A60     		str	r2, [r7, #4]
 501 01e6 002B     		cmp	r3, #0
 502 01e8 F7D1     		bne	.L40
 378:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #else
 379:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** while( ms-- )
 380:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h ****  delay_micro(1000);
 381:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** #endif
 382:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 503              		.loc 1 382 0
 504 01ea C046     		nop
 505 01ec BD46     		mov	sp, r7
 506 01ee 02B0     		add	sp, sp, #8
 507              		@ sp needed
 508 01f0 80BD     		pop	{r7, pc}
 509              		.cfi_endproc
 510              	.LFE6:
 512 01f2 C046     		.align	2
 513              		.global	delay_500ns
 514              		.code	16
 515              		.thumb_func
 517              	delay_500ns:
 518              	.LFB7:
 383:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 384:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void delay_500ns ( void )
 385:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 519              		.loc 1 385 0
 520              		.cfi_startproc
 521 01f4 80B5     		push	{r7, lr}
 522              		.cfi_def_cfa_offset 8
 523              		.cfi_offset 7, -8
 524              		.cfi_offset 14, -4
 525 01f6 00AF     		add	r7, sp, #0
 526              		.cfi_def_cfa_register 7
 386:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	delay_250ns();
 527              		.loc 1 386 0
 528 01f8 FFF7FEFF 		bl	delay_250ns
 387:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	delay_250ns();
 529              		.loc 1 387 0
 530 01fc FFF7FEFF 		bl	delay_250ns
 388:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 531              		.loc 1 388 0
 532 0200 C046     		nop
 533 0202 BD46     		mov	sp, r7
 534              		@ sp needed
 535 0204 80BD     		pop	{r7, pc}
 536              		.cfi_endproc
 537              	.LFE7:
 539 0206 C046     		.align	2
 540              		.global	init_app
 541              		.code	16
 542              		.thumb_func
 544              	init_app:
 545              	.LFB8:
 389:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 390:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 391:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void init_app(void)
 392:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 546              		.loc 1 392 0
 547              		.cfi_startproc
 548 0208 80B5     		push	{r7, lr}
 549              		.cfi_def_cfa_offset 8
 550              		.cfi_offset 7, -8
 551              		.cfi_offset 14, -4
 552 020a 00AF     		add	r7, sp, #0
 553              		.cfi_def_cfa_register 7
 393:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** /* PORT E */
 394:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** GPIO_E.moder = 0x55555555; /* all bits outputs */
 554              		.loc 1 394 0
 555 020c 074B     		ldr	r3, .L43
 556 020e 084A     		ldr	r2, .L43+4
 557 0210 1A60     		str	r2, [r3]
 395:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** GPIO_E.otyper = 0x00000000; /* outputs are push/pull */
 558              		.loc 1 395 0
 559 0212 064B     		ldr	r3, .L43
 560 0214 0022     		movs	r2, #0
 561 0216 9A80     		strh	r2, [r3, #4]
 396:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** GPIO_E.ospeedr = 0x55555555; /* medium speed */
 562              		.loc 1 396 0
 563 0218 044B     		ldr	r3, .L43
 564 021a 054A     		ldr	r2, .L43+4
 565 021c 9A60     		str	r2, [r3, #8]
 397:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** GPIO_E.pupdr = 0x55550000; /* inputs are pull up */
 566              		.loc 1 397 0
 567 021e 034B     		ldr	r3, .L43
 568 0220 044A     		ldr	r2, .L43+8
 569 0222 DA60     		str	r2, [r3, #12]
 398:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 570              		.loc 1 398 0
 571 0224 C046     		nop
 572 0226 BD46     		mov	sp, r7
 573              		@ sp needed
 574 0228 80BD     		pop	{r7, pc}
 575              	.L44:
 576 022a C046     		.align	2
 577              	.L43:
 578 022c 00100240 		.word	1073876992
 579 0230 55555555 		.word	1431655765
 580 0234 00005555 		.word	1431633920
 581              		.cfi_endproc
 582              	.LFE8:
 584              		.align	2
 585              		.code	16
 586              		.thumb_func
 588              	graphic_ctrl_bit_set:
 589              	.LFB9:
 399:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 400:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 401:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** static void graphic_ctrl_bit_set( unsigned char x )
 402:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 590              		.loc 1 402 0
 591              		.cfi_startproc
 592 0238 80B5     		push	{r7, lr}
 593              		.cfi_def_cfa_offset 8
 594              		.cfi_offset 7, -8
 595              		.cfi_offset 14, -4
 596 023a 82B0     		sub	sp, sp, #8
 597              		.cfi_def_cfa_offset 16
 598 023c 00AF     		add	r7, sp, #0
 599              		.cfi_def_cfa_register 7
 600 023e 0200     		movs	r2, r0
 601 0240 FB1D     		adds	r3, r7, #7
 602 0242 1A70     		strb	r2, [r3]
 403:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	GPIO_E.odrLow |= ( ~B_SELECT & x );
 603              		.loc 1 403 0
 604 0244 094A     		ldr	r2, .L46
 605 0246 094B     		ldr	r3, .L46
 606 0248 1B7D     		ldrb	r3, [r3, #20]
 607 024a DBB2     		uxtb	r3, r3
 608 024c D9B2     		uxtb	r1, r3
 609 024e FB1D     		adds	r3, r7, #7
 610 0250 1B78     		ldrb	r3, [r3]
 611 0252 181C     		adds	r0, r3, #0
 612 0254 0423     		movs	r3, #4
 613 0256 9843     		bics	r0, r3
 614 0258 0300     		movs	r3, r0
 615 025a DBB2     		uxtb	r3, r3
 616 025c 0B43     		orrs	r3, r1
 617 025e DBB2     		uxtb	r3, r3
 618 0260 DBB2     		uxtb	r3, r3
 619 0262 1375     		strb	r3, [r2, #20]
 404:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 620              		.loc 1 404 0
 621 0264 C046     		nop
 622 0266 BD46     		mov	sp, r7
 623 0268 02B0     		add	sp, sp, #8
 624              		@ sp needed
 625 026a 80BD     		pop	{r7, pc}
 626              	.L47:
 627              		.align	2
 628              	.L46:
 629 026c 00100240 		.word	1073876992
 630              		.cfi_endproc
 631              	.LFE9:
 633              		.align	2
 634              		.code	16
 635              		.thumb_func
 637              	graphic_ctrl_bit_clear:
 638              	.LFB10:
 405:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 406:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** static void graphic_ctrl_bit_clear( unsigned char x )
 407:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 639              		.loc 1 407 0
 640              		.cfi_startproc
 641 0270 80B5     		push	{r7, lr}
 642              		.cfi_def_cfa_offset 8
 643              		.cfi_offset 7, -8
 644              		.cfi_offset 14, -4
 645 0272 82B0     		sub	sp, sp, #8
 646              		.cfi_def_cfa_offset 16
 647 0274 00AF     		add	r7, sp, #0
 648              		.cfi_def_cfa_register 7
 649 0276 0200     		movs	r2, r0
 650 0278 FB1D     		adds	r3, r7, #7
 651 027a 1A70     		strb	r2, [r3]
 408:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	GPIO_E.odrLow &= ( ~B_SELECT & ~x );
 652              		.loc 1 408 0
 653 027c 0849     		ldr	r1, .L49
 654 027e 084B     		ldr	r3, .L49
 655 0280 1B7D     		ldrb	r3, [r3, #20]
 656 0282 DBB2     		uxtb	r3, r3
 657 0284 FA1D     		adds	r2, r7, #7
 658 0286 1278     		ldrb	r2, [r2]
 659 0288 D243     		mvns	r2, r2
 660 028a D2B2     		uxtb	r2, r2
 661 028c 1340     		ands	r3, r2
 662 028e DBB2     		uxtb	r3, r3
 663 0290 0422     		movs	r2, #4
 664 0292 9343     		bics	r3, r2
 665 0294 DBB2     		uxtb	r3, r3
 666 0296 0B75     		strb	r3, [r1, #20]
 409:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 667              		.loc 1 409 0
 668 0298 C046     		nop
 669 029a BD46     		mov	sp, r7
 670 029c 02B0     		add	sp, sp, #8
 671              		@ sp needed
 672 029e 80BD     		pop	{r7, pc}
 673              	.L50:
 674              		.align	2
 675              	.L49:
 676 02a0 00100240 		.word	1073876992
 677              		.cfi_endproc
 678              	.LFE10:
 680              		.align	2
 681              		.code	16
 682              		.thumb_func
 684              	select_controller:
 685              	.LFB11:
 410:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 411:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** static void select_controller(unsigned char controller)
 412:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 686              		.loc 1 412 0
 687              		.cfi_startproc
 688 02a4 80B5     		push	{r7, lr}
 689              		.cfi_def_cfa_offset 8
 690              		.cfi_offset 7, -8
 691              		.cfi_offset 14, -4
 692 02a6 82B0     		sub	sp, sp, #8
 693              		.cfi_def_cfa_offset 16
 694 02a8 00AF     		add	r7, sp, #0
 695              		.cfi_def_cfa_register 7
 696 02aa 0200     		movs	r2, r0
 697 02ac FB1D     		adds	r3, r7, #7
 698 02ae 1A70     		strb	r2, [r3]
 413:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** switch(controller)
 699              		.loc 1 413 0
 700 02b0 FB1D     		adds	r3, r7, #7
 701 02b2 1B78     		ldrb	r3, [r3]
 702 02b4 082B     		cmp	r3, #8
 703 02b6 0CD0     		beq	.L53
 704 02b8 02DC     		bgt	.L54
 705 02ba 002B     		cmp	r3, #0
 706 02bc 05D0     		beq	.L55
 414:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 415:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		case 0:				graphic_ctrl_bit_clear(B_CS1|B_CS2);						break;
 416:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		case B_CS1 :		graphic_ctrl_bit_set(B_CS1); graphic_ctrl_bit_clear(B_CS2);	break;
 417:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		case B_CS2 :		graphic_ctrl_bit_set(B_CS2); graphic_ctrl_bit_clear(B_CS1);	break;
 418:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		case B_CS1|B_CS2 :	graphic_ctrl_bit_set(B_CS1|B_CS2);							break;
 419:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 420:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 707              		.loc 1 420 0
 708 02be 1AE0     		b	.L58
 709              	.L54:
 413:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** switch(controller)
 710              		.loc 1 413 0
 711 02c0 102B     		cmp	r3, #16
 712 02c2 0DD0     		beq	.L56
 713 02c4 182B     		cmp	r3, #24
 714 02c6 12D0     		beq	.L57
 715              		.loc 1 420 0
 716 02c8 15E0     		b	.L58
 717              	.L55:
 415:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		case B_CS1 :		graphic_ctrl_bit_set(B_CS1); graphic_ctrl_bit_clear(B_CS2);	break;
 718              		.loc 1 415 0
 719 02ca 1820     		movs	r0, #24
 720 02cc FFF7D0FF 		bl	graphic_ctrl_bit_clear
 721 02d0 11E0     		b	.L52
 722              	.L53:
 416:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		case B_CS2 :		graphic_ctrl_bit_set(B_CS2); graphic_ctrl_bit_clear(B_CS1);	break;
 723              		.loc 1 416 0
 724 02d2 0820     		movs	r0, #8
 725 02d4 FFF7B0FF 		bl	graphic_ctrl_bit_set
 726 02d8 1020     		movs	r0, #16
 727 02da FFF7C9FF 		bl	graphic_ctrl_bit_clear
 728 02de 0AE0     		b	.L52
 729              	.L56:
 417:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		case B_CS1|B_CS2 :	graphic_ctrl_bit_set(B_CS1|B_CS2);							break;
 730              		.loc 1 417 0
 731 02e0 1020     		movs	r0, #16
 732 02e2 FFF7A9FF 		bl	graphic_ctrl_bit_set
 733 02e6 0820     		movs	r0, #8
 734 02e8 FFF7C2FF 		bl	graphic_ctrl_bit_clear
 735 02ec 03E0     		b	.L52
 736              	.L57:
 418:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 737              		.loc 1 418 0
 738 02ee 1820     		movs	r0, #24
 739 02f0 FFF7A2FF 		bl	graphic_ctrl_bit_set
 740 02f4 C046     		nop
 741              	.L52:
 742              	.L58:
 743              		.loc 1 420 0
 744 02f6 C046     		nop
 745 02f8 BD46     		mov	sp, r7
 746 02fa 02B0     		add	sp, sp, #8
 747              		@ sp needed
 748 02fc 80BD     		pop	{r7, pc}
 749              		.cfi_endproc
 750              	.LFE11:
 752 02fe C046     		.align	2
 753              		.code	16
 754              		.thumb_func
 756              	graphic_wait_ready:
 757              	.LFB12:
 421:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 422:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** static void graphic_wait_ready(void)
 423:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 758              		.loc 1 423 0
 759              		.cfi_startproc
 760 0300 80B5     		push	{r7, lr}
 761              		.cfi_def_cfa_offset 8
 762              		.cfi_offset 7, -8
 763              		.cfi_offset 14, -4
 764 0302 82B0     		sub	sp, sp, #8
 765              		.cfi_def_cfa_offset 16
 766 0304 00AF     		add	r7, sp, #0
 767              		.cfi_def_cfa_register 7
 424:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** unsigned char c;
 425:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_clear( B_E );
 768              		.loc 1 425 0
 769 0306 4020     		movs	r0, #64
 770 0308 FFF7B2FF 		bl	graphic_ctrl_bit_clear
 426:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** GPIO_E.moder = 0x00005555;	/* b15-8 are inputs, b7-0 are outputs */
 771              		.loc 1 426 0
 772 030c 154B     		ldr	r3, .L65
 773 030e 164A     		ldr	r2, .L65+4
 774 0310 1A60     		str	r2, [r3]
 427:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_clear( B_DI );
 775              		.loc 1 427 0
 776 0312 0120     		movs	r0, #1
 777 0314 FFF7ACFF 		bl	graphic_ctrl_bit_clear
 428:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_set( B_RW );
 778              		.loc 1 428 0
 779 0318 0220     		movs	r0, #2
 780 031a FFF78DFF 		bl	graphic_ctrl_bit_set
 429:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** delay_500ns();
 781              		.loc 1 429 0
 782 031e FFF7FEFF 		bl	delay_500ns
 783              	.L62:
 430:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** while( 1 )
 431:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 432:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	graphic_ctrl_bit_set( B_E );
 784              		.loc 1 432 0
 785 0322 4020     		movs	r0, #64
 786 0324 FFF788FF 		bl	graphic_ctrl_bit_set
 433:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	delay_500ns();
 787              		.loc 1 433 0
 788 0328 FFF7FEFF 		bl	delay_500ns
 434:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	c = GPIO_E.idrHigh & 0x80;
 789              		.loc 1 434 0
 790 032c 0D4B     		ldr	r3, .L65
 791 032e 5B7C     		ldrb	r3, [r3, #17]
 792 0330 DAB2     		uxtb	r2, r3
 793 0332 FB1D     		adds	r3, r7, #7
 794 0334 7F21     		movs	r1, #127
 795 0336 8A43     		bics	r2, r1
 796 0338 1A70     		strb	r2, [r3]
 435:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	if( c == 0 )	break;
 797              		.loc 1 435 0
 798 033a FB1D     		adds	r3, r7, #7
 799 033c 1B78     		ldrb	r3, [r3]
 800 033e 002B     		cmp	r3, #0
 801 0340 05D0     		beq	.L64
 436:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	graphic_ctrl_bit_clear( B_E );
 802              		.loc 1 436 0
 803 0342 4020     		movs	r0, #64
 804 0344 FFF794FF 		bl	graphic_ctrl_bit_clear
 437:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	delay_500ns();
 805              		.loc 1 437 0
 806 0348 FFF7FEFF 		bl	delay_500ns
 438:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 807              		.loc 1 438 0
 808 034c E9E7     		b	.L62
 809              	.L64:
 435:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	graphic_ctrl_bit_clear( B_E );
 810              		.loc 1 435 0
 811 034e C046     		nop
 439:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** GPIO_E.moder = 0x55555555;	/* all bits outputs */
 812              		.loc 1 439 0
 813 0350 044B     		ldr	r3, .L65
 814 0352 064A     		ldr	r2, .L65+8
 815 0354 1A60     		str	r2, [r3]
 440:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_set( B_E );
 816              		.loc 1 440 0
 817 0356 4020     		movs	r0, #64
 818 0358 FFF76EFF 		bl	graphic_ctrl_bit_set
 441:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 819              		.loc 1 441 0
 820 035c C046     		nop
 821 035e BD46     		mov	sp, r7
 822 0360 02B0     		add	sp, sp, #8
 823              		@ sp needed
 824 0362 80BD     		pop	{r7, pc}
 825              	.L66:
 826              		.align	2
 827              	.L65:
 828 0364 00100240 		.word	1073876992
 829 0368 55550000 		.word	21845
 830 036c 55555555 		.word	1431655765
 831              		.cfi_endproc
 832              	.LFE12:
 834              		.align	2
 835              		.code	16
 836              		.thumb_func
 838              	display_read:
 839              	.LFB13:
 442:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 443:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** static unsigned char display_read(unsigned char controller)
 444:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 840              		.loc 1 444 0
 841              		.cfi_startproc
 842 0370 80B5     		push	{r7, lr}
 843              		.cfi_def_cfa_offset 8
 844              		.cfi_offset 7, -8
 845              		.cfi_offset 14, -4
 846 0372 84B0     		sub	sp, sp, #16
 847              		.cfi_def_cfa_offset 24
 848 0374 00AF     		add	r7, sp, #0
 849              		.cfi_def_cfa_register 7
 850 0376 0200     		movs	r2, r0
 851 0378 FB1D     		adds	r3, r7, #7
 852 037a 1A70     		strb	r2, [r3]
 445:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** unsigned char c;
 446:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** GPIO_E.moder = 0x00005555;	/* b15-8 are inputs, 7-0 are outputs */
 853              		.loc 1 446 0
 854 037c 1D4B     		ldr	r3, .L71
 855 037e 1E4A     		ldr	r2, .L71+4
 856 0380 1A60     		str	r2, [r3]
 447:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** select_controller( controller );
 857              		.loc 1 447 0
 858 0382 FB1D     		adds	r3, r7, #7
 859 0384 1B78     		ldrb	r3, [r3]
 860 0386 1800     		movs	r0, r3
 861 0388 FFF78CFF 		bl	select_controller
 448:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_clear( B_E );
 862              		.loc 1 448 0
 863 038c 4020     		movs	r0, #64
 864 038e FFF76FFF 		bl	graphic_ctrl_bit_clear
 449:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_set( B_DI | B_RW );
 865              		.loc 1 449 0
 866 0392 0320     		movs	r0, #3
 867 0394 FFF750FF 		bl	graphic_ctrl_bit_set
 450:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** delay_500ns();
 868              		.loc 1 450 0
 869 0398 FFF7FEFF 		bl	delay_500ns
 451:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_set( B_E );
 870              		.loc 1 451 0
 871 039c 4020     		movs	r0, #64
 872 039e FFF74BFF 		bl	graphic_ctrl_bit_set
 452:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** delay_500ns();
 873              		.loc 1 452 0
 874 03a2 FFF7FEFF 		bl	delay_500ns
 453:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** c = GPIO_E.idrHigh;
 875              		.loc 1 453 0
 876 03a6 134A     		ldr	r2, .L71
 877 03a8 0F23     		movs	r3, #15
 878 03aa FB18     		adds	r3, r7, r3
 879 03ac 527C     		ldrb	r2, [r2, #17]
 880 03ae 1A70     		strb	r2, [r3]
 454:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_clear( B_E );
 881              		.loc 1 454 0
 882 03b0 4020     		movs	r0, #64
 883 03b2 FFF75DFF 		bl	graphic_ctrl_bit_clear
 455:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** GPIO_E.moder = 0x55555555;	/* all bits outputs */
 884              		.loc 1 455 0
 885 03b6 0F4B     		ldr	r3, .L71
 886 03b8 104A     		ldr	r2, .L71+8
 887 03ba 1A60     		str	r2, [r3]
 456:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** if	( controller & B_CS1 )
 888              		.loc 1 456 0
 889 03bc FB1D     		adds	r3, r7, #7
 890 03be 1B78     		ldrb	r3, [r3]
 891 03c0 0822     		movs	r2, #8
 892 03c2 1340     		ands	r3, r2
 893 03c4 04D0     		beq	.L68
 457:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 458:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	select_controller( B_CS1);
 894              		.loc 1 458 0
 895 03c6 0820     		movs	r0, #8
 896 03c8 FFF76CFF 		bl	select_controller
 459:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	graphic_wait_ready();
 897              		.loc 1 459 0
 898 03cc FFF798FF 		bl	graphic_wait_ready
 899              	.L68:
 460:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 461:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	if( controller & B_CS2 )
 900              		.loc 1 461 0
 901 03d0 FB1D     		adds	r3, r7, #7
 902 03d2 1B78     		ldrb	r3, [r3]
 903 03d4 1022     		movs	r2, #16
 904 03d6 1340     		ands	r3, r2
 905 03d8 04D0     		beq	.L69
 462:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 463:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	select_controller( B_CS2);
 906              		.loc 1 463 0
 907 03da 1020     		movs	r0, #16
 908 03dc FFF762FF 		bl	select_controller
 464:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	graphic_wait_ready();
 909              		.loc 1 464 0
 910 03e0 FFF78EFF 		bl	graphic_wait_ready
 911              	.L69:
 465:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 466:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** return c;
 912              		.loc 1 466 0
 913 03e4 0F23     		movs	r3, #15
 914 03e6 FB18     		adds	r3, r7, r3
 915 03e8 1B78     		ldrb	r3, [r3]
 467:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 916              		.loc 1 467 0
 917 03ea 1800     		movs	r0, r3
 918 03ec BD46     		mov	sp, r7
 919 03ee 04B0     		add	sp, sp, #16
 920              		@ sp needed
 921 03f0 80BD     		pop	{r7, pc}
 922              	.L72:
 923 03f2 C046     		.align	2
 924              	.L71:
 925 03f4 00100240 		.word	1073876992
 926 03f8 55550000 		.word	21845
 927 03fc 55555555 		.word	1431655765
 928              		.cfi_endproc
 929              	.LFE13:
 931              		.align	2
 932              		.code	16
 933              		.thumb_func
 935              	graphic_read:
 936              	.LFB14:
 468:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 469:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** static unsigned char graphic_read(unsigned char controller)
 470:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 937              		.loc 1 470 0
 938              		.cfi_startproc
 939 0400 80B5     		push	{r7, lr}
 940              		.cfi_def_cfa_offset 8
 941              		.cfi_offset 7, -8
 942              		.cfi_offset 14, -4
 943 0402 82B0     		sub	sp, sp, #8
 944              		.cfi_def_cfa_offset 16
 945 0404 00AF     		add	r7, sp, #0
 946              		.cfi_def_cfa_register 7
 947 0406 0200     		movs	r2, r0
 948 0408 FB1D     		adds	r3, r7, #7
 949 040a 1A70     		strb	r2, [r3]
 471:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** display_read(controller);
 950              		.loc 1 471 0
 951 040c FB1D     		adds	r3, r7, #7
 952 040e 1B78     		ldrb	r3, [r3]
 953 0410 1800     		movs	r0, r3
 954 0412 FFF7ADFF 		bl	display_read
 472:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** return display_read(controller);
 955              		.loc 1 472 0
 956 0416 FB1D     		adds	r3, r7, #7
 957 0418 1B78     		ldrb	r3, [r3]
 958 041a 1800     		movs	r0, r3
 959 041c FFF7A8FF 		bl	display_read
 960 0420 0300     		movs	r3, r0
 473:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 961              		.loc 1 473 0
 962 0422 1800     		movs	r0, r3
 963 0424 BD46     		mov	sp, r7
 964 0426 02B0     		add	sp, sp, #8
 965              		@ sp needed
 966 0428 80BD     		pop	{r7, pc}
 967              		.cfi_endproc
 968              	.LFE14:
 970 042a C046     		.align	2
 971              		.code	16
 972              		.thumb_func
 974              	graphic_write:
 975              	.LFB15:
 474:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 475:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** static void graphic_write(unsigned char val,
 476:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 						unsigned char controller)
 477:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 976              		.loc 1 477 0
 977              		.cfi_startproc
 978 042c 80B5     		push	{r7, lr}
 979              		.cfi_def_cfa_offset 8
 980              		.cfi_offset 7, -8
 981              		.cfi_offset 14, -4
 982 042e 82B0     		sub	sp, sp, #8
 983              		.cfi_def_cfa_offset 16
 984 0430 00AF     		add	r7, sp, #0
 985              		.cfi_def_cfa_register 7
 986 0432 0200     		movs	r2, r0
 987 0434 FB1D     		adds	r3, r7, #7
 988 0436 1A70     		strb	r2, [r3]
 989 0438 BB1D     		adds	r3, r7, #6
 990 043a 0A1C     		adds	r2, r1, #0
 991 043c 1A70     		strb	r2, [r3]
 478:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** GPIO_E.odrHigh = val;
 992              		.loc 1 478 0
 993 043e 1A4A     		ldr	r2, .L78
 994 0440 FB1D     		adds	r3, r7, #7
 995 0442 1B78     		ldrb	r3, [r3]
 996 0444 5375     		strb	r3, [r2, #21]
 479:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** select_controller( controller );
 997              		.loc 1 479 0
 998 0446 BB1D     		adds	r3, r7, #6
 999 0448 1B78     		ldrb	r3, [r3]
 1000 044a 1800     		movs	r0, r3
 1001 044c FFF72AFF 		bl	select_controller
 480:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** delay_500ns();
 1002              		.loc 1 480 0
 1003 0450 FFF7FEFF 		bl	delay_500ns
 481:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_set( B_E );
 1004              		.loc 1 481 0
 1005 0454 4020     		movs	r0, #64
 1006 0456 FFF7EFFE 		bl	graphic_ctrl_bit_set
 482:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** delay_500ns();
 1007              		.loc 1 482 0
 1008 045a FFF7FEFF 		bl	delay_500ns
 483:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_clear( B_E );
 1009              		.loc 1 483 0
 1010 045e 4020     		movs	r0, #64
 1011 0460 FFF706FF 		bl	graphic_ctrl_bit_clear
 484:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** if	( controller & B_CS1 )
 1012              		.loc 1 484 0
 1013 0464 BB1D     		adds	r3, r7, #6
 1014 0466 1B78     		ldrb	r3, [r3]
 1015 0468 0822     		movs	r2, #8
 1016 046a 1340     		ands	r3, r2
 1017 046c 04D0     		beq	.L76
 485:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 486:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	select_controller( B_CS1);
 1018              		.loc 1 486 0
 1019 046e 0820     		movs	r0, #8
 1020 0470 FFF718FF 		bl	select_controller
 487:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	graphic_wait_ready();
 1021              		.loc 1 487 0
 1022 0474 FFF744FF 		bl	graphic_wait_ready
 1023              	.L76:
 488:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 489:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** if( controller & B_CS2 )
 1024              		.loc 1 489 0
 1025 0478 BB1D     		adds	r3, r7, #6
 1026 047a 1B78     		ldrb	r3, [r3]
 1027 047c 1022     		movs	r2, #16
 1028 047e 1340     		ands	r3, r2
 1029 0480 04D0     		beq	.L77
 490:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 491:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	select_controller( B_CS2);
 1030              		.loc 1 491 0
 1031 0482 1020     		movs	r0, #16
 1032 0484 FFF70EFF 		bl	select_controller
 492:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	graphic_wait_ready();
 1033              		.loc 1 492 0
 1034 0488 FFF73AFF 		bl	graphic_wait_ready
 1035              	.L77:
 493:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 494:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** GPIO_E.odrHigh = 0;
 1036              		.loc 1 494 0
 1037 048c 064B     		ldr	r3, .L78
 1038 048e 0022     		movs	r2, #0
 1039 0490 5A75     		strb	r2, [r3, #21]
 495:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_set( B_E );
 1040              		.loc 1 495 0
 1041 0492 4020     		movs	r0, #64
 1042 0494 FFF7D0FE 		bl	graphic_ctrl_bit_set
 496:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** select_controller( 0 );
 1043              		.loc 1 496 0
 1044 0498 0020     		movs	r0, #0
 1045 049a FFF703FF 		bl	select_controller
 497:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 1046              		.loc 1 497 0
 1047 049e C046     		nop
 1048 04a0 BD46     		mov	sp, r7
 1049 04a2 02B0     		add	sp, sp, #8
 1050              		@ sp needed
 1051 04a4 80BD     		pop	{r7, pc}
 1052              	.L79:
 1053 04a6 C046     		.align	2
 1054              	.L78:
 1055 04a8 00100240 		.word	1073876992
 1056              		.cfi_endproc
 1057              	.LFE15:
 1059              		.align	2
 1060              		.code	16
 1061              		.thumb_func
 1063              	graphic_writeCommand:
 1064              	.LFB16:
 498:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 499:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** static void graphic_writeCommand(unsigned char commandToWrite,
 500:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 								unsigned char controller)
 501:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 1065              		.loc 1 501 0
 1066              		.cfi_startproc
 1067 04ac 80B5     		push	{r7, lr}
 1068              		.cfi_def_cfa_offset 8
 1069              		.cfi_offset 7, -8
 1070              		.cfi_offset 14, -4
 1071 04ae 82B0     		sub	sp, sp, #8
 1072              		.cfi_def_cfa_offset 16
 1073 04b0 00AF     		add	r7, sp, #0
 1074              		.cfi_def_cfa_register 7
 1075 04b2 0200     		movs	r2, r0
 1076 04b4 FB1D     		adds	r3, r7, #7
 1077 04b6 1A70     		strb	r2, [r3]
 1078 04b8 BB1D     		adds	r3, r7, #6
 1079 04ba 0A1C     		adds	r2, r1, #0
 1080 04bc 1A70     		strb	r2, [r3]
 502:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_clear( B_E );
 1081              		.loc 1 502 0
 1082 04be 4020     		movs	r0, #64
 1083 04c0 FFF7D6FE 		bl	graphic_ctrl_bit_clear
 503:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_clear( B_DI | B_RW );
 1084              		.loc 1 503 0
 1085 04c4 0320     		movs	r0, #3
 1086 04c6 FFF7D3FE 		bl	graphic_ctrl_bit_clear
 504:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_write(commandToWrite, controller);
 1087              		.loc 1 504 0
 1088 04ca BB1D     		adds	r3, r7, #6
 1089 04cc 1A78     		ldrb	r2, [r3]
 1090 04ce FB1D     		adds	r3, r7, #7
 1091 04d0 1B78     		ldrb	r3, [r3]
 1092 04d2 1100     		movs	r1, r2
 1093 04d4 1800     		movs	r0, r3
 1094 04d6 FFF7A9FF 		bl	graphic_write
 505:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 1095              		.loc 1 505 0
 1096 04da C046     		nop
 1097 04dc BD46     		mov	sp, r7
 1098 04de 02B0     		add	sp, sp, #8
 1099              		@ sp needed
 1100 04e0 80BD     		pop	{r7, pc}
 1101              		.cfi_endproc
 1102              	.LFE16:
 1104 04e2 C046     		.align	2
 1105              		.code	16
 1106              		.thumb_func
 1108              	graphic_writeData:
 1109              	.LFB17:
 506:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 507:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** static void graphic_writeData(unsigned char data,
 508:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 							unsigned char controller)
 509:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 1110              		.loc 1 509 0
 1111              		.cfi_startproc
 1112 04e4 80B5     		push	{r7, lr}
 1113              		.cfi_def_cfa_offset 8
 1114              		.cfi_offset 7, -8
 1115              		.cfi_offset 14, -4
 1116 04e6 82B0     		sub	sp, sp, #8
 1117              		.cfi_def_cfa_offset 16
 1118 04e8 00AF     		add	r7, sp, #0
 1119              		.cfi_def_cfa_register 7
 1120 04ea 0200     		movs	r2, r0
 1121 04ec FB1D     		adds	r3, r7, #7
 1122 04ee 1A70     		strb	r2, [r3]
 1123 04f0 BB1D     		adds	r3, r7, #6
 1124 04f2 0A1C     		adds	r2, r1, #0
 1125 04f4 1A70     		strb	r2, [r3]
 510:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_clear( B_E );
 1126              		.loc 1 510 0
 1127 04f6 4020     		movs	r0, #64
 1128 04f8 FFF7BAFE 		bl	graphic_ctrl_bit_clear
 511:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_set( B_DI );
 1129              		.loc 1 511 0
 1130 04fc 0120     		movs	r0, #1
 1131 04fe FFF79BFE 		bl	graphic_ctrl_bit_set
 512:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_clear( B_RW );
 1132              		.loc 1 512 0
 1133 0502 0220     		movs	r0, #2
 1134 0504 FFF7B4FE 		bl	graphic_ctrl_bit_clear
 513:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_write(data, controller);
 1135              		.loc 1 513 0
 1136 0508 BB1D     		adds	r3, r7, #6
 1137 050a 1A78     		ldrb	r2, [r3]
 1138 050c FB1D     		adds	r3, r7, #7
 1139 050e 1B78     		ldrb	r3, [r3]
 1140 0510 1100     		movs	r1, r2
 1141 0512 1800     		movs	r0, r3
 1142 0514 FFF78AFF 		bl	graphic_write
 514:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 1143              		.loc 1 514 0
 1144 0518 C046     		nop
 1145 051a BD46     		mov	sp, r7
 1146 051c 02B0     		add	sp, sp, #8
 1147              		@ sp needed
 1148 051e 80BD     		pop	{r7, pc}
 1149              		.cfi_endproc
 1150              	.LFE17:
 1152              		.align	2
 1153              		.global	graphic_initalize
 1154              		.code	16
 1155              		.thumb_func
 1157              	graphic_initalize:
 1158              	.LFB18:
 515:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 516:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void graphic_initalize(void)
 517:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 1159              		.loc 1 517 0
 1160              		.cfi_startproc
 1161 0520 80B5     		push	{r7, lr}
 1162              		.cfi_def_cfa_offset 8
 1163              		.cfi_offset 7, -8
 1164              		.cfi_offset 14, -4
 1165 0522 00AF     		add	r7, sp, #0
 1166              		.cfi_def_cfa_register 7
 518:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_set( B_E );
 1167              		.loc 1 518 0
 1168 0524 4020     		movs	r0, #64
 1169 0526 FFF787FE 		bl	graphic_ctrl_bit_set
 519:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** delay_micro(10);
 1170              		.loc 1 519 0
 1171 052a 0A20     		movs	r0, #10
 1172 052c FFF7FEFF 		bl	delay_micro
 520:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
 1173              		.loc 1 520 0
 1174 0530 7820     		movs	r0, #120
 1175 0532 FFF79DFE 		bl	graphic_ctrl_bit_clear
 521:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** delay_milli( 30 );
 1176              		.loc 1 521 0
 1177 0536 1E20     		movs	r0, #30
 1178 0538 FFF7FEFF 		bl	delay_milli
 522:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_ctrl_bit_set(B_RST);
 1179              		.loc 1 522 0
 1180 053c 2020     		movs	r0, #32
 1181 053e FFF77BFE 		bl	graphic_ctrl_bit_set
 523:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_writeCommand(LCD_OFF, B_CS1|B_CS2);
 1182              		.loc 1 523 0
 1183 0542 1821     		movs	r1, #24
 1184 0544 3E20     		movs	r0, #62
 1185 0546 FFF7B1FF 		bl	graphic_writeCommand
 524:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_writeCommand(LCD_ON, B_CS1|B_CS2);
 1186              		.loc 1 524 0
 1187 054a 1821     		movs	r1, #24
 1188 054c 3F20     		movs	r0, #63
 1189 054e FFF7ADFF 		bl	graphic_writeCommand
 525:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_writeCommand(LCD_DISP_START, B_CS1|B_CS2);
 1190              		.loc 1 525 0
 1191 0552 1821     		movs	r1, #24
 1192 0554 C020     		movs	r0, #192
 1193 0556 FFF7A9FF 		bl	graphic_writeCommand
 526:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_writeCommand(LCD_SET_ADD, B_CS1|B_CS2);
 1194              		.loc 1 526 0
 1195 055a 1821     		movs	r1, #24
 1196 055c 4020     		movs	r0, #64
 1197 055e FFF7A5FF 		bl	graphic_writeCommand
 527:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_writeCommand(LCD_SET_PAGE, B_CS1|B_CS2);
 1198              		.loc 1 527 0
 1199 0562 1821     		movs	r1, #24
 1200 0564 B820     		movs	r0, #184
 1201 0566 FFF7A1FF 		bl	graphic_writeCommand
 528:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** select_controller(0);
 1202              		.loc 1 528 0
 1203 056a 0020     		movs	r0, #0
 1204 056c FFF79AFE 		bl	select_controller
 529:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 1205              		.loc 1 529 0
 1206 0570 C046     		nop
 1207 0572 BD46     		mov	sp, r7
 1208              		@ sp needed
 1209 0574 80BD     		pop	{r7, pc}
 1210              		.cfi_endproc
 1211              	.LFE18:
 1213 0576 C046     		.align	2
 1214              		.global	graphic_clearScreen
 1215              		.code	16
 1216              		.thumb_func
 1218              	graphic_clearScreen:
 1219              	.LFB19:
 530:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 531:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void graphic_clearScreen(void)
 532:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 1220              		.loc 1 532 0
 1221              		.cfi_startproc
 1222 0578 80B5     		push	{r7, lr}
 1223              		.cfi_def_cfa_offset 8
 1224              		.cfi_offset 7, -8
 1225              		.cfi_offset 14, -4
 1226 057a 82B0     		sub	sp, sp, #8
 1227              		.cfi_def_cfa_offset 16
 1228 057c 00AF     		add	r7, sp, #0
 1229              		.cfi_def_cfa_register 7
 533:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** unsigned char i, j;
 534:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** for	(j = 0; j < 8; j++)
 1230              		.loc 1 534 0
 1231 057e BB1D     		adds	r3, r7, #6
 1232 0580 0022     		movs	r2, #0
 1233 0582 1A70     		strb	r2, [r3]
 1234 0584 23E0     		b	.L84
 1235              	.L87:
 535:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 536:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	graphic_writeCommand(LCD_SET_PAGE | j, B_CS1|B_CS2 );
 1236              		.loc 1 536 0
 1237 0586 BB1D     		adds	r3, r7, #6
 1238 0588 1B78     		ldrb	r3, [r3]
 1239 058a 4822     		movs	r2, #72
 1240 058c 5242     		rsbs	r2, r2, #0
 1241 058e 1343     		orrs	r3, r2
 1242 0590 DBB2     		uxtb	r3, r3
 1243 0592 1821     		movs	r1, #24
 1244 0594 1800     		movs	r0, r3
 1245 0596 FFF789FF 		bl	graphic_writeCommand
 537:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	graphic_writeCommand(LCD_SET_ADD | 0, B_CS1|B_CS2 );
 1246              		.loc 1 537 0
 1247 059a 1821     		movs	r1, #24
 1248 059c 4020     		movs	r0, #64
 1249 059e FFF785FF 		bl	graphic_writeCommand
 538:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	for(i = 0; i <= 63; i++)
 1250              		.loc 1 538 0
 1251 05a2 FB1D     		adds	r3, r7, #7
 1252 05a4 0022     		movs	r2, #0
 1253 05a6 1A70     		strb	r2, [r3]
 1254 05a8 08E0     		b	.L85
 1255              	.L86:
 539:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{
 540:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		graphic_writeData(0, B_CS1|B_CS2);
 1256              		.loc 1 540 0 discriminator 3
 1257 05aa 1821     		movs	r1, #24
 1258 05ac 0020     		movs	r0, #0
 1259 05ae FFF799FF 		bl	graphic_writeData
 538:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	for(i = 0; i <= 63; i++)
 1260              		.loc 1 538 0 discriminator 3
 1261 05b2 FB1D     		adds	r3, r7, #7
 1262 05b4 1A78     		ldrb	r2, [r3]
 1263 05b6 FB1D     		adds	r3, r7, #7
 1264 05b8 0132     		adds	r2, r2, #1
 1265 05ba 1A70     		strb	r2, [r3]
 1266              	.L85:
 538:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	for(i = 0; i <= 63; i++)
 1267              		.loc 1 538 0 is_stmt 0 discriminator 1
 1268 05bc FB1D     		adds	r3, r7, #7
 1269 05be 1B78     		ldrb	r3, [r3]
 1270 05c0 3F2B     		cmp	r3, #63
 1271 05c2 F2D9     		bls	.L86
 534:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 1272              		.loc 1 534 0 is_stmt 1 discriminator 2
 1273 05c4 BB1D     		adds	r3, r7, #6
 1274 05c6 1A78     		ldrb	r2, [r3]
 1275 05c8 BB1D     		adds	r3, r7, #6
 1276 05ca 0132     		adds	r2, r2, #1
 1277 05cc 1A70     		strb	r2, [r3]
 1278              	.L84:
 534:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 1279              		.loc 1 534 0 is_stmt 0 discriminator 1
 1280 05ce BB1D     		adds	r3, r7, #6
 1281 05d0 1B78     		ldrb	r3, [r3]
 1282 05d2 072B     		cmp	r3, #7
 1283 05d4 D7D9     		bls	.L87
 541:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		}
 542:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 543:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 1284              		.loc 1 543 0 is_stmt 1
 1285 05d6 C046     		nop
 1286 05d8 BD46     		mov	sp, r7
 1287 05da 02B0     		add	sp, sp, #8
 1288              		@ sp needed
 1289 05dc 80BD     		pop	{r7, pc}
 1290              		.cfi_endproc
 1291              	.LFE19:
 1293 05de C046     		.align	2
 1294              		.global	pixel
 1295              		.code	16
 1296              		.thumb_func
 1298              	pixel:
 1299              	.LFB20:
 544:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 545:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void pixel(	int	x,	int y,	int set	)		
 546:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {	
 1300              		.loc 1 546 0
 1301              		.cfi_startproc
 1302 05e0 80B5     		push	{r7, lr}
 1303              		.cfi_def_cfa_offset 8
 1304              		.cfi_offset 7, -8
 1305              		.cfi_offset 14, -4
 1306 05e2 86B0     		sub	sp, sp, #24
 1307              		.cfi_def_cfa_offset 32
 1308 05e4 00AF     		add	r7, sp, #0
 1309              		.cfi_def_cfa_register 7
 1310 05e6 F860     		str	r0, [r7, #12]
 1311 05e8 B960     		str	r1, [r7, #8]
 1312 05ea 7A60     		str	r2, [r7, #4]
 547:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			if (!set)	return;	
 1313              		.loc 1 547 0
 1314 05ec 7B68     		ldr	r3, [r7, #4]
 1315 05ee 002B     		cmp	r3, #0
 1316 05f0 41D0     		beq	.L96
 548:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			if(	(x	>	127	)		||	(x	<	0)	||	(y	>	63)	||	(y	<	0)	)	
 1317              		.loc 1 548 0
 1318 05f2 FB68     		ldr	r3, [r7, #12]
 1319 05f4 7F2B     		cmp	r3, #127
 1320 05f6 40DC     		bgt	.L97
 1321              		.loc 1 548 0 is_stmt 0 discriminator 1
 1322 05f8 FB68     		ldr	r3, [r7, #12]
 1323 05fa 002B     		cmp	r3, #0
 1324 05fc 3DDB     		blt	.L97
 1325              		.loc 1 548 0 discriminator 2
 1326 05fe BB68     		ldr	r3, [r7, #8]
 1327 0600 3F2B     		cmp	r3, #63
 1328 0602 3ADC     		bgt	.L97
 1329              		.loc 1 548 0 discriminator 3
 1330 0604 BB68     		ldr	r3, [r7, #8]
 1331 0606 002B     		cmp	r3, #0
 1332 0608 37DB     		blt	.L97
 549:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 						return;	
 550:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			unsigned char mask	=	1	<<	(y%8);	
 1333              		.loc 1 550 0 is_stmt 1
 1334 060a BB68     		ldr	r3, [r7, #8]
 1335 060c 1D4A     		ldr	r2, .L98
 1336 060e 1340     		ands	r3, r2
 1337 0610 04D5     		bpl	.L93
 1338 0612 013B     		subs	r3, r3, #1
 1339 0614 0822     		movs	r2, #8
 1340 0616 5242     		rsbs	r2, r2, #0
 1341 0618 1343     		orrs	r3, r2
 1342 061a 0133     		adds	r3, r3, #1
 1343              	.L93:
 1344 061c 1A00     		movs	r2, r3
 1345 061e 0123     		movs	r3, #1
 1346 0620 9340     		lsls	r3, r3, r2
 1347 0622 1A00     		movs	r2, r3
 1348 0624 1323     		movs	r3, #19
 1349 0626 FB18     		adds	r3, r7, r3
 1350 0628 1A70     		strb	r2, [r3]
 551:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			int index	=	0;	
 1351              		.loc 1 551 0
 1352 062a 0023     		movs	r3, #0
 1353 062c 7B61     		str	r3, [r7, #20]
 552:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			if(x>=64)	{	
 1354              		.loc 1 552 0
 1355 062e FB68     		ldr	r3, [r7, #12]
 1356 0630 3F2B     		cmp	r3, #63
 1357 0632 05DD     		ble	.L94
 553:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 						x	-=	64;	
 1358              		.loc 1 553 0
 1359 0634 FB68     		ldr	r3, [r7, #12]
 1360 0636 403B     		subs	r3, r3, #64
 1361 0638 FB60     		str	r3, [r7, #12]
 554:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 						index	=	512;	
 1362              		.loc 1 554 0
 1363 063a 8023     		movs	r3, #128
 1364 063c 9B00     		lsls	r3, r3, #2
 1365 063e 7B61     		str	r3, [r7, #20]
 1366              	.L94:
 555:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			}	
 556:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			index	+=	x	+	(y/8)*64;	
 1367              		.loc 1 556 0
 1368 0640 BB68     		ldr	r3, [r7, #8]
 1369 0642 002B     		cmp	r3, #0
 1370 0644 00DA     		bge	.L95
 1371 0646 0733     		adds	r3, r3, #7
 1372              	.L95:
 1373 0648 DB10     		asrs	r3, r3, #3
 1374 064a 9A01     		lsls	r2, r3, #6
 1375 064c FB68     		ldr	r3, [r7, #12]
 1376 064e D318     		adds	r3, r2, r3
 1377 0650 7A69     		ldr	r2, [r7, #20]
 1378 0652 D318     		adds	r3, r2, r3
 1379 0654 7B61     		str	r3, [r7, #20]
 557:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			backBuffer[index]	|=	mask;	
 1380              		.loc 1 557 0
 1381 0656 0C4B     		ldr	r3, .L98+4
 1382 0658 1A68     		ldr	r2, [r3]
 1383 065a 7B69     		ldr	r3, [r7, #20]
 1384 065c D218     		adds	r2, r2, r3
 1385 065e 0A4B     		ldr	r3, .L98+4
 1386 0660 1968     		ldr	r1, [r3]
 1387 0662 7B69     		ldr	r3, [r7, #20]
 1388 0664 CB18     		adds	r3, r1, r3
 1389 0666 1978     		ldrb	r1, [r3]
 1390 0668 1323     		movs	r3, #19
 1391 066a FB18     		adds	r3, r7, r3
 1392 066c 1B78     		ldrb	r3, [r3]
 1393 066e 0B43     		orrs	r3, r1
 1394 0670 DBB2     		uxtb	r3, r3
 1395 0672 1370     		strb	r3, [r2]
 1396 0674 02E0     		b	.L88
 1397              	.L96:
 547:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			if(	(x	>	127	)		||	(x	<	0)	||	(y	>	63)	||	(y	<	0)	)	
 1398              		.loc 1 547 0
 1399 0676 C046     		nop
 1400 0678 00E0     		b	.L88
 1401              	.L97:
 549:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			unsigned char mask	=	1	<<	(y%8);	
 1402              		.loc 1 549 0
 1403 067a C046     		nop
 1404              	.L88:
 558:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 1405              		.loc 1 558 0
 1406 067c BD46     		mov	sp, r7
 1407 067e 06B0     		add	sp, sp, #24
 1408              		@ sp needed
 1409 0680 80BD     		pop	{r7, pc}
 1410              	.L99:
 1411 0682 C046     		.align	2
 1412              	.L98:
 1413 0684 07000080 		.word	-2147483641
 1414 0688 00000000 		.word	backBuffer
 1415              		.cfi_endproc
 1416              	.LFE20:
 1418              		.align	2
 1419              		.global	delay_1mikro
 1420              		.code	16
 1421              		.thumb_func
 1423              	delay_1mikro:
 1424              	.LFB21:
 559:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 560:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void delay_1mikro ( void )
 561:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 1425              		.loc 1 561 0
 1426              		.cfi_startproc
 1427 068c 80B5     		push	{r7, lr}
 1428              		.cfi_def_cfa_offset 8
 1429              		.cfi_offset 7, -8
 1430              		.cfi_offset 14, -4
 1431 068e 00AF     		add	r7, sp, #0
 1432              		.cfi_def_cfa_register 7
 562:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	STK.Ctrl = 0;
 1433              		.loc 1 562 0
 1434 0690 074B     		ldr	r3, .L101
 1435 0692 0022     		movs	r2, #0
 1436 0694 1A60     		str	r2, [r3]
 563:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	STK.Load = (168 - 1);
 1437              		.loc 1 563 0
 1438 0696 064B     		ldr	r3, .L101
 1439 0698 A722     		movs	r2, #167
 1440 069a 5A60     		str	r2, [r3, #4]
 564:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	STK.Val = 0;
 1441              		.loc 1 564 0
 1442 069c 044B     		ldr	r3, .L101
 1443 069e 0022     		movs	r2, #0
 1444 06a0 9A60     		str	r2, [r3, #8]
 565:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	STK.Ctrl = 7;
 1445              		.loc 1 565 0
 1446 06a2 034B     		ldr	r3, .L101
 1447 06a4 0722     		movs	r2, #7
 1448 06a6 1A60     		str	r2, [r3]
 566:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 1449              		.loc 1 566 0
 1450 06a8 C046     		nop
 1451 06aa BD46     		mov	sp, r7
 1452              		@ sp needed
 1453 06ac 80BD     		pop	{r7, pc}
 1454              	.L102:
 1455 06ae C046     		.align	2
 1456              	.L101:
 1457 06b0 10E000E0 		.word	-536813552
 1458              		.cfi_endproc
 1459              	.LFE21:
 1461              		.align	2
 1462              		.global	systick_irq_handler
 1463              		.code	16
 1464              		.thumb_func
 1466              	systick_irq_handler:
 1467              	.LFB22:
 567:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 568:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void systick_irq_handler (void)
 569:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 1468              		.loc 1 569 0
 1469              		.cfi_startproc
 1470 06b4 80B5     		push	{r7, lr}
 1471              		.cfi_def_cfa_offset 8
 1472              		.cfi_offset 7, -8
 1473              		.cfi_offset 14, -4
 1474 06b6 00AF     		add	r7, sp, #0
 1475              		.cfi_def_cfa_register 7
 570:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	STK.Ctrl = 0;
 1476              		.loc 1 570 0
 1477 06b8 084B     		ldr	r3, .L106
 1478 06ba 0022     		movs	r2, #0
 1479 06bc 1A60     		str	r2, [r3]
 571:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	DELAY_COUNT -- ;
 1480              		.loc 1 571 0
 1481 06be 084B     		ldr	r3, .L106+4
 1482 06c0 1B68     		ldr	r3, [r3]
 1483 06c2 5A1E     		subs	r2, r3, #1
 1484 06c4 064B     		ldr	r3, .L106+4
 1485 06c6 1A60     		str	r2, [r3]
 572:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	if (DELAY_COUNT > 0)
 1486              		.loc 1 572 0
 1487 06c8 054B     		ldr	r3, .L106+4
 1488 06ca 1B68     		ldr	r3, [r3]
 1489 06cc 002B     		cmp	r3, #0
 1490 06ce 01DD     		ble	.L105
 573:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 574:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		delay_1mikro();
 1491              		.loc 1 574 0
 1492 06d0 FFF7FEFF 		bl	delay_1mikro
 1493              	.L105:
 575:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 576:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 1494              		.loc 1 576 0
 1495 06d4 C046     		nop
 1496 06d6 BD46     		mov	sp, r7
 1497              		@ sp needed
 1498 06d8 80BD     		pop	{r7, pc}
 1499              	.L107:
 1500 06da C046     		.align	2
 1501              	.L106:
 1502 06dc 10E000E0 		.word	-536813552
 1503 06e0 00000000 		.word	DELAY_COUNT
 1504              		.cfi_endproc
 1505              	.LFE22:
 1507              		.align	2
 1508              		.global	delay
 1509              		.code	16
 1510              		.thumb_func
 1512              	delay:
 1513              	.LFB23:
 577:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 578:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void delay (unsigned int count){
 1514              		.loc 1 578 0
 1515              		.cfi_startproc
 1516 06e4 80B5     		push	{r7, lr}
 1517              		.cfi_def_cfa_offset 8
 1518              		.cfi_offset 7, -8
 1519              		.cfi_offset 14, -4
 1520 06e6 82B0     		sub	sp, sp, #8
 1521              		.cfi_def_cfa_offset 16
 1522 06e8 00AF     		add	r7, sp, #0
 1523              		.cfi_def_cfa_register 7
 1524 06ea 7860     		str	r0, [r7, #4]
 579:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	DELAY_COUNT = count;
 1525              		.loc 1 579 0
 1526 06ec 7A68     		ldr	r2, [r7, #4]
 1527 06ee 064B     		ldr	r3, .L112
 1528 06f0 1A60     		str	r2, [r3]
 580:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	if (count == 0){
 1529              		.loc 1 580 0
 1530 06f2 7B68     		ldr	r3, [r7, #4]
 1531 06f4 002B     		cmp	r3, #0
 1532 06f6 02D0     		beq	.L111
 581:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		return;
 582:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 583:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	delay_1mikro();
 1533              		.loc 1 583 0
 1534 06f8 FFF7FEFF 		bl	delay_1mikro
 1535 06fc 00E0     		b	.L108
 1536              	.L111:
 581:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		return;
 1537              		.loc 1 581 0
 1538 06fe C046     		nop
 1539              	.L108:
 584:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 1540              		.loc 1 584 0
 1541 0700 BD46     		mov	sp, r7
 1542 0702 02B0     		add	sp, sp, #8
 1543              		@ sp needed
 1544 0704 80BD     		pop	{r7, pc}
 1545              	.L113:
 1546 0706 C046     		.align	2
 1547              	.L112:
 1548 0708 00000000 		.word	DELAY_COUNT
 1549              		.cfi_endproc
 1550              	.LFE23:
 1552              		.align	2
 1553              		.global	_tstchar
 1554              		.code	16
 1555              		.thumb_func
 1557              	_tstchar:
 1558              	.LFB24:
 585:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 586:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** char _tstchar (void)
 587:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 1559              		.loc 1 587 0
 1560              		.cfi_startproc
 1561 070c 80B5     		push	{r7, lr}
 1562              		.cfi_def_cfa_offset 8
 1563              		.cfi_offset 7, -8
 1564              		.cfi_offset 14, -4
 1565 070e 00AF     		add	r7, sp, #0
 1566              		.cfi_def_cfa_register 7
 588:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	if ((USART1->sr & 0x20) == 0)
 1567              		.loc 1 588 0
 1568 0710 074B     		ldr	r3, .L117
 1569 0712 1B88     		ldrh	r3, [r3]
 1570 0714 9BB2     		uxth	r3, r3
 1571 0716 1A00     		movs	r2, r3
 1572 0718 2023     		movs	r3, #32
 1573 071a 1340     		ands	r3, r2
 1574 071c 01D1     		bne	.L115
 589:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{return 0;}
 1575              		.loc 1 589 0
 1576 071e 0023     		movs	r3, #0
 1577 0720 03E0     		b	.L116
 1578              	.L115:
 590:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		
 591:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	return (char) USART1->dr;
 1579              		.loc 1 591 0
 1580 0722 034B     		ldr	r3, .L117
 1581 0724 9B88     		ldrh	r3, [r3, #4]
 1582 0726 9BB2     		uxth	r3, r3
 1583 0728 DBB2     		uxtb	r3, r3
 1584              	.L116:
 592:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 1585              		.loc 1 592 0
 1586 072a 1800     		movs	r0, r3
 1587 072c BD46     		mov	sp, r7
 1588              		@ sp needed
 1589 072e 80BD     		pop	{r7, pc}
 1590              	.L118:
 1591              		.align	2
 1592              	.L117:
 1593 0730 00100140 		.word	1073811456
 1594              		.cfi_endproc
 1595              	.LFE24:
 1597              		.align	2
 1598              		.global	graphic_drawScreen
 1599              		.code	16
 1600              		.thumb_func
 1602              	graphic_drawScreen:
 1603              	.LFB25:
 593:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 594:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 595:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 596:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void	graphic_drawScreen(void)	
 597:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {	
 1604              		.loc 1 597 0
 1605              		.cfi_startproc
 1606 0734 80B5     		push	{r7, lr}
 1607              		.cfi_def_cfa_offset 8
 1608              		.cfi_offset 7, -8
 1609              		.cfi_offset 14, -4
 1610 0736 84B0     		sub	sp, sp, #16
 1611              		.cfi_def_cfa_offset 24
 1612 0738 00AF     		add	r7, sp, #0
 1613              		.cfi_def_cfa_register 7
 598:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** unsigned	int k	=	0;	
 1614              		.loc 1 598 0
 1615 073a 0023     		movs	r3, #0
 1616 073c FB60     		str	r3, [r7, #12]
 599:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** bool bUpdateAddr	=	true;	
 1617              		.loc 1 599 0
 1618 073e 0B23     		movs	r3, #11
 1619 0740 FB18     		adds	r3, r7, r3
 1620 0742 0122     		movs	r2, #1
 1621 0744 1A70     		strb	r2, [r3]
 1622              	.LBB2:
 600:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** for(uint8_t c=0;	c<2;	c++)
 1623              		.loc 1 600 0
 1624 0746 0A23     		movs	r3, #10
 1625 0748 FB18     		adds	r3, r7, r3
 1626 074a 0022     		movs	r2, #0
 1627 074c 1A70     		strb	r2, [r3]
 1628 074e 79E0     		b	.L120
 1629              	.L130:
 1630              	.LBB3:
 601:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{ 	 	//	loop	over	both	controllers	(the	two	displays)	
 602:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		uint8_t controller	=	(c	==	0)	?	B_CS1	:	B_CS2;	
 1631              		.loc 1 602 0
 1632 0750 0A23     		movs	r3, #10
 1633 0752 FB18     		adds	r3, r7, r3
 1634 0754 1B78     		ldrb	r3, [r3]
 1635 0756 002B     		cmp	r3, #0
 1636 0758 01D1     		bne	.L121
 1637              		.loc 1 602 0 is_stmt 0 discriminator 1
 1638 075a 0822     		movs	r2, #8
 1639 075c 00E0     		b	.L122
 1640              	.L121:
 1641              		.loc 1 602 0 discriminator 2
 1642 075e 1022     		movs	r2, #16
 1643              	.L122:
 1644              		.loc 1 602 0 discriminator 4
 1645 0760 FB1D     		adds	r3, r7, #7
 1646 0762 1A70     		strb	r2, [r3]
 1647              	.LBB4:
 603:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		for(uint8_t j	=	0;	j	<	8;	j++)
 1648              		.loc 1 603 0 is_stmt 1 discriminator 4
 1649 0764 0923     		movs	r3, #9
 1650 0766 FB18     		adds	r3, r7, r3
 1651 0768 0022     		movs	r2, #0
 1652 076a 1A70     		strb	r2, [r3]
 1653 076c 5EE0     		b	.L123
 1654              	.L129:
 604:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{	 //	loop	over	pages
 605:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			graphic_writeCommand(LCD_SET_PAGE	|	j,	controller	);	
 1655              		.loc 1 605 0
 1656 076e 0923     		movs	r3, #9
 1657 0770 FB18     		adds	r3, r7, r3
 1658 0772 1B78     		ldrb	r3, [r3]
 1659 0774 4822     		movs	r2, #72
 1660 0776 5242     		rsbs	r2, r2, #0
 1661 0778 1343     		orrs	r3, r2
 1662 077a DAB2     		uxtb	r2, r3
 1663 077c FB1D     		adds	r3, r7, #7
 1664 077e 1B78     		ldrb	r3, [r3]
 1665 0780 1900     		movs	r1, r3
 1666 0782 1000     		movs	r0, r2
 1667 0784 FFF792FE 		bl	graphic_writeCommand
 606:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			graphic_writeCommand(LCD_SET_ADD	|	0,	controller);	
 1668              		.loc 1 606 0
 1669 0788 FB1D     		adds	r3, r7, #7
 1670 078a 1B78     		ldrb	r3, [r3]
 1671 078c 1900     		movs	r1, r3
 1672 078e 4020     		movs	r0, #64
 1673 0790 FFF78CFE 		bl	graphic_writeCommand
 1674              	.LBB5:
 607:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			for(uint8_t i	=	0;	i	<=	63;	i++,	k++)
 1675              		.loc 1 607 0
 1676 0794 0823     		movs	r3, #8
 1677 0796 FB18     		adds	r3, r7, r3
 1678 0798 0022     		movs	r2, #0
 1679 079a 1A70     		strb	r2, [r3]
 1680 079c 3AE0     		b	.L124
 1681              	.L128:
 608:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			{	 //	loop	over	addresses
 609:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				//	update	display	only	where	it	is	different	from	last	frame				
 610:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				if(	backBuffer[k]	!=	frontBuffer[k]	)
 1682              		.loc 1 610 0
 1683 079e 2E4B     		ldr	r3, .L131
 1684 07a0 1A68     		ldr	r2, [r3]
 1685 07a2 FB68     		ldr	r3, [r7, #12]
 1686 07a4 D318     		adds	r3, r2, r3
 1687 07a6 1A78     		ldrb	r2, [r3]
 1688 07a8 2C4B     		ldr	r3, .L131+4
 1689 07aa 1968     		ldr	r1, [r3]
 1690 07ac FB68     		ldr	r3, [r7, #12]
 1691 07ae CB18     		adds	r3, r1, r3
 1692 07b0 1B78     		ldrb	r3, [r3]
 1693 07b2 9A42     		cmp	r2, r3
 1694 07b4 20D0     		beq	.L125
 611:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				{	
 612:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 					if(bUpdateAddr )		
 1695              		.loc 1 612 0
 1696 07b6 0B23     		movs	r3, #11
 1697 07b8 FB18     		adds	r3, r7, r3
 1698 07ba 1B78     		ldrb	r3, [r3]
 1699 07bc 002B     		cmp	r3, #0
 1700 07be 0BD0     		beq	.L126
 613:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 						graphic_writeCommand(LCD_SET_ADD	|	i,	controller);	
 1701              		.loc 1 613 0
 1702 07c0 0823     		movs	r3, #8
 1703 07c2 FB18     		adds	r3, r7, r3
 1704 07c4 1B78     		ldrb	r3, [r3]
 1705 07c6 4022     		movs	r2, #64
 1706 07c8 1343     		orrs	r3, r2
 1707 07ca DAB2     		uxtb	r2, r3
 1708 07cc FB1D     		adds	r3, r7, #7
 1709 07ce 1B78     		ldrb	r3, [r3]
 1710 07d0 1900     		movs	r1, r3
 1711 07d2 1000     		movs	r0, r2
 1712 07d4 FFF76AFE 		bl	graphic_writeCommand
 1713              	.L126:
 614:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 						graphic_writeData(backBuffer[k],		controller);	
 1714              		.loc 1 614 0
 1715 07d8 1F4B     		ldr	r3, .L131
 1716 07da 1A68     		ldr	r2, [r3]
 1717 07dc FB68     		ldr	r3, [r7, #12]
 1718 07de D318     		adds	r3, r2, r3
 1719 07e0 1A78     		ldrb	r2, [r3]
 1720 07e2 FB1D     		adds	r3, r7, #7
 1721 07e4 1B78     		ldrb	r3, [r3]
 1722 07e6 1900     		movs	r1, r3
 1723 07e8 1000     		movs	r0, r2
 1724 07ea FFF77BFE 		bl	graphic_writeData
 615:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 						bUpdateAddr	=	false; //	Display	hardware	auto-increments	the	address	per	write	
 1725              		.loc 1 615 0
 1726 07ee 0B23     		movs	r3, #11
 1727 07f0 FB18     		adds	r3, r7, r3
 1728 07f2 0022     		movs	r2, #0
 1729 07f4 1A70     		strb	r2, [r3]
 1730 07f6 03E0     		b	.L127
 1731              	.L125:
 616:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				}	else	
 617:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 						bUpdateAddr	=	true; //	No	write	->	we	need	to	update	the	x-address	next	write	
 1732              		.loc 1 617 0
 1733 07f8 0B23     		movs	r3, #11
 1734 07fa FB18     		adds	r3, r7, r3
 1735 07fc 0122     		movs	r2, #1
 1736 07fe 1A70     		strb	r2, [r3]
 1737              	.L127:
 607:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			{	 //	loop	over	addresses
 1738              		.loc 1 607 0 discriminator 2
 1739 0800 0823     		movs	r3, #8
 1740 0802 FB18     		adds	r3, r7, r3
 1741 0804 1A78     		ldrb	r2, [r3]
 1742 0806 0823     		movs	r3, #8
 1743 0808 FB18     		adds	r3, r7, r3
 1744 080a 0132     		adds	r2, r2, #1
 1745 080c 1A70     		strb	r2, [r3]
 1746 080e FB68     		ldr	r3, [r7, #12]
 1747 0810 0133     		adds	r3, r3, #1
 1748 0812 FB60     		str	r3, [r7, #12]
 1749              	.L124:
 607:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			{	 //	loop	over	addresses
 1750              		.loc 1 607 0 is_stmt 0 discriminator 1
 1751 0814 0823     		movs	r3, #8
 1752 0816 FB18     		adds	r3, r7, r3
 1753 0818 1B78     		ldrb	r3, [r3]
 1754 081a 3F2B     		cmp	r3, #63
 1755 081c BFD9     		bls	.L128
 1756              	.LBE5:
 603:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{	 //	loop	over	pages
 1757              		.loc 1 603 0 is_stmt 1 discriminator 2
 1758 081e 0923     		movs	r3, #9
 1759 0820 FB18     		adds	r3, r7, r3
 1760 0822 1A78     		ldrb	r2, [r3]
 1761 0824 0923     		movs	r3, #9
 1762 0826 FB18     		adds	r3, r7, r3
 1763 0828 0132     		adds	r2, r2, #1
 1764 082a 1A70     		strb	r2, [r3]
 1765              	.L123:
 603:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{	 //	loop	over	pages
 1766              		.loc 1 603 0 is_stmt 0 discriminator 1
 1767 082c 0923     		movs	r3, #9
 1768 082e FB18     		adds	r3, r7, r3
 1769 0830 1B78     		ldrb	r3, [r3]
 1770 0832 072B     		cmp	r3, #7
 1771 0834 9BD9     		bls	.L129
 1772              	.LBE4:
 1773              	.LBE3:
 600:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{ 	 	//	loop	over	both	controllers	(the	two	displays)	
 1774              		.loc 1 600 0 is_stmt 1 discriminator 2
 1775 0836 0A23     		movs	r3, #10
 1776 0838 FB18     		adds	r3, r7, r3
 1777 083a 1A78     		ldrb	r2, [r3]
 1778 083c 0A23     		movs	r3, #10
 1779 083e FB18     		adds	r3, r7, r3
 1780 0840 0132     		adds	r2, r2, #1
 1781 0842 1A70     		strb	r2, [r3]
 1782              	.L120:
 600:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{ 	 	//	loop	over	both	controllers	(the	two	displays)	
 1783              		.loc 1 600 0 is_stmt 0 discriminator 1
 1784 0844 0A23     		movs	r3, #10
 1785 0846 FB18     		adds	r3, r7, r3
 1786 0848 1B78     		ldrb	r3, [r3]
 1787 084a 012B     		cmp	r3, #1
 1788 084c 80D9     		bls	.L130
 1789              	.LBE2:
 618:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			}	
 619:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		}	
 620:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}	
 621:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 622:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }	
 1790              		.loc 1 622 0 is_stmt 1
 1791 084e C046     		nop
 1792 0850 BD46     		mov	sp, r7
 1793 0852 04B0     		add	sp, sp, #16
 1794              		@ sp needed
 1795 0854 80BD     		pop	{r7, pc}
 1796              	.L132:
 1797 0856 C046     		.align	2
 1798              	.L131:
 1799 0858 00000000 		.word	backBuffer
 1800 085c 00000000 		.word	frontBuffer
 1801              		.cfi_endproc
 1802              	.LFE25:
 1804              		.align	2
 1805              		.global	clearBuffer
 1806              		.code	16
 1807              		.thumb_func
 1809              	clearBuffer:
 1810              	.LFB26:
 623:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 624:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void	clearBuffer(unsigned	char	val)	{	
 1811              		.loc 1 624 0
 1812              		.cfi_startproc
 1813 0860 80B5     		push	{r7, lr}
 1814              		.cfi_def_cfa_offset 8
 1815              		.cfi_offset 7, -8
 1816              		.cfi_offset 14, -4
 1817 0862 84B0     		sub	sp, sp, #16
 1818              		.cfi_def_cfa_offset 24
 1819 0864 00AF     		add	r7, sp, #0
 1820              		.cfi_def_cfa_register 7
 1821 0866 0200     		movs	r2, r0
 1822 0868 FB1D     		adds	r3, r7, #7
 1823 086a 1A70     		strb	r2, [r3]
 1824              	.LBB6:
 625:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** for	(int i=0;	i<1024;	i++)	
 1825              		.loc 1 625 0
 1826 086c 0023     		movs	r3, #0
 1827 086e FB60     		str	r3, [r7, #12]
 1828 0870 09E0     		b	.L134
 1829              	.L135:
 626:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	backBuffer[i]	=	val;	
 1830              		.loc 1 626 0 discriminator 3
 1831 0872 094B     		ldr	r3, .L136
 1832 0874 1A68     		ldr	r2, [r3]
 1833 0876 FB68     		ldr	r3, [r7, #12]
 1834 0878 D318     		adds	r3, r2, r3
 1835 087a FA1D     		adds	r2, r7, #7
 1836 087c 1278     		ldrb	r2, [r2]
 1837 087e 1A70     		strb	r2, [r3]
 625:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** for	(int i=0;	i<1024;	i++)	
 1838              		.loc 1 625 0 discriminator 3
 1839 0880 FB68     		ldr	r3, [r7, #12]
 1840 0882 0133     		adds	r3, r3, #1
 1841 0884 FB60     		str	r3, [r7, #12]
 1842              	.L134:
 625:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** for	(int i=0;	i<1024;	i++)	
 1843              		.loc 1 625 0 is_stmt 0 discriminator 1
 1844 0886 FB68     		ldr	r3, [r7, #12]
 1845 0888 044A     		ldr	r2, .L136+4
 1846 088a 9342     		cmp	r3, r2
 1847 088c F1DD     		ble	.L135
 1848              	.LBE6:
 627:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }	
 1849              		.loc 1 627 0 is_stmt 1
 1850 088e C046     		nop
 1851 0890 BD46     		mov	sp, r7
 1852 0892 04B0     		add	sp, sp, #16
 1853              		@ sp needed
 1854 0894 80BD     		pop	{r7, pc}
 1855              	.L137:
 1856 0896 C046     		.align	2
 1857              	.L136:
 1858 0898 00000000 		.word	backBuffer
 1859 089c FF030000 		.word	1023
 1860              		.cfi_endproc
 1861              	.LFE26:
 1863              		.align	2
 1864              		.global	clearBuffers
 1865              		.code	16
 1866              		.thumb_func
 1868              	clearBuffers:
 1869              	.LFB27:
 628:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 629:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void	clearBuffers()	{	
 1870              		.loc 1 629 0
 1871              		.cfi_startproc
 1872 08a0 80B5     		push	{r7, lr}
 1873              		.cfi_def_cfa_offset 8
 1874              		.cfi_offset 7, -8
 1875              		.cfi_offset 14, -4
 1876 08a2 82B0     		sub	sp, sp, #8
 1877              		.cfi_def_cfa_offset 16
 1878 08a4 00AF     		add	r7, sp, #0
 1879              		.cfi_def_cfa_register 7
 1880              	.LBB7:
 630:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** for	(int i=0;	i<1024;	i++)	
 1881              		.loc 1 630 0
 1882 08a6 0023     		movs	r3, #0
 1883 08a8 7B60     		str	r3, [r7, #4]
 1884 08aa 0EE0     		b	.L139
 1885              	.L140:
 631:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	backBuffer[i]	=	frontBuffer[i]	=	0;	
 1886              		.loc 1 631 0 discriminator 3
 1887 08ac 0B4B     		ldr	r3, .L141
 1888 08ae 1A68     		ldr	r2, [r3]
 1889 08b0 7B68     		ldr	r3, [r7, #4]
 1890 08b2 D218     		adds	r2, r2, r3
 1891 08b4 0A4B     		ldr	r3, .L141+4
 1892 08b6 1968     		ldr	r1, [r3]
 1893 08b8 7B68     		ldr	r3, [r7, #4]
 1894 08ba CB18     		adds	r3, r1, r3
 1895 08bc 0021     		movs	r1, #0
 1896 08be 1970     		strb	r1, [r3]
 1897 08c0 1B78     		ldrb	r3, [r3]
 1898 08c2 1370     		strb	r3, [r2]
 630:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** for	(int i=0;	i<1024;	i++)	
 1899              		.loc 1 630 0 discriminator 3
 1900 08c4 7B68     		ldr	r3, [r7, #4]
 1901 08c6 0133     		adds	r3, r3, #1
 1902 08c8 7B60     		str	r3, [r7, #4]
 1903              	.L139:
 630:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** for	(int i=0;	i<1024;	i++)	
 1904              		.loc 1 630 0 is_stmt 0 discriminator 1
 1905 08ca 7B68     		ldr	r3, [r7, #4]
 1906 08cc 054A     		ldr	r2, .L141+8
 1907 08ce 9342     		cmp	r3, r2
 1908 08d0 ECDD     		ble	.L140
 1909              	.LBE7:
 632:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }	
 1910              		.loc 1 632 0 is_stmt 1
 1911 08d2 C046     		nop
 1912 08d4 BD46     		mov	sp, r7
 1913 08d6 02B0     		add	sp, sp, #8
 1914              		@ sp needed
 1915 08d8 80BD     		pop	{r7, pc}
 1916              	.L142:
 1917 08da C046     		.align	2
 1918              	.L141:
 1919 08dc 00000000 		.word	backBuffer
 1920 08e0 00000000 		.word	frontBuffer
 1921 08e4 FF030000 		.word	1023
 1922              		.cfi_endproc
 1923              	.LFE27:
 1925              		.align	2
 1926              		.global	swapBuffers
 1927              		.code	16
 1928              		.thumb_func
 1930              	swapBuffers:
 1931              	.LFB28:
 633:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 634:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void	swapBuffers()	{	
 1932              		.loc 1 634 0
 1933              		.cfi_startproc
 1934 08e8 80B5     		push	{r7, lr}
 1935              		.cfi_def_cfa_offset 8
 1936              		.cfi_offset 7, -8
 1937              		.cfi_offset 14, -4
 1938 08ea 82B0     		sub	sp, sp, #8
 1939              		.cfi_def_cfa_offset 16
 1940 08ec 00AF     		add	r7, sp, #0
 1941              		.cfi_def_cfa_register 7
 635:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** graphic_drawScreen();	
 1942              		.loc 1 635 0
 1943 08ee FFF7FEFF 		bl	graphic_drawScreen
 636:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** unsigned	char*	tmp	=	frontBuffer;	//	swap	front/backbuffers
 1944              		.loc 1 636 0
 1945 08f2 074B     		ldr	r3, .L144
 1946 08f4 1B68     		ldr	r3, [r3]
 1947 08f6 7B60     		str	r3, [r7, #4]
 637:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** frontBuffer	=	backBuffer;	
 1948              		.loc 1 637 0
 1949 08f8 064B     		ldr	r3, .L144+4
 1950 08fa 1A68     		ldr	r2, [r3]
 1951 08fc 044B     		ldr	r3, .L144
 1952 08fe 1A60     		str	r2, [r3]
 638:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** backBuffer	=	tmp;	
 1953              		.loc 1 638 0
 1954 0900 044B     		ldr	r3, .L144+4
 1955 0902 7A68     		ldr	r2, [r7, #4]
 1956 0904 1A60     		str	r2, [r3]
 639:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }	
 1957              		.loc 1 639 0
 1958 0906 C046     		nop
 1959 0908 BD46     		mov	sp, r7
 1960 090a 02B0     		add	sp, sp, #8
 1961              		@ sp needed
 1962 090c 80BD     		pop	{r7, pc}
 1963              	.L145:
 1964 090e C046     		.align	2
 1965              	.L144:
 1966 0910 00000000 		.word	frontBuffer
 1967 0914 00000000 		.word	backBuffer
 1968              		.cfi_endproc
 1969              	.LFE28:
 1971              		.global	n_objects
 1972              		.data
 1973              		.align	2
 1976              	n_objects:
 1977 0008 01000000 		.word	1
 1978              		.comm	c,1,1
 1979              		.global	ball_geometry
 1980              		.align	2
 1983              	ball_geometry:
 1984 000c 0C000000 		.word	12
 1985 0010 04000000 		.word	4
 1986 0014 04000000 		.word	4
 1987 0018 00       		.byte	0
 1988 0019 01       		.byte	1
 1989 001a 00       		.byte	0
 1990 001b 02       		.byte	2
 1991 001c 01       		.byte	1
 1992 001d 00       		.byte	0
 1993 001e 01       		.byte	1
 1994 001f 01       		.byte	1
 1995 0020 01       		.byte	1
 1996 0021 02       		.byte	2
 1997 0022 01       		.byte	1
 1998 0023 03       		.byte	3
 1999 0024 02       		.byte	2
 2000 0025 00       		.byte	0
 2001 0026 02       		.byte	2
 2002 0027 01       		.byte	1
 2003 0028 02       		.byte	2
 2004 0029 02       		.byte	2
 2005 002a 02       		.byte	2
 2006 002b 03       		.byte	3
 2007 002c 03       		.byte	3
 2008 002d 01       		.byte	1
 2009 002e 03       		.byte	3
 2010 002f 02       		.byte	2
 2011 0030 00000000 		.space	104
 2011      00000000 
 2011      00000000 
 2011      00000000 
 2011      00000000 
 2012              		.global	alien_geometry
 2013              		.align	2
 2016              	alien_geometry:
 2017 0098 40000000 		.word	64
 2018 009c 08000000 		.word	8
 2019 00a0 08000000 		.word	8
 2020 00a4 00       		.byte	0
 2021 00a5 00       		.byte	0
 2022 00a6 03       		.byte	3
 2023 00a7 00       		.byte	0
 2024 00a8 04       		.byte	4
 2025 00a9 00       		.byte	0
 2026 00aa 07       		.byte	7
 2027 00ab 00       		.byte	0
 2028 00ac 00       		.byte	0
 2029 00ad 01       		.byte	1
 2030 00ae 02       		.byte	2
 2031 00af 01       		.byte	1
 2032 00b0 03       		.byte	3
 2033 00b1 01       		.byte	1
 2034 00b2 04       		.byte	4
 2035 00b3 01       		.byte	1
 2036 00b4 05       		.byte	5
 2037 00b5 01       		.byte	1
 2038 00b6 07       		.byte	7
 2039 00b7 01       		.byte	1
 2040 00b8 01       		.byte	1
 2041 00b9 02       		.byte	2
 2042 00ba 03       		.byte	3
 2043 00bb 02       		.byte	2
 2044 00bc 04       		.byte	4
 2045 00bd 02       		.byte	2
 2046 00be 06       		.byte	6
 2047 00bf 02       		.byte	2
 2048 00c0 01       		.byte	1
 2049 00c1 03       		.byte	3
 2050 00c2 02       		.byte	2
 2051 00c3 03       		.byte	3
 2052 00c4 03       		.byte	3
 2053 00c5 03       		.byte	3
 2054 00c6 04       		.byte	4
 2055 00c7 03       		.byte	3
 2056 00c8 05       		.byte	5
 2057 00c9 03       		.byte	3
 2058 00ca 06       		.byte	6
 2059 00cb 03       		.byte	3
 2060 00cc 01       		.byte	1
 2061 00cd 04       		.byte	4
 2062 00ce 06       		.byte	6
 2063 00cf 04       		.byte	4
 2064 00d0 02       		.byte	2
 2065 00d1 05       		.byte	5
 2066 00d2 03       		.byte	3
 2067 00d3 05       		.byte	5
 2068 00d4 04       		.byte	4
 2069 00d5 05       		.byte	5
 2070 00d6 05       		.byte	5
 2071 00d7 05       		.byte	5
 2072 00d8 06       		.byte	6
 2073 00d9 05       		.byte	5
 2074 00da 00       		.byte	0
 2075 00db 06       		.byte	6
 2076 00dc 01       		.byte	1
 2077 00dd 06       		.byte	6
 2078 00de 03       		.byte	3
 2079 00df 06       		.byte	6
 2080 00e0 04       		.byte	4
 2081 00e1 06       		.byte	6
 2082 00e2 06       		.byte	6
 2083 00e3 06       		.byte	6
 2084 00e4 07       		.byte	7
 2085 00e5 06       		.byte	6
 2086 00e6 00       		.byte	0
 2087 00e7 07       		.byte	7
 2088 00e8 04       		.byte	4
 2089 00e9 07       		.byte	7
 2090 00ea 07       		.byte	7
 2091 00eb 07       		.byte	7
 2092 00ec 00000000 		.space	56
 2092      00000000 
 2092      00000000 
 2092      00000000 
 2092      00000000 
 2093              		.text
 2094              		.align	2
 2095              		.global	draw_object
 2096              		.code	16
 2097              		.thumb_func
 2099              	draw_object:
 2100              	.LFB29:
 640:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 641:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 642:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 643:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 644:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 645:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 646:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 647:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 648:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 649:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 650:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 651:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 652:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 653:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 654:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 655:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 656:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 657:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 658:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 659:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 660:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 661:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 662:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 663:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 664:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 665:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 666:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 667:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 668:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 669:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 670:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 671:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 672:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 673:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 674:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 675:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 676:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 677:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 678:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 679:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 680:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 681:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 682:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 683:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 684:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 685:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 686:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 687:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 688:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 689:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 690:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 691:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 692:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 693:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 694:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 695:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 696:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 697:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 698:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 699:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 700:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 701:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 702:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 703:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 704:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 705:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 706:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 707:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 708:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 709:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 710:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 711:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 712:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 713:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 714:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 715:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 716:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 717:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 718:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 719:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 720:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 721:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 722:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 723:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 724:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 725:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 726:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 727:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 728:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 729:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 730:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** //GAMEOBJECTS.H
 731:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 732:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** unsigned int n_objects	=	1;
 733:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** char c;
 734:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 735:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** GEOMETRY ball_geometry = 
 736:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 737:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	12,		//numpoints
 738:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	4,4,		//SizeX, SizeY
 739:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{	
 740:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		/* px[0,1,2...] */
 741:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{0,1},{0,2},{1,0},{1,1},{1,2},{1,3},{2,0},{2,1},{2,2},{2,3},{3,1},{3,2}
 742:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 743:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** };
 744:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 745:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** GEOMETRY alien_geometry = 
 746:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 747:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	64,		//numpoints
 748:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	8,8,		//SizeX, SizeY
 749:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{	
 750:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		/* px[0,1,2...] */
 751:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{0,0},{3,0},{4,0},{7,0},
 752:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{0,1},{2,1},{3,1},{4,1},{5,1},{7,1},
 753:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{1,2},{3,2},{4,2},{6,2},
 754:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{1,3},{2,3},{3,3},{4,3},{5,3},{6,3},
 755:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{1,4},{6,4},
 756:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{2,5},{3,5},{4,5},{5,5},{6,5},
 757:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{0,6},{1,6},{3,6},{4,6},{6,6},{7,6},
 758:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{0,7},{4,7},{7,7},
 759:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 760:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** };
 761:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 762:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 763:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 764:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void draw_object (POBJECT o)
 765:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 2101              		.loc 1 765 0
 2102              		.cfi_startproc
 2103 0918 80B5     		push	{r7, lr}
 2104              		.cfi_def_cfa_offset 8
 2105              		.cfi_offset 7, -8
 2106              		.cfi_offset 14, -4
 2107 091a 84B0     		sub	sp, sp, #16
 2108              		.cfi_def_cfa_offset 24
 2109 091c 00AF     		add	r7, sp, #0
 2110              		.cfi_def_cfa_register 7
 2111 091e 7860     		str	r0, [r7, #4]
 2112              	.LBB8:
 766:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	for (int i = 0; i < o->geo->numpoints; i++)
 2113              		.loc 1 766 0
 2114 0920 0023     		movs	r3, #0
 2115 0922 FB60     		str	r3, [r7, #12]
 2116 0924 2EE0     		b	.L147
 2117              	.L149:
 767:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 768:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		if (o->posX > 0 && o->posY > 0 && o->posX < 128 && o->posY < 64)
 2118              		.loc 1 768 0
 2119 0926 7B68     		ldr	r3, [r7, #4]
 2120 0928 DB68     		ldr	r3, [r3, #12]
 2121 092a 002B     		cmp	r3, #0
 2122 092c 27DD     		ble	.L148
 2123              		.loc 1 768 0 is_stmt 0 discriminator 1
 2124 092e 7B68     		ldr	r3, [r7, #4]
 2125 0930 1B69     		ldr	r3, [r3, #16]
 2126 0932 002B     		cmp	r3, #0
 2127 0934 23DD     		ble	.L148
 2128              		.loc 1 768 0 discriminator 2
 2129 0936 7B68     		ldr	r3, [r7, #4]
 2130 0938 DB68     		ldr	r3, [r3, #12]
 2131 093a 7F2B     		cmp	r3, #127
 2132 093c 1FDC     		bgt	.L148
 2133              		.loc 1 768 0 discriminator 3
 2134 093e 7B68     		ldr	r3, [r7, #4]
 2135 0940 1B69     		ldr	r3, [r3, #16]
 2136 0942 3F2B     		cmp	r3, #63
 2137 0944 1BDC     		bgt	.L148
 769:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			{
 770:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				pixel((o->geo->px[i].x + o->posX) , (o->geo->px[i].y + o->posY), 1 );
 2138              		.loc 1 770 0 is_stmt 1
 2139 0946 7B68     		ldr	r3, [r7, #4]
 2140 0948 1A68     		ldr	r2, [r3]
 2141 094a FB68     		ldr	r3, [r7, #12]
 2142 094c 0433     		adds	r3, r3, #4
 2143 094e 5B00     		lsls	r3, r3, #1
 2144 0950 D318     		adds	r3, r2, r3
 2145 0952 0433     		adds	r3, r3, #4
 2146 0954 1B78     		ldrb	r3, [r3]
 2147 0956 1A00     		movs	r2, r3
 2148 0958 7B68     		ldr	r3, [r7, #4]
 2149 095a DB68     		ldr	r3, [r3, #12]
 2150 095c D018     		adds	r0, r2, r3
 2151 095e 7B68     		ldr	r3, [r7, #4]
 2152 0960 1A68     		ldr	r2, [r3]
 2153 0962 FB68     		ldr	r3, [r7, #12]
 2154 0964 0433     		adds	r3, r3, #4
 2155 0966 5B00     		lsls	r3, r3, #1
 2156 0968 D318     		adds	r3, r2, r3
 2157 096a 0533     		adds	r3, r3, #5
 2158 096c 1B78     		ldrb	r3, [r3]
 2159 096e 1A00     		movs	r2, r3
 2160 0970 7B68     		ldr	r3, [r7, #4]
 2161 0972 1B69     		ldr	r3, [r3, #16]
 2162 0974 D318     		adds	r3, r2, r3
 2163 0976 0122     		movs	r2, #1
 2164 0978 1900     		movs	r1, r3
 2165 097a FFF7FEFF 		bl	pixel
 2166              	.L148:
 766:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 2167              		.loc 1 766 0 discriminator 2
 2168 097e FB68     		ldr	r3, [r7, #12]
 2169 0980 0133     		adds	r3, r3, #1
 2170 0982 FB60     		str	r3, [r7, #12]
 2171              	.L147:
 766:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 2172              		.loc 1 766 0 is_stmt 0 discriminator 1
 2173 0984 7B68     		ldr	r3, [r7, #4]
 2174 0986 1B68     		ldr	r3, [r3]
 2175 0988 1A68     		ldr	r2, [r3]
 2176 098a FB68     		ldr	r3, [r7, #12]
 2177 098c 9A42     		cmp	r2, r3
 2178 098e CADC     		bgt	.L149
 2179              	.LBE8:
 771:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			}
 772:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 773:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	
 774:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 2180              		.loc 1 774 0 is_stmt 1
 2181 0990 C046     		nop
 2182 0992 BD46     		mov	sp, r7
 2183 0994 04B0     		add	sp, sp, #16
 2184              		@ sp needed
 2185 0996 80BD     		pop	{r7, pc}
 2186              		.cfi_endproc
 2187              	.LFE29:
 2189              		.align	2
 2190              		.global	clear_object
 2191              		.code	16
 2192              		.thumb_func
 2194              	clear_object:
 2195              	.LFB30:
 775:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 776:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void clear_object (POBJECT o)
 777:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 2196              		.loc 1 777 0
 2197              		.cfi_startproc
 2198 0998 80B5     		push	{r7, lr}
 2199              		.cfi_def_cfa_offset 8
 2200              		.cfi_offset 7, -8
 2201              		.cfi_offset 14, -4
 2202 099a 84B0     		sub	sp, sp, #16
 2203              		.cfi_def_cfa_offset 24
 2204 099c 00AF     		add	r7, sp, #0
 2205              		.cfi_def_cfa_register 7
 2206 099e 7860     		str	r0, [r7, #4]
 2207              	.LBB9:
 778:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	for (int i = 0; i < o->geo->numpoints; i++)
 2208              		.loc 1 778 0
 2209 09a0 0023     		movs	r3, #0
 2210 09a2 FB60     		str	r3, [r7, #12]
 2211 09a4 1EE0     		b	.L151
 2212              	.L152:
 779:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 780:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		pixel((o->geo->px[i].x + o->posX) , (o->geo->px[i].y + o->posY), 0 );
 2213              		.loc 1 780 0 discriminator 3
 2214 09a6 7B68     		ldr	r3, [r7, #4]
 2215 09a8 1A68     		ldr	r2, [r3]
 2216 09aa FB68     		ldr	r3, [r7, #12]
 2217 09ac 0433     		adds	r3, r3, #4
 2218 09ae 5B00     		lsls	r3, r3, #1
 2219 09b0 D318     		adds	r3, r2, r3
 2220 09b2 0433     		adds	r3, r3, #4
 2221 09b4 1B78     		ldrb	r3, [r3]
 2222 09b6 1A00     		movs	r2, r3
 2223 09b8 7B68     		ldr	r3, [r7, #4]
 2224 09ba DB68     		ldr	r3, [r3, #12]
 2225 09bc D018     		adds	r0, r2, r3
 2226 09be 7B68     		ldr	r3, [r7, #4]
 2227 09c0 1A68     		ldr	r2, [r3]
 2228 09c2 FB68     		ldr	r3, [r7, #12]
 2229 09c4 0433     		adds	r3, r3, #4
 2230 09c6 5B00     		lsls	r3, r3, #1
 2231 09c8 D318     		adds	r3, r2, r3
 2232 09ca 0533     		adds	r3, r3, #5
 2233 09cc 1B78     		ldrb	r3, [r3]
 2234 09ce 1A00     		movs	r2, r3
 2235 09d0 7B68     		ldr	r3, [r7, #4]
 2236 09d2 1B69     		ldr	r3, [r3, #16]
 2237 09d4 D318     		adds	r3, r2, r3
 2238 09d6 0022     		movs	r2, #0
 2239 09d8 1900     		movs	r1, r3
 2240 09da FFF7FEFF 		bl	pixel
 778:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	for (int i = 0; i < o->geo->numpoints; i++)
 2241              		.loc 1 778 0 discriminator 3
 2242 09de FB68     		ldr	r3, [r7, #12]
 2243 09e0 0133     		adds	r3, r3, #1
 2244 09e2 FB60     		str	r3, [r7, #12]
 2245              	.L151:
 778:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	for (int i = 0; i < o->geo->numpoints; i++)
 2246              		.loc 1 778 0 is_stmt 0 discriminator 1
 2247 09e4 7B68     		ldr	r3, [r7, #4]
 2248 09e6 1B68     		ldr	r3, [r3]
 2249 09e8 1A68     		ldr	r2, [r3]
 2250 09ea FB68     		ldr	r3, [r7, #12]
 2251 09ec 9A42     		cmp	r2, r3
 2252 09ee DADC     		bgt	.L152
 2253              	.LBE9:
 781:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 782:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	
 783:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 2254              		.loc 1 783 0 is_stmt 1
 2255 09f0 C046     		nop
 2256 09f2 BD46     		mov	sp, r7
 2257 09f4 04B0     		add	sp, sp, #16
 2258              		@ sp needed
 2259 09f6 80BD     		pop	{r7, pc}
 2260              		.cfi_endproc
 2261              	.LFE30:
 2263              		.align	2
 2264              		.global	move_object
 2265              		.code	16
 2266              		.thumb_func
 2268              	move_object:
 2269              	.LFB31:
 784:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 785:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void move_object (POBJECT o)
 786:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 2270              		.loc 1 786 0
 2271              		.cfi_startproc
 2272 09f8 80B5     		push	{r7, lr}
 2273              		.cfi_def_cfa_offset 8
 2274              		.cfi_offset 7, -8
 2275              		.cfi_offset 14, -4
 2276 09fa 82B0     		sub	sp, sp, #8
 2277              		.cfi_def_cfa_offset 16
 2278 09fc 00AF     		add	r7, sp, #0
 2279              		.cfi_def_cfa_register 7
 2280 09fe 7860     		str	r0, [r7, #4]
 787:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	clear_object(o);
 2281              		.loc 1 787 0
 2282 0a00 7B68     		ldr	r3, [r7, #4]
 2283 0a02 1800     		movs	r0, r3
 2284 0a04 FFF7FEFF 		bl	clear_object
 788:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	
 789:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	if (o->posX < 1 )
 2285              		.loc 1 789 0
 2286 0a08 7B68     		ldr	r3, [r7, #4]
 2287 0a0a DB68     		ldr	r3, [r3, #12]
 2288 0a0c 002B     		cmp	r3, #0
 2289 0a0e 04DC     		bgt	.L154
 790:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{ o->dirX = o->dirX * -1; }
 2290              		.loc 1 790 0
 2291 0a10 7B68     		ldr	r3, [r7, #4]
 2292 0a12 5B68     		ldr	r3, [r3, #4]
 2293 0a14 5A42     		rsbs	r2, r3, #0
 2294 0a16 7B68     		ldr	r3, [r7, #4]
 2295 0a18 5A60     		str	r2, [r3, #4]
 2296              	.L154:
 791:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	if (o->posX > 128 )
 2297              		.loc 1 791 0
 2298 0a1a 7B68     		ldr	r3, [r7, #4]
 2299 0a1c DB68     		ldr	r3, [r3, #12]
 2300 0a1e 802B     		cmp	r3, #128
 2301 0a20 04DD     		ble	.L155
 792:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{ o->dirX = o->dirX * -1; }
 2302              		.loc 1 792 0
 2303 0a22 7B68     		ldr	r3, [r7, #4]
 2304 0a24 5B68     		ldr	r3, [r3, #4]
 2305 0a26 5A42     		rsbs	r2, r3, #0
 2306 0a28 7B68     		ldr	r3, [r7, #4]
 2307 0a2a 5A60     		str	r2, [r3, #4]
 2308              	.L155:
 793:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	if (o->posY < 1 ) 
 2309              		.loc 1 793 0
 2310 0a2c 7B68     		ldr	r3, [r7, #4]
 2311 0a2e 1B69     		ldr	r3, [r3, #16]
 2312 0a30 002B     		cmp	r3, #0
 2313 0a32 04DC     		bgt	.L156
 794:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{ o->dirY = o->dirY * -1; }
 2314              		.loc 1 794 0
 2315 0a34 7B68     		ldr	r3, [r7, #4]
 2316 0a36 9B68     		ldr	r3, [r3, #8]
 2317 0a38 5A42     		rsbs	r2, r3, #0
 2318 0a3a 7B68     		ldr	r3, [r7, #4]
 2319 0a3c 9A60     		str	r2, [r3, #8]
 2320              	.L156:
 795:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	if (o->posY > 64 )
 2321              		.loc 1 795 0
 2322 0a3e 7B68     		ldr	r3, [r7, #4]
 2323 0a40 1B69     		ldr	r3, [r3, #16]
 2324 0a42 402B     		cmp	r3, #64
 2325 0a44 04DD     		ble	.L157
 796:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		{ o->dirY = o->dirY * -1; }
 2326              		.loc 1 796 0
 2327 0a46 7B68     		ldr	r3, [r7, #4]
 2328 0a48 9B68     		ldr	r3, [r3, #8]
 2329 0a4a 5A42     		rsbs	r2, r3, #0
 2330 0a4c 7B68     		ldr	r3, [r7, #4]
 2331 0a4e 9A60     		str	r2, [r3, #8]
 2332              	.L157:
 797:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		
 798:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	o->posY += o->dirY;
 2333              		.loc 1 798 0
 2334 0a50 7B68     		ldr	r3, [r7, #4]
 2335 0a52 1A69     		ldr	r2, [r3, #16]
 2336 0a54 7B68     		ldr	r3, [r7, #4]
 2337 0a56 9B68     		ldr	r3, [r3, #8]
 2338 0a58 D218     		adds	r2, r2, r3
 2339 0a5a 7B68     		ldr	r3, [r7, #4]
 2340 0a5c 1A61     		str	r2, [r3, #16]
 799:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	o->posX += o->dirX;
 2341              		.loc 1 799 0
 2342 0a5e 7B68     		ldr	r3, [r7, #4]
 2343 0a60 DA68     		ldr	r2, [r3, #12]
 2344 0a62 7B68     		ldr	r3, [r7, #4]
 2345 0a64 5B68     		ldr	r3, [r3, #4]
 2346 0a66 D218     		adds	r2, r2, r3
 2347 0a68 7B68     		ldr	r3, [r7, #4]
 2348 0a6a DA60     		str	r2, [r3, #12]
 800:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	
 801:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	draw_object(o);
 2349              		.loc 1 801 0
 2350 0a6c 7B68     		ldr	r3, [r7, #4]
 2351 0a6e 1800     		movs	r0, r3
 2352 0a70 FFF7FEFF 		bl	draw_object
 802:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 2353              		.loc 1 802 0
 2354 0a74 C046     		nop
 2355 0a76 BD46     		mov	sp, r7
 2356 0a78 02B0     		add	sp, sp, #8
 2357              		@ sp needed
 2358 0a7a 80BD     		pop	{r7, pc}
 2359              		.cfi_endproc
 2360              	.LFE31:
 2362              		.align	2
 2363              		.global	set_object_speed
 2364              		.code	16
 2365              		.thumb_func
 2367              	set_object_speed:
 2368              	.LFB32:
 803:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 804:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void set_object_speed (POBJECT o, int speedX, int speedY)
 805:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 2369              		.loc 1 805 0
 2370              		.cfi_startproc
 2371 0a7c 80B5     		push	{r7, lr}
 2372              		.cfi_def_cfa_offset 8
 2373              		.cfi_offset 7, -8
 2374              		.cfi_offset 14, -4
 2375 0a7e 84B0     		sub	sp, sp, #16
 2376              		.cfi_def_cfa_offset 24
 2377 0a80 00AF     		add	r7, sp, #0
 2378              		.cfi_def_cfa_register 7
 2379 0a82 F860     		str	r0, [r7, #12]
 2380 0a84 B960     		str	r1, [r7, #8]
 2381 0a86 7A60     		str	r2, [r7, #4]
 806:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	o->dirX = speedX;
 2382              		.loc 1 806 0
 2383 0a88 FB68     		ldr	r3, [r7, #12]
 2384 0a8a BA68     		ldr	r2, [r7, #8]
 2385 0a8c 5A60     		str	r2, [r3, #4]
 807:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	o->dirY = speedY;
 2386              		.loc 1 807 0
 2387 0a8e FB68     		ldr	r3, [r7, #12]
 2388 0a90 7A68     		ldr	r2, [r7, #4]
 2389 0a92 9A60     		str	r2, [r3, #8]
 808:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 2390              		.loc 1 808 0
 2391 0a94 C046     		nop
 2392 0a96 BD46     		mov	sp, r7
 2393 0a98 04B0     		add	sp, sp, #16
 2394              		@ sp needed
 2395 0a9a 80BD     		pop	{r7, pc}
 2396              		.cfi_endproc
 2397              	.LFE32:
 2399              		.data
 2400              		.align	2
 2403              	ball:
 2404 0124 00000000 		.word	ball_geometry
 2405 0128 00000000 		.word	0
 2406 012c 00000000 		.word	0
 2407 0130 01000000 		.word	1
 2408 0134 01000000 		.word	1
 2409 0138 00000000 		.word	draw_object
 2410 013c 00000000 		.word	clear_object
 2411 0140 00000000 		.word	move_object
 2412 0144 00000000 		.word	set_object_speed
 2413              		.align	2
 2416              	alien:
 2417 0148 00000000 		.word	alien_geometry
 2418 014c 00000000 		.word	0
 2419 0150 00000000 		.word	0
 2420 0154 01000000 		.word	1
 2421 0158 32000000 		.word	50
 2422 015c 00000000 		.word	draw_object
 2423 0160 00000000 		.word	clear_object
 2424 0164 00000000 		.word	move_object
 2425 0168 00000000 		.word	set_object_speed
 2426              		.align	2
 2429              	player:
 2430 016c 00000000 		.word	ball_geometry
 2431 0170 01000000 		.word	1
 2432 0174 01000000 		.word	1
 2433 0178 01000000 		.word	1
 2434 017c 01000000 		.word	1
 2435 0180 00000000 		.word	draw_object
 2436 0184 00000000 		.word	clear_object
 2437 0188 00000000 		.word	move_object
 2438 018c 00000000 		.word	set_object_speed
 2439              		.global	objects
 2440              		.align	2
 2443              	objects:
 2444 0190 6C010000 		.word	player
 2445 0194 48010000 		.word	alien
 2446              		.text
 2447              		.align	2
 2448              		.global	update_objects
 2449              		.code	16
 2450              		.thumb_func
 2452              	update_objects:
 2453              	.LFB33:
 809:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 810:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** static OBJECT ball = 
 811:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 812:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	&ball_geometry, /* geometri fÃ¶r en boll */
 813:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	0,0, 			//initiala riktningskordinater
 814:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	1,1,			//initial startposition
 815:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	draw_object,
 816:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	clear_object,
 817:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	move_object,
 818:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	set_object_speed
 819:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** };
 820:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 821:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** static OBJECT alien = 
 822:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 823:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	&alien_geometry, /* geometri fÃ¶r en boll */
 824:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	0,0, 			//initiala riktningskordinater
 825:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	1,50,			//initial startposition
 826:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	draw_object,
 827:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	clear_object,
 828:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	move_object,
 829:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	set_object_speed
 830:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** };
 831:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 832:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 833:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** /*void collision_detect ()
 834:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {
 835:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	int collisioner1;
 836:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	int collisioner2;
 837:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	for int (i=0; i < n_objects; i++;)
 838:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	{
 839:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		if (objects[i]->posX)
 840:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	}
 841:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }
 842:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 843:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** */
 844:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** static OBJECT player	=	{	
 845:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			&ball_geometry,		//	geometri fÃ¶r	en	boll	
 846:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			1,1, 		//	ini(ala riktningskoordinater
 847:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			1,1, 	//	ini(al	startposi(on
 848:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			draw_object,					//	funk(onspekare
 849:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			clear_object,	
 850:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			move_object,
 851:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			set_object_speed
 852:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** };	
 853:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 854:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** POBJECT	objects[]	=	{&player, &alien};	
 855:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 856:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void update_objects()	
 857:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {					
 2454              		.loc 1 857 0
 2455              		.cfi_startproc
 2456 0a9c 80B5     		push	{r7, lr}
 2457              		.cfi_def_cfa_offset 8
 2458              		.cfi_offset 7, -8
 2459              		.cfi_offset 14, -4
 2460 0a9e 82B0     		sub	sp, sp, #8
 2461              		.cfi_def_cfa_offset 16
 2462 0aa0 00AF     		add	r7, sp, #0
 2463              		.cfi_def_cfa_register 7
 2464              	.LBB10:
 858:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	for(int i=0; i < n_objects;	i++)	
 2465              		.loc 1 858 0
 2466 0aa2 0023     		movs	r3, #0
 2467 0aa4 7B60     		str	r3, [r7, #4]
 2468 0aa6 0DE0     		b	.L160
 2469              	.L161:
 859:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		
 860:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		objects[i]->move(objects[i]);	
 2470              		.loc 1 860 0 discriminator 3
 2471 0aa8 0B4B     		ldr	r3, .L162
 2472 0aaa 7A68     		ldr	r2, [r7, #4]
 2473 0aac 9200     		lsls	r2, r2, #2
 2474 0aae D358     		ldr	r3, [r2, r3]
 2475 0ab0 DB69     		ldr	r3, [r3, #28]
 2476 0ab2 094A     		ldr	r2, .L162
 2477 0ab4 7968     		ldr	r1, [r7, #4]
 2478 0ab6 8900     		lsls	r1, r1, #2
 2479 0ab8 8A58     		ldr	r2, [r1, r2]
 2480 0aba 1000     		movs	r0, r2
 2481 0abc 9847     		blx	r3
 858:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	for(int i=0; i < n_objects;	i++)	
 2482              		.loc 1 858 0 discriminator 3
 2483 0abe 7B68     		ldr	r3, [r7, #4]
 2484 0ac0 0133     		adds	r3, r3, #1
 2485 0ac2 7B60     		str	r3, [r7, #4]
 2486              	.L160:
 858:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	for(int i=0; i < n_objects;	i++)	
 2487              		.loc 1 858 0 is_stmt 0 discriminator 1
 2488 0ac4 7A68     		ldr	r2, [r7, #4]
 2489 0ac6 054B     		ldr	r3, .L162+4
 2490 0ac8 1B68     		ldr	r3, [r3]
 2491 0aca 9A42     		cmp	r2, r3
 2492 0acc ECD3     		bcc	.L161
 2493              	.LBE10:
 861:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }	
 2494              		.loc 1 861 0 is_stmt 1
 2495 0ace C046     		nop
 2496 0ad0 BD46     		mov	sp, r7
 2497 0ad2 02B0     		add	sp, sp, #8
 2498              		@ sp needed
 2499 0ad4 80BD     		pop	{r7, pc}
 2500              	.L163:
 2501 0ad6 C046     		.align	2
 2502              	.L162:
 2503 0ad8 00000000 		.word	objects
 2504 0adc 00000000 		.word	n_objects
 2505              		.cfi_endproc
 2506              	.LFE33:
 2508              		.align	2
 2509              		.global	drawObjects
 2510              		.code	16
 2511              		.thumb_func
 2513              	drawObjects:
 2514              	.LFB34:
 862:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 863:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void drawObjects()	
 864:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** {	
 2515              		.loc 1 864 0
 2516              		.cfi_startproc
 2517 0ae0 80B5     		push	{r7, lr}
 2518              		.cfi_def_cfa_offset 8
 2519              		.cfi_offset 7, -8
 2520              		.cfi_offset 14, -4
 2521 0ae2 82B0     		sub	sp, sp, #8
 2522              		.cfi_def_cfa_offset 16
 2523 0ae4 00AF     		add	r7, sp, #0
 2524              		.cfi_def_cfa_register 7
 2525              	.LBB11:
 865:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	for(int i=0; i < n_objects;	i++)	
 2526              		.loc 1 865 0
 2527 0ae6 0023     		movs	r3, #0
 2528 0ae8 7B60     		str	r3, [r7, #4]
 2529 0aea 0DE0     		b	.L165
 2530              	.L166:
 866:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 		objects[i]->draw(objects[i]);	
 2531              		.loc 1 866 0 discriminator 3
 2532 0aec 0B4B     		ldr	r3, .L167
 2533 0aee 7A68     		ldr	r2, [r7, #4]
 2534 0af0 9200     		lsls	r2, r2, #2
 2535 0af2 D358     		ldr	r3, [r2, r3]
 2536 0af4 5B69     		ldr	r3, [r3, #20]
 2537 0af6 094A     		ldr	r2, .L167
 2538 0af8 7968     		ldr	r1, [r7, #4]
 2539 0afa 8900     		lsls	r1, r1, #2
 2540 0afc 8A58     		ldr	r2, [r1, r2]
 2541 0afe 1000     		movs	r0, r2
 2542 0b00 9847     		blx	r3
 865:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	for(int i=0; i < n_objects;	i++)	
 2543              		.loc 1 865 0 discriminator 3
 2544 0b02 7B68     		ldr	r3, [r7, #4]
 2545 0b04 0133     		adds	r3, r3, #1
 2546 0b06 7B60     		str	r3, [r7, #4]
 2547              	.L165:
 865:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 	for(int i=0; i < n_objects;	i++)	
 2548              		.loc 1 865 0 is_stmt 0 discriminator 1
 2549 0b08 7A68     		ldr	r2, [r7, #4]
 2550 0b0a 054B     		ldr	r3, .L167+4
 2551 0b0c 1B68     		ldr	r3, [r3]
 2552 0b0e 9A42     		cmp	r2, r3
 2553 0b10 ECD3     		bcc	.L166
 2554              	.LBE11:
 867:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }	
 2555              		.loc 1 867 0 is_stmt 1
 2556 0b12 C046     		nop
 2557 0b14 BD46     		mov	sp, r7
 2558 0b16 02B0     		add	sp, sp, #8
 2559              		@ sp needed
 2560 0b18 80BD     		pop	{r7, pc}
 2561              	.L168:
 2562 0b1a C046     		.align	2
 2563              	.L167:
 2564 0b1c 00000000 		.word	objects
 2565 0b20 00000000 		.word	n_objects
 2566              		.cfi_endproc
 2567              	.LFE34:
 2569              		.align	2
 2570              		.global	updatePlayer
 2571              		.code	16
 2572              		.thumb_func
 2574              	updatePlayer:
 2575              	.LFB35:
 868:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 
 869:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** void updatePlayer()	{	
 2576              		.loc 1 869 0
 2577              		.cfi_startproc
 2578 0b24 B0B5     		push	{r4, r5, r7, lr}
 2579              		.cfi_def_cfa_offset 16
 2580              		.cfi_offset 4, -16
 2581              		.cfi_offset 5, -12
 2582              		.cfi_offset 7, -8
 2583              		.cfi_offset 14, -4
 2584 0b26 00AF     		add	r7, sp, #0
 2585              		.cfi_def_cfa_register 7
 870:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			*GPIO_ODR_LOW_EX = keyb();
 2586              		.loc 1 870 0
 2587 0b28 1C4C     		ldr	r4, .L177
 2588 0b2a FFF7FEFF 		bl	keyb
 2589 0b2e 0300     		movs	r3, r0
 2590 0b30 2370     		strb	r3, [r4]
 871:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			c = keyb();
 2591              		.loc 1 871 0
 2592 0b32 FFF7FEFF 		bl	keyb
 2593 0b36 0300     		movs	r3, r0
 2594 0b38 1A00     		movs	r2, r3
 2595 0b3a 194B     		ldr	r3, .L177+4
 2596 0b3c 1A70     		strb	r2, [r3]
 872:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			switch (c)
 2597              		.loc 1 872 0
 2598 0b3e 184B     		ldr	r3, .L177+4
 2599 0b40 1B78     		ldrb	r3, [r3]
 2600 0b42 342B     		cmp	r3, #52
 2601 0b44 0FD0     		beq	.L171
 2602 0b46 02DC     		bgt	.L172
 2603 0b48 322B     		cmp	r3, #50
 2604 0b4a 1CD0     		beq	.L173
 873:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			{
 874:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				case	'6': player.set_speed(	&player,	2,		0);		break;	
 875:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				case	'4': player.set_speed(	&player,	-2,		0);		break;	
 876:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				case	'8': player.set_speed(	&player,	0,		-2);	break;	
 877:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				case	'2': player.set_speed(	&player,	0,		2);		break;	
 878:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			}	
 879:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** }	...
 2605              		.loc 1 879 0
 2606 0b4c 22E0     		b	.L176
 2607              	.L172:
 872:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 			switch (c)
 2608              		.loc 1 872 0
 2609 0b4e 362B     		cmp	r3, #54
 2610 0b50 02D0     		beq	.L174
 2611 0b52 382B     		cmp	r3, #56
 2612 0b54 0FD0     		beq	.L175
 2613              		.loc 1 879 0
 2614 0b56 1DE0     		b	.L176
 2615              	.L174:
 874:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				case	'6': player.set_speed(	&player,	2,		0);		break;	
 2616              		.loc 1 874 0
 2617 0b58 124B     		ldr	r3, .L177+8
 2618 0b5a 1B6A     		ldr	r3, [r3, #32]
 2619 0b5c 1148     		ldr	r0, .L177+8
 2620 0b5e 0022     		movs	r2, #0
 2621 0b60 0221     		movs	r1, #2
 2622 0b62 9847     		blx	r3
 2623 0b64 16E0     		b	.L170
 2624              	.L171:
 875:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				case	'4': player.set_speed(	&player,	-2,		0);		break;	
 2625              		.loc 1 875 0
 2626 0b66 0F4B     		ldr	r3, .L177+8
 2627 0b68 1B6A     		ldr	r3, [r3, #32]
 2628 0b6a 0222     		movs	r2, #2
 2629 0b6c 5142     		rsbs	r1, r2, #0
 2630 0b6e 0D48     		ldr	r0, .L177+8
 2631 0b70 0022     		movs	r2, #0
 2632 0b72 9847     		blx	r3
 2633 0b74 0EE0     		b	.L170
 2634              	.L175:
 876:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				case	'8': player.set_speed(	&player,	0,		-2);	break;	
 2635              		.loc 1 876 0
 2636 0b76 0B4B     		ldr	r3, .L177+8
 2637 0b78 1B6A     		ldr	r3, [r3, #32]
 2638 0b7a 0222     		movs	r2, #2
 2639 0b7c 5242     		rsbs	r2, r2, #0
 2640 0b7e 0948     		ldr	r0, .L177+8
 2641 0b80 0021     		movs	r1, #0
 2642 0b82 9847     		blx	r3
 2643 0b84 06E0     		b	.L170
 2644              	.L173:
 877:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\allt.h **** 				case	'2': player.set_speed(	&player,	0,		2);		break;	
 2645              		.loc 1 877 0
 2646 0b86 074B     		ldr	r3, .L177+8
 2647 0b88 1B6A     		ldr	r3, [r3, #32]
 2648 0b8a 0648     		ldr	r0, .L177+8
 2649 0b8c 0222     		movs	r2, #2
 2650 0b8e 0021     		movs	r1, #0
 2651 0b90 9847     		blx	r3
 2652 0b92 C046     		nop
 2653              	.L170:
 2654              	.L176:
 2655              		.loc 1 879 0
 2656 0b94 C046     		nop
 2657 0b96 BD46     		mov	sp, r7
 2658              		@ sp needed
 2659 0b98 B0BD     		pop	{r4, r5, r7, pc}
 2660              	.L178:
 2661 0b9a C046     		.align	2
 2662              	.L177:
 2663 0b9c 140C0240 		.word	1073875988
 2664 0ba0 00000000 		.word	c
 2665 0ba4 6C010000 		.word	player
 2666              		.cfi_endproc
 2667              	.LFE35:
 2669              		.section	.start_section,"ax",%progbits
 2670              		.align	2
 2671              		.global	startup
 2672              		.code	16
 2673              		.thumb_func
 2675              	startup:
 2676              	.LFB36:
 2677              		.file 2 "C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5/startup.c"
   1:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** #include "allt.h"
   2:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 
   3:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 
   4:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   5:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 
   6:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** void startup ( void )
   7:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** {
 2678              		.loc 2 7 0
 2679              		.cfi_startproc
   8:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** asm volatile(
 2680              		.loc 2 8 0
 2681              		.syntax divided
 2682              	@ 8 "C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5/startup.c" 1
 2683 0000 0248     		 LDR R0,=0x2001C000
 2684 0002 8546     	 MOV SP,R0
 2685 0004 FFF7FEFF 	 BL main
 2686 0008 FEE7     	.L1: B .L1
 2687              	
 2688              	@ 0 "" 2
   9:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  10:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 	" MOV SP,R0\n"
  11:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 	" BL main\n"				/* call main */
  12:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 	".L1: B .L1\n"				/* never return */
  13:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 	) ;
  14:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** }
 2689              		.loc 2 14 0
 2690              		.thumb
 2691              		.syntax unified
 2692 000a C046     		nop
 2693              		.cfi_endproc
 2694              	.LFE36:
 2696              		.text
 2697              		.align	2
 2698              		.global	main
 2699              		.code	16
 2700              		.thumb_func
 2702              	main:
 2703              	.LFB37:
  15:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 
  16:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 
  17:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 
  18:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** int main(int argc, char **argv)
  19:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** {
 2704              		.loc 2 19 0
 2705              		.cfi_startproc
 2706 0ba8 90B5     		push	{r4, r7, lr}
 2707              		.cfi_def_cfa_offset 12
 2708              		.cfi_offset 4, -12
 2709              		.cfi_offset 7, -8
 2710              		.cfi_offset 14, -4
 2711 0baa 85B0     		sub	sp, sp, #20
 2712              		.cfi_def_cfa_offset 32
 2713 0bac 00AF     		add	r7, sp, #0
 2714              		.cfi_def_cfa_register 7
 2715 0bae 7860     		str	r0, [r7, #4]
 2716 0bb0 3960     		str	r1, [r7]
  20:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			
  21:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			char c;
  22:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			POBJECT p = &player;
 2717              		.loc 2 22 0
 2718 0bb2 2C4B     		ldr	r3, .L190
 2719 0bb4 FB60     		str	r3, [r7, #12]
  23:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			init_app();
 2720              		.loc 2 23 0
 2721 0bb6 FFF7FEFF 		bl	init_app
  24:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			init_keyb();
 2722              		.loc 2 24 0
 2723 0bba FFF7FEFF 		bl	init_keyb
  25:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			graphic_initalize();	
 2724              		.loc 2 25 0
 2725 0bbe FFF7FEFF 		bl	graphic_initalize
  26:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			graphic_clearScreen();	
 2726              		.loc 2 26 0
 2727 0bc2 FFF7FEFF 		bl	graphic_clearScreen
  27:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			clearBuffers();
 2728              		.loc 2 27 0
 2729 0bc6 FFF7FEFF 		bl	clearBuffers
  28:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			bool gameover	=	false;
 2730              		.loc 2 28 0
 2731 0bca 0B23     		movs	r3, #11
 2732 0bcc FB18     		adds	r3, r7, r3
 2733 0bce 0022     		movs	r2, #0
 2734 0bd0 1A70     		strb	r2, [r3]
  29:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			while(	!gameover	) {	
 2735              		.loc 2 29 0
 2736 0bd2 3DE0     		b	.L181
 2737              	.L188:
  30:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			clearBuffer(0);				
 2738              		.loc 2 30 0
 2739 0bd4 0020     		movs	r0, #0
 2740 0bd6 FFF7FEFF 		bl	clearBuffer
  31:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			//			collisionDetection();		
  32:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			//updatePlayer();							
  33:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			
  34:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			//*GPIO_ODR_LOW = keyb();
  35:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			c = keyb();
 2741              		.loc 2 35 0
 2742 0bda 0A23     		movs	r3, #10
 2743 0bdc FC18     		adds	r4, r7, r3
 2744 0bde FFF7FEFF 		bl	keyb
 2745 0be2 0300     		movs	r3, r0
 2746 0be4 2370     		strb	r3, [r4]
  36:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			switch (c)
 2747              		.loc 2 36 0
 2748 0be6 0A23     		movs	r3, #10
 2749 0be8 FB18     		adds	r3, r7, r3
 2750 0bea 1B78     		ldrb	r3, [r3]
 2751 0bec 042B     		cmp	r3, #4
 2752 0bee 0FD0     		beq	.L183
 2753 0bf0 02DC     		bgt	.L184
 2754 0bf2 022B     		cmp	r3, #2
 2755 0bf4 14D0     		beq	.L185
 2756 0bf6 22E0     		b	.L182
 2757              	.L184:
 2758 0bf8 062B     		cmp	r3, #6
 2759 0bfa 02D0     		beq	.L186
 2760 0bfc 082B     		cmp	r3, #8
 2761 0bfe 17D0     		beq	.L187
 2762 0c00 1DE0     		b	.L182
 2763              	.L186:
  37:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			{
  38:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 				case 6: p->set_speed( p, 2, 0 ); break;
 2764              		.loc 2 38 0
 2765 0c02 FB68     		ldr	r3, [r7, #12]
 2766 0c04 1B6A     		ldr	r3, [r3, #32]
 2767 0c06 F868     		ldr	r0, [r7, #12]
 2768 0c08 0022     		movs	r2, #0
 2769 0c0a 0221     		movs	r1, #2
 2770 0c0c 9847     		blx	r3
 2771 0c0e 16E0     		b	.L182
 2772              	.L183:
  39:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 				case 4: p->set_speed( p, -2, 0 ); break;
 2773              		.loc 2 39 0
 2774 0c10 FB68     		ldr	r3, [r7, #12]
 2775 0c12 1B6A     		ldr	r3, [r3, #32]
 2776 0c14 0222     		movs	r2, #2
 2777 0c16 5142     		rsbs	r1, r2, #0
 2778 0c18 F868     		ldr	r0, [r7, #12]
 2779 0c1a 0022     		movs	r2, #0
 2780 0c1c 9847     		blx	r3
 2781 0c1e 0EE0     		b	.L182
 2782              	.L185:
  40:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 				case 2: p->set_speed( p, 0, -2 ); break;
 2783              		.loc 2 40 0
 2784 0c20 FB68     		ldr	r3, [r7, #12]
 2785 0c22 1B6A     		ldr	r3, [r3, #32]
 2786 0c24 0222     		movs	r2, #2
 2787 0c26 5242     		rsbs	r2, r2, #0
 2788 0c28 F868     		ldr	r0, [r7, #12]
 2789 0c2a 0021     		movs	r1, #0
 2790 0c2c 9847     		blx	r3
 2791 0c2e 06E0     		b	.L182
 2792              	.L187:
  41:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 				case 8: p->set_speed( p, 0, 2 ); break;
 2793              		.loc 2 41 0
 2794 0c30 FB68     		ldr	r3, [r7, #12]
 2795 0c32 1B6A     		ldr	r3, [r3, #32]
 2796 0c34 F868     		ldr	r0, [r7, #12]
 2797 0c36 0222     		movs	r2, #2
 2798 0c38 0021     		movs	r1, #0
 2799 0c3a 9847     		blx	r3
 2800 0c3c C046     		nop
 2801              	.L182:
  42:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			
  43:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			}
  44:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			update_objects();						
 2802              		.loc 2 44 0
 2803 0c3e FFF7FEFF 		bl	update_objects
  45:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			drawObjects();								
 2804              		.loc 2 45 0
 2805 0c42 FFF7FEFF 		bl	drawObjects
  46:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			swapBuffers();		
 2806              		.loc 2 46 0
 2807 0c46 FFF7FEFF 		bl	swapBuffers
  47:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			delay_milli(40);		
 2808              		.loc 2 47 0
 2809 0c4a 2820     		movs	r0, #40
 2810 0c4c FFF7FEFF 		bl	delay_milli
 2811              	.L181:
  29:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 			clearBuffer(0);				
 2812              		.loc 2 29 0
 2813 0c50 0B23     		movs	r3, #11
 2814 0c52 FB18     		adds	r3, r7, r3
 2815 0c54 1B78     		ldrb	r3, [r3]
 2816 0c56 002B     		cmp	r3, #0
 2817 0c58 BCD0     		beq	.L188
 2818 0c5a 0023     		movs	r3, #0
  48:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** 		}	
  49:C:/Users/Daniel/Documents/MOP_GAME_daniel/lab_5\startup.c **** }
 2819              		.loc 2 49 0
 2820 0c5c 1800     		movs	r0, r3
 2821 0c5e BD46     		mov	sp, r7
 2822 0c60 05B0     		add	sp, sp, #20
 2823              		@ sp needed
 2824 0c62 90BD     		pop	{r4, r7, pc}
 2825              	.L191:
 2826              		.align	2
 2827              	.L190:
 2828 0c64 6C010000 		.word	player
 2829              		.cfi_endproc
 2830              	.LFE37:
 2832              	.Letext0:
 2833              		.file 3 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\machine\\_default_types.h"
 2834              		.file 4 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\sys\\_stdint.h"
