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
  25              		.global	delay_250ns
  26              		.code	16
  27              		.thumb_func
  29              	delay_250ns:
  30              	.LFB0:
  31              		.file 1 "C:/Users/czar/Chalmers/Moplaborationer/lab4/header.h"
   1:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define SIMULATOR
   2:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #include <stdint.h>	
   3:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
   4:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** typedef struct {	
   5:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 				uint32_t				moder;	
   6:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 				uint16_t				otyper; //	+0x4	
   7:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 				uint16_t				otReserved;
   8:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 				uint32_t				ospeedr; //	+0x8
   9:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 				uint32_t				pupdr; //	+0xc
  10:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 				uint8_t					idrLow; //	+0x10
  11:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 				uint8_t					idrHigh; //	+0x11
  12:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 				uint16_t				idrReserved;
  13:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 				uint8_t					odrLow; //	+0x14
  14:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 				uint8_t					odrHigh; //	+0x15
  15:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 				uint16_t				odrReserved;
  16:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }	
  17:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** GPIO;	
  18:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
  19:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define GPIO_E	(*((volatile	GPIO*)	0x40021000))	
  20:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define GPIO_D	(*((volatile	GPIO*)	0x40020c00))
  21:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
  22:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** typedef struct {
  23:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 				uint32_t				Ctrl;
  24:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 				uint32_t				Load;
  25:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 				uint32_t				Val;
  26:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** } STK_;
  27:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
  28:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define STK    (*((volatile STK_*)	0xE000E010	))
  29:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
  30:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define B_E 0x40 /* Enable */
  31:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define B_RST 0x20 /* Reset */
  32:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define B_CS2 0x10 /* Controller Select 2 */
  33:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define B_CS1 8 /* Controller Select 1 */
  34:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define B_SELECT 4 /* ASCII or Graphics select */
  35:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define B_RW 2 /* Read/Write */
  36:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define B_DI 1 /* Data or Instruction : 1 data, 0 Instr */
  37:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
  38:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define LCD_ON 0x3F /* Display på */
  39:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define LCD_OFF 0x3E /* Av */
  40:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define LCD_SET_ADD 0x40 /* Set X adress (0 – 63) */
  41:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define LCD_SET_PAGE 0xB8 /* Set Y adress (0 – 7) */
  42:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define LCD_DISP_START 0xC0 /* Start adress i display minne */
  43:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define LCD_BUSY 0x80 /* läsa ut busy status. R/W skall vara hög */
  44:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
  45:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** static volatile int DELAY_COUNT;
  46:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
  47:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** void delay_250ns( void )
  48:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
  32              		.loc 1 48 0
  33              		.cfi_startproc
  34 0000 80B5     		push	{r7, lr}
  35              		.cfi_def_cfa_offset 8
  36              		.cfi_offset 7, -8
  37              		.cfi_offset 14, -4
  38 0002 00AF     		add	r7, sp, #0
  39              		.cfi_def_cfa_register 7
  49:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  /* SystemCoreClock = 168000000 */
  50:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  STK.Ctrl = 0;
  40              		.loc 1 50 0
  41 0004 0C4B     		ldr	r3, .L3
  42 0006 0022     		movs	r2, #0
  43 0008 1A60     		str	r2, [r3]
  51:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  STK.Load = ( (168/4) -1 );
  44              		.loc 1 51 0
  45 000a 0B4B     		ldr	r3, .L3
  46 000c 2922     		movs	r2, #41
  47 000e 5A60     		str	r2, [r3, #4]
  52:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  STK.Val = 0;
  48              		.loc 1 52 0
  49 0010 094B     		ldr	r3, .L3
  50 0012 0022     		movs	r2, #0
  51 0014 9A60     		str	r2, [r3, #8]
  53:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  STK.Ctrl = 5;
  52              		.loc 1 53 0
  53 0016 084B     		ldr	r3, .L3
  54 0018 0522     		movs	r2, #5
  55 001a 1A60     		str	r2, [r3]
  54:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  while( (STK.Ctrl & 0x10000 )== 0 )
  56              		.loc 1 54 0
  57 001c C046     		nop
  58              	.L2:
  59              		.loc 1 54 0 is_stmt 0 discriminator 1
  60 001e 064B     		ldr	r3, .L3
  61 0020 1A68     		ldr	r2, [r3]
  62 0022 8023     		movs	r3, #128
  63 0024 5B02     		lsls	r3, r3, #9
  64 0026 1340     		ands	r3, r2
  65 0028 F9D0     		beq	.L2
  55:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  {}
  56:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  STK.Ctrl = 0;
  66              		.loc 1 56 0 is_stmt 1
  67 002a 034B     		ldr	r3, .L3
  68 002c 0022     		movs	r2, #0
  69 002e 1A60     		str	r2, [r3]
  57:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
  70              		.loc 1 57 0
  71 0030 C046     		nop
  72 0032 BD46     		mov	sp, r7
  73              		@ sp needed
  74 0034 80BD     		pop	{r7, pc}
  75              	.L4:
  76 0036 C046     		.align	2
  77              	.L3:
  78 0038 10E000E0 		.word	-536813552
  79              		.cfi_endproc
  80              	.LFE0:
  82              		.align	2
  83              		.global	delay_micro
  84              		.code	16
  85              		.thumb_func
  87              	delay_micro:
  88              	.LFB1:
  58:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
  59:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** void delay_micro( unsigned int us )
  60:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
  89              		.loc 1 60 0
  90              		.cfi_startproc
  91 003c 80B5     		push	{r7, lr}
  92              		.cfi_def_cfa_offset 8
  93              		.cfi_offset 7, -8
  94              		.cfi_offset 14, -4
  95 003e 82B0     		sub	sp, sp, #8
  96              		.cfi_def_cfa_offset 16
  97 0040 00AF     		add	r7, sp, #0
  98              		.cfi_def_cfa_register 7
  99 0042 7860     		str	r0, [r7, #4]
  61:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  while( us-- )
 100              		.loc 1 61 0
 101 0044 07E0     		b	.L6
 102              	.L7:
  62:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  {
  63:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  delay_250ns();
 103              		.loc 1 63 0
 104 0046 FFF7FEFF 		bl	delay_250ns
  64:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  delay_250ns();
 105              		.loc 1 64 0
 106 004a FFF7FEFF 		bl	delay_250ns
  65:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  delay_250ns();
 107              		.loc 1 65 0
 108 004e FFF7FEFF 		bl	delay_250ns
  66:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  delay_250ns();
 109              		.loc 1 66 0
 110 0052 FFF7FEFF 		bl	delay_250ns
 111              	.L6:
  61:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  {
 112              		.loc 1 61 0
 113 0056 7B68     		ldr	r3, [r7, #4]
 114 0058 5A1E     		subs	r2, r3, #1
 115 005a 7A60     		str	r2, [r7, #4]
 116 005c 002B     		cmp	r3, #0
 117 005e F2D1     		bne	.L7
  67:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  }
  68:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 118              		.loc 1 68 0
 119 0060 C046     		nop
 120 0062 BD46     		mov	sp, r7
 121 0064 02B0     		add	sp, sp, #8
 122              		@ sp needed
 123 0066 80BD     		pop	{r7, pc}
 124              		.cfi_endproc
 125              	.LFE1:
 127              		.align	2
 128              		.global	delay_milli
 129              		.code	16
 130              		.thumb_func
 132              	delay_milli:
 133              	.LFB2:
  69:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
  70:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** void delay_milli( unsigned int ms )
  71:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 134              		.loc 1 71 0
 135              		.cfi_startproc
 136 0068 80B5     		push	{r7, lr}
 137              		.cfi_def_cfa_offset 8
 138              		.cfi_offset 7, -8
 139              		.cfi_offset 14, -4
 140 006a 82B0     		sub	sp, sp, #8
 141              		.cfi_def_cfa_offset 16
 142 006c 00AF     		add	r7, sp, #0
 143              		.cfi_def_cfa_register 7
 144 006e 7860     		str	r0, [r7, #4]
  72:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  #ifdef SIMULATOR
  73:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** while( ms-- )
 145              		.loc 1 73 0
 146 0070 02E0     		b	.L9
 147              	.L10:
  74:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  delay_micro(1);
 148              		.loc 1 74 0
 149 0072 0120     		movs	r0, #1
 150 0074 FFF7FEFF 		bl	delay_micro
 151              	.L9:
  73:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  delay_micro(1);
 152              		.loc 1 73 0
 153 0078 7B68     		ldr	r3, [r7, #4]
 154 007a 5A1E     		subs	r2, r3, #1
 155 007c 7A60     		str	r2, [r7, #4]
 156 007e 002B     		cmp	r3, #0
 157 0080 F7D1     		bne	.L10
  75:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #else
  76:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** while( ms-- )
  77:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h ****  delay_micro(1000);
  78:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #endif
  79:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 158              		.loc 1 79 0
 159 0082 C046     		nop
 160 0084 BD46     		mov	sp, r7
 161 0086 02B0     		add	sp, sp, #8
 162              		@ sp needed
 163 0088 80BD     		pop	{r7, pc}
 164              		.cfi_endproc
 165              	.LFE2:
 167 008a C046     		.align	2
 168              		.global	delay_500ns
 169              		.code	16
 170              		.thumb_func
 172              	delay_500ns:
 173              	.LFB3:
  80:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
  81:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** void delay_500ns ( void )
  82:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 174              		.loc 1 82 0
 175              		.cfi_startproc
 176 008c 80B5     		push	{r7, lr}
 177              		.cfi_def_cfa_offset 8
 178              		.cfi_offset 7, -8
 179              		.cfi_offset 14, -4
 180 008e 00AF     		add	r7, sp, #0
 181              		.cfi_def_cfa_register 7
  83:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	delay_250ns();
 182              		.loc 1 83 0
 183 0090 FFF7FEFF 		bl	delay_250ns
  84:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	delay_250ns();
 184              		.loc 1 84 0
 185 0094 FFF7FEFF 		bl	delay_250ns
  85:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 186              		.loc 1 85 0
 187 0098 C046     		nop
 188 009a BD46     		mov	sp, r7
 189              		@ sp needed
 190 009c 80BD     		pop	{r7, pc}
 191              		.cfi_endproc
 192              	.LFE3:
 194 009e C046     		.align	2
 195              		.global	init_app
 196              		.code	16
 197              		.thumb_func
 199              	init_app:
 200              	.LFB4:
  86:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
  87:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
  88:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** void init_app(void)
  89:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 201              		.loc 1 89 0
 202              		.cfi_startproc
 203 00a0 80B5     		push	{r7, lr}
 204              		.cfi_def_cfa_offset 8
 205              		.cfi_offset 7, -8
 206              		.cfi_offset 14, -4
 207 00a2 00AF     		add	r7, sp, #0
 208              		.cfi_def_cfa_register 7
  90:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** /* PORT E */
  91:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** GPIO_E.moder = 0x55555555; /* all bits outputs */
 209              		.loc 1 91 0
 210 00a4 074B     		ldr	r3, .L13
 211 00a6 084A     		ldr	r2, .L13+4
 212 00a8 1A60     		str	r2, [r3]
  92:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** GPIO_E.otyper = 0x00000000; /* outputs are push/pull */
 213              		.loc 1 92 0
 214 00aa 064B     		ldr	r3, .L13
 215 00ac 0022     		movs	r2, #0
 216 00ae 9A80     		strh	r2, [r3, #4]
  93:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** GPIO_E.ospeedr = 0x55555555; /* medium speed */
 217              		.loc 1 93 0
 218 00b0 044B     		ldr	r3, .L13
 219 00b2 054A     		ldr	r2, .L13+4
 220 00b4 9A60     		str	r2, [r3, #8]
  94:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** GPIO_E.pupdr = 0x55550000; /* inputs are pull up */
 221              		.loc 1 94 0
 222 00b6 034B     		ldr	r3, .L13
 223 00b8 044A     		ldr	r2, .L13+8
 224 00ba DA60     		str	r2, [r3, #12]
  95:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 225              		.loc 1 95 0
 226 00bc C046     		nop
 227 00be BD46     		mov	sp, r7
 228              		@ sp needed
 229 00c0 80BD     		pop	{r7, pc}
 230              	.L14:
 231 00c2 C046     		.align	2
 232              	.L13:
 233 00c4 00100240 		.word	1073876992
 234 00c8 55555555 		.word	1431655765
 235 00cc 00005555 		.word	1431633920
 236              		.cfi_endproc
 237              	.LFE4:
 239              		.align	2
 240              		.code	16
 241              		.thumb_func
 243              	graphic_ctrl_bit_set:
 244              	.LFB5:
  96:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
  97:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define LCD_SET_ADD 0x40 /* Set X adress (0 – 63)
  98:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** */
  99:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** #define LCD_SET_PAGE 0xB8 /* Set Y adress (0 – 7) */
 100:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** static void graphic_ctrl_bit_set( unsigned char x )
 101:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 245              		.loc 1 101 0
 246              		.cfi_startproc
 247 00d0 80B5     		push	{r7, lr}
 248              		.cfi_def_cfa_offset 8
 249              		.cfi_offset 7, -8
 250              		.cfi_offset 14, -4
 251 00d2 82B0     		sub	sp, sp, #8
 252              		.cfi_def_cfa_offset 16
 253 00d4 00AF     		add	r7, sp, #0
 254              		.cfi_def_cfa_register 7
 255 00d6 0200     		movs	r2, r0
 256 00d8 FB1D     		adds	r3, r7, #7
 257 00da 1A70     		strb	r2, [r3]
 102:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** GPIO_E.odrLow |= ( ~B_SELECT & x );
 258              		.loc 1 102 0
 259 00dc 094A     		ldr	r2, .L16
 260 00de 094B     		ldr	r3, .L16
 261 00e0 1B7D     		ldrb	r3, [r3, #20]
 262 00e2 DBB2     		uxtb	r3, r3
 263 00e4 D9B2     		uxtb	r1, r3
 264 00e6 FB1D     		adds	r3, r7, #7
 265 00e8 1B78     		ldrb	r3, [r3]
 266 00ea 181C     		adds	r0, r3, #0
 267 00ec 0423     		movs	r3, #4
 268 00ee 9843     		bics	r0, r3
 269 00f0 0300     		movs	r3, r0
 270 00f2 DBB2     		uxtb	r3, r3
 271 00f4 0B43     		orrs	r3, r1
 272 00f6 DBB2     		uxtb	r3, r3
 273 00f8 DBB2     		uxtb	r3, r3
 274 00fa 1375     		strb	r3, [r2, #20]
 103:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 275              		.loc 1 103 0
 276 00fc C046     		nop
 277 00fe BD46     		mov	sp, r7
 278 0100 02B0     		add	sp, sp, #8
 279              		@ sp needed
 280 0102 80BD     		pop	{r7, pc}
 281              	.L17:
 282              		.align	2
 283              	.L16:
 284 0104 00100240 		.word	1073876992
 285              		.cfi_endproc
 286              	.LFE5:
 288              		.align	2
 289              		.code	16
 290              		.thumb_func
 292              	graphic_ctrl_bit_clear:
 293              	.LFB6:
 104:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** static void graphic_ctrl_bit_clear( unsigned char x )
 105:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 294              		.loc 1 105 0
 295              		.cfi_startproc
 296 0108 80B5     		push	{r7, lr}
 297              		.cfi_def_cfa_offset 8
 298              		.cfi_offset 7, -8
 299              		.cfi_offset 14, -4
 300 010a 82B0     		sub	sp, sp, #8
 301              		.cfi_def_cfa_offset 16
 302 010c 00AF     		add	r7, sp, #0
 303              		.cfi_def_cfa_register 7
 304 010e 0200     		movs	r2, r0
 305 0110 FB1D     		adds	r3, r7, #7
 306 0112 1A70     		strb	r2, [r3]
 106:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** GPIO_E.odrLow &= ( ~B_SELECT & ~x );
 307              		.loc 1 106 0
 308 0114 0849     		ldr	r1, .L19
 309 0116 084B     		ldr	r3, .L19
 310 0118 1B7D     		ldrb	r3, [r3, #20]
 311 011a DBB2     		uxtb	r3, r3
 312 011c FA1D     		adds	r2, r7, #7
 313 011e 1278     		ldrb	r2, [r2]
 314 0120 D243     		mvns	r2, r2
 315 0122 D2B2     		uxtb	r2, r2
 316 0124 1340     		ands	r3, r2
 317 0126 DBB2     		uxtb	r3, r3
 318 0128 0422     		movs	r2, #4
 319 012a 9343     		bics	r3, r2
 320 012c DBB2     		uxtb	r3, r3
 321 012e 0B75     		strb	r3, [r1, #20]
 107:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 322              		.loc 1 107 0
 323 0130 C046     		nop
 324 0132 BD46     		mov	sp, r7
 325 0134 02B0     		add	sp, sp, #8
 326              		@ sp needed
 327 0136 80BD     		pop	{r7, pc}
 328              	.L20:
 329              		.align	2
 330              	.L19:
 331 0138 00100240 		.word	1073876992
 332              		.cfi_endproc
 333              	.LFE6:
 335              		.align	2
 336              		.code	16
 337              		.thumb_func
 339              	select_controller:
 340              	.LFB7:
 108:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
 109:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** static void select_controller(unsigned char controller)
 110:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 341              		.loc 1 110 0
 342              		.cfi_startproc
 343 013c 80B5     		push	{r7, lr}
 344              		.cfi_def_cfa_offset 8
 345              		.cfi_offset 7, -8
 346              		.cfi_offset 14, -4
 347 013e 82B0     		sub	sp, sp, #8
 348              		.cfi_def_cfa_offset 16
 349 0140 00AF     		add	r7, sp, #0
 350              		.cfi_def_cfa_register 7
 351 0142 0200     		movs	r2, r0
 352 0144 FB1D     		adds	r3, r7, #7
 353 0146 1A70     		strb	r2, [r3]
 111:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** switch(controller){
 354              		.loc 1 111 0
 355 0148 FB1D     		adds	r3, r7, #7
 356 014a 1B78     		ldrb	r3, [r3]
 357 014c 082B     		cmp	r3, #8
 358 014e 0CD0     		beq	.L23
 359 0150 02DC     		bgt	.L24
 360 0152 002B     		cmp	r3, #0
 361 0154 05D0     		beq	.L25
 112:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** case 0:
 113:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_clear(B_CS1|B_CS2);
 114:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** break;
 115:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** case B_CS1 :
 116:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_set(B_CS1); graphic_ctrl_bit_clear(B_CS2);
 117:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** break;
 118:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** case B_CS2 :
 119:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_set(B_CS2); graphic_ctrl_bit_clear(B_CS1);
 120:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** break;
 121:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** case B_CS1|B_CS2 :
 122:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_set(B_CS1|B_CS2);
 123:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** break;
 124:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 125:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 362              		.loc 1 125 0
 363 0156 1AE0     		b	.L28
 364              	.L24:
 111:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** switch(controller){
 365              		.loc 1 111 0
 366 0158 102B     		cmp	r3, #16
 367 015a 0DD0     		beq	.L26
 368 015c 182B     		cmp	r3, #24
 369 015e 12D0     		beq	.L27
 370              		.loc 1 125 0
 371 0160 15E0     		b	.L28
 372              	.L25:
 113:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** break;
 373              		.loc 1 113 0
 374 0162 1820     		movs	r0, #24
 375 0164 FFF7D0FF 		bl	graphic_ctrl_bit_clear
 114:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** case B_CS1 :
 376              		.loc 1 114 0
 377 0168 11E0     		b	.L22
 378              	.L23:
 116:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** break;
 379              		.loc 1 116 0
 380 016a 0820     		movs	r0, #8
 381 016c FFF7B0FF 		bl	graphic_ctrl_bit_set
 382 0170 1020     		movs	r0, #16
 383 0172 FFF7C9FF 		bl	graphic_ctrl_bit_clear
 117:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** case B_CS2 :
 384              		.loc 1 117 0
 385 0176 0AE0     		b	.L22
 386              	.L26:
 119:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** break;
 387              		.loc 1 119 0
 388 0178 1020     		movs	r0, #16
 389 017a FFF7A9FF 		bl	graphic_ctrl_bit_set
 390 017e 0820     		movs	r0, #8
 391 0180 FFF7C2FF 		bl	graphic_ctrl_bit_clear
 120:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** case B_CS1|B_CS2 :
 392              		.loc 1 120 0
 393 0184 03E0     		b	.L22
 394              	.L27:
 122:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** break;
 395              		.loc 1 122 0
 396 0186 1820     		movs	r0, #24
 397 0188 FFF7A2FF 		bl	graphic_ctrl_bit_set
 123:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 398              		.loc 1 123 0
 399 018c C046     		nop
 400              	.L22:
 401              	.L28:
 402              		.loc 1 125 0
 403 018e C046     		nop
 404 0190 BD46     		mov	sp, r7
 405 0192 02B0     		add	sp, sp, #8
 406              		@ sp needed
 407 0194 80BD     		pop	{r7, pc}
 408              		.cfi_endproc
 409              	.LFE7:
 411 0196 C046     		.align	2
 412              		.code	16
 413              		.thumb_func
 415              	graphic_wait_ready:
 416              	.LFB8:
 126:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
 127:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** static void graphic_wait_ready(void)
 128:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 417              		.loc 1 128 0
 418              		.cfi_startproc
 419 0198 80B5     		push	{r7, lr}
 420              		.cfi_def_cfa_offset 8
 421              		.cfi_offset 7, -8
 422              		.cfi_offset 14, -4
 423 019a 82B0     		sub	sp, sp, #8
 424              		.cfi_def_cfa_offset 16
 425 019c 00AF     		add	r7, sp, #0
 426              		.cfi_def_cfa_register 7
 129:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** unsigned char c;
 130:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_clear( B_E );
 427              		.loc 1 130 0
 428 019e 4020     		movs	r0, #64
 429 01a0 FFF7B2FF 		bl	graphic_ctrl_bit_clear
 131:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** GPIO_E.moder = 0x00005555;
 430              		.loc 1 131 0
 431 01a4 154B     		ldr	r3, .L35
 432 01a6 164A     		ldr	r2, .L35+4
 433 01a8 1A60     		str	r2, [r3]
 132:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** /* b15-8 are inputs,
 133:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** b7-0 are outputs */
 134:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_clear( B_DI );
 434              		.loc 1 134 0
 435 01aa 0120     		movs	r0, #1
 436 01ac FFF7ACFF 		bl	graphic_ctrl_bit_clear
 135:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_set( B_RW );
 437              		.loc 1 135 0
 438 01b0 0220     		movs	r0, #2
 439 01b2 FFF78DFF 		bl	graphic_ctrl_bit_set
 136:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** delay_500ns();
 440              		.loc 1 136 0
 441 01b6 FFF7FEFF 		bl	delay_500ns
 442              	.L32:
 137:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** while( 1 )
 138:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 139:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_set( B_E );
 443              		.loc 1 139 0
 444 01ba 4020     		movs	r0, #64
 445 01bc FFF788FF 		bl	graphic_ctrl_bit_set
 140:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** delay_500ns();
 446              		.loc 1 140 0
 447 01c0 FFF7FEFF 		bl	delay_500ns
 141:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** c = GPIO_E.idrHigh & 0x80;
 448              		.loc 1 141 0
 449 01c4 0D4B     		ldr	r3, .L35
 450 01c6 5B7C     		ldrb	r3, [r3, #17]
 451 01c8 DAB2     		uxtb	r2, r3
 452 01ca FB1D     		adds	r3, r7, #7
 453 01cc 7F21     		movs	r1, #127
 454 01ce 8A43     		bics	r2, r1
 455 01d0 1A70     		strb	r2, [r3]
 142:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** if( c == 0 )break;
 456              		.loc 1 142 0
 457 01d2 FB1D     		adds	r3, r7, #7
 458 01d4 1B78     		ldrb	r3, [r3]
 459 01d6 002B     		cmp	r3, #0
 460 01d8 05D0     		beq	.L34
 143:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_clear( B_E );
 461              		.loc 1 143 0
 462 01da 4020     		movs	r0, #64
 463 01dc FFF794FF 		bl	graphic_ctrl_bit_clear
 144:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** delay_500ns();
 464              		.loc 1 144 0
 465 01e0 FFF7FEFF 		bl	delay_500ns
 145:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 466              		.loc 1 145 0
 467 01e4 E9E7     		b	.L32
 468              	.L34:
 142:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_clear( B_E );
 469              		.loc 1 142 0
 470 01e6 C046     		nop
 146:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** GPIO_E.moder = 0x55555555;
 471              		.loc 1 146 0
 472 01e8 044B     		ldr	r3, .L35
 473 01ea 064A     		ldr	r2, .L35+8
 474 01ec 1A60     		str	r2, [r3]
 147:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** /* all bits outputs */
 148:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_set( B_E );
 475              		.loc 1 148 0
 476 01ee 4020     		movs	r0, #64
 477 01f0 FFF76EFF 		bl	graphic_ctrl_bit_set
 149:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 478              		.loc 1 149 0
 479 01f4 C046     		nop
 480 01f6 BD46     		mov	sp, r7
 481 01f8 02B0     		add	sp, sp, #8
 482              		@ sp needed
 483 01fa 80BD     		pop	{r7, pc}
 484              	.L36:
 485              		.align	2
 486              	.L35:
 487 01fc 00100240 		.word	1073876992
 488 0200 55550000 		.word	21845
 489 0204 55555555 		.word	1431655765
 490              		.cfi_endproc
 491              	.LFE8:
 493              		.align	2
 494              		.code	16
 495              		.thumb_func
 497              	display_read:
 498              	.LFB9:
 150:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
 151:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** static unsigned char display_read(unsigned char controller)
 152:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 499              		.loc 1 152 0
 500              		.cfi_startproc
 501 0208 80B5     		push	{r7, lr}
 502              		.cfi_def_cfa_offset 8
 503              		.cfi_offset 7, -8
 504              		.cfi_offset 14, -4
 505 020a 84B0     		sub	sp, sp, #16
 506              		.cfi_def_cfa_offset 24
 507 020c 00AF     		add	r7, sp, #0
 508              		.cfi_def_cfa_register 7
 509 020e 0200     		movs	r2, r0
 510 0210 FB1D     		adds	r3, r7, #7
 511 0212 1A70     		strb	r2, [r3]
 153:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** unsigned char c;
 154:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** GPIO_E.moder = 0x00005555;
 512              		.loc 1 154 0
 513 0214 1D4B     		ldr	r3, .L41
 514 0216 1E4A     		ldr	r2, .L41+4
 515 0218 1A60     		str	r2, [r3]
 155:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** /* b15-8 are inputs, 7-0 are outputs */
 156:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** select_controller( controller );
 516              		.loc 1 156 0
 517 021a FB1D     		adds	r3, r7, #7
 518 021c 1B78     		ldrb	r3, [r3]
 519 021e 1800     		movs	r0, r3
 520 0220 FFF78CFF 		bl	select_controller
 157:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_clear( B_E );
 521              		.loc 1 157 0
 522 0224 4020     		movs	r0, #64
 523 0226 FFF76FFF 		bl	graphic_ctrl_bit_clear
 158:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_set( B_DI | B_RW );
 524              		.loc 1 158 0
 525 022a 0320     		movs	r0, #3
 526 022c FFF750FF 		bl	graphic_ctrl_bit_set
 159:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** delay_500ns();
 527              		.loc 1 159 0
 528 0230 FFF7FEFF 		bl	delay_500ns
 160:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_set( B_E );
 529              		.loc 1 160 0
 530 0234 4020     		movs	r0, #64
 531 0236 FFF74BFF 		bl	graphic_ctrl_bit_set
 161:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** delay_500ns();
 532              		.loc 1 161 0
 533 023a FFF7FEFF 		bl	delay_500ns
 162:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** c = GPIO_E.idrHigh;
 534              		.loc 1 162 0
 535 023e 134A     		ldr	r2, .L41
 536 0240 0F23     		movs	r3, #15
 537 0242 FB18     		adds	r3, r7, r3
 538 0244 527C     		ldrb	r2, [r2, #17]
 539 0246 1A70     		strb	r2, [r3]
 163:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_clear( B_E );
 540              		.loc 1 163 0
 541 0248 4020     		movs	r0, #64
 542 024a FFF75DFF 		bl	graphic_ctrl_bit_clear
 164:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** GPIO_E.moder = 0x55555555;
 543              		.loc 1 164 0
 544 024e 0F4B     		ldr	r3, .L41
 545 0250 104A     		ldr	r2, .L41+8
 546 0252 1A60     		str	r2, [r3]
 165:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** /* all bits outputs */
 166:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** if( controller & B_CS1 )
 547              		.loc 1 166 0
 548 0254 FB1D     		adds	r3, r7, #7
 549 0256 1B78     		ldrb	r3, [r3]
 550 0258 0822     		movs	r2, #8
 551 025a 1340     		ands	r3, r2
 552 025c 04D0     		beq	.L38
 167:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 168:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** select_controller( B_CS1);
 553              		.loc 1 168 0
 554 025e 0820     		movs	r0, #8
 555 0260 FFF76CFF 		bl	select_controller
 169:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_wait_ready();
 556              		.loc 1 169 0
 557 0264 FFF798FF 		bl	graphic_wait_ready
 558              	.L38:
 170:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 171:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** if( controller & B_CS2 )
 559              		.loc 1 171 0
 560 0268 FB1D     		adds	r3, r7, #7
 561 026a 1B78     		ldrb	r3, [r3]
 562 026c 1022     		movs	r2, #16
 563 026e 1340     		ands	r3, r2
 564 0270 04D0     		beq	.L39
 172:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 173:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** select_controller( B_CS2);
 565              		.loc 1 173 0
 566 0272 1020     		movs	r0, #16
 567 0274 FFF762FF 		bl	select_controller
 174:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_wait_ready();
 568              		.loc 1 174 0
 569 0278 FFF78EFF 		bl	graphic_wait_ready
 570              	.L39:
 175:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 176:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** return c;
 571              		.loc 1 176 0
 572 027c 0F23     		movs	r3, #15
 573 027e FB18     		adds	r3, r7, r3
 574 0280 1B78     		ldrb	r3, [r3]
 177:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 575              		.loc 1 177 0
 576 0282 1800     		movs	r0, r3
 577 0284 BD46     		mov	sp, r7
 578 0286 04B0     		add	sp, sp, #16
 579              		@ sp needed
 580 0288 80BD     		pop	{r7, pc}
 581              	.L42:
 582 028a C046     		.align	2
 583              	.L41:
 584 028c 00100240 		.word	1073876992
 585 0290 55550000 		.word	21845
 586 0294 55555555 		.word	1431655765
 587              		.cfi_endproc
 588              	.LFE9:
 590              		.align	2
 591              		.code	16
 592              		.thumb_func
 594              	graphic_read:
 595              	.LFB10:
 178:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
 179:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** static unsigned char graphic_read(unsigned char controller)
 180:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 596              		.loc 1 180 0
 597              		.cfi_startproc
 598 0298 80B5     		push	{r7, lr}
 599              		.cfi_def_cfa_offset 8
 600              		.cfi_offset 7, -8
 601              		.cfi_offset 14, -4
 602 029a 82B0     		sub	sp, sp, #8
 603              		.cfi_def_cfa_offset 16
 604 029c 00AF     		add	r7, sp, #0
 605              		.cfi_def_cfa_register 7
 606 029e 0200     		movs	r2, r0
 607 02a0 FB1D     		adds	r3, r7, #7
 608 02a2 1A70     		strb	r2, [r3]
 181:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** display_read(controller);
 609              		.loc 1 181 0
 610 02a4 FB1D     		adds	r3, r7, #7
 611 02a6 1B78     		ldrb	r3, [r3]
 612 02a8 1800     		movs	r0, r3
 613 02aa FFF7ADFF 		bl	display_read
 182:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** return display_read(controller);
 614              		.loc 1 182 0
 615 02ae FB1D     		adds	r3, r7, #7
 616 02b0 1B78     		ldrb	r3, [r3]
 617 02b2 1800     		movs	r0, r3
 618 02b4 FFF7A8FF 		bl	display_read
 619 02b8 0300     		movs	r3, r0
 183:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 620              		.loc 1 183 0
 621 02ba 1800     		movs	r0, r3
 622 02bc BD46     		mov	sp, r7
 623 02be 02B0     		add	sp, sp, #8
 624              		@ sp needed
 625 02c0 80BD     		pop	{r7, pc}
 626              		.cfi_endproc
 627              	.LFE10:
 629 02c2 C046     		.align	2
 630              		.code	16
 631              		.thumb_func
 633              	graphic_write:
 634              	.LFB11:
 184:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
 185:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** static void graphic_write(unsigned char val,
 186:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** unsigned char controller)
 187:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 635              		.loc 1 187 0
 636              		.cfi_startproc
 637 02c4 80B5     		push	{r7, lr}
 638              		.cfi_def_cfa_offset 8
 639              		.cfi_offset 7, -8
 640              		.cfi_offset 14, -4
 641 02c6 82B0     		sub	sp, sp, #8
 642              		.cfi_def_cfa_offset 16
 643 02c8 00AF     		add	r7, sp, #0
 644              		.cfi_def_cfa_register 7
 645 02ca 0200     		movs	r2, r0
 646 02cc FB1D     		adds	r3, r7, #7
 647 02ce 1A70     		strb	r2, [r3]
 648 02d0 BB1D     		adds	r3, r7, #6
 649 02d2 0A1C     		adds	r2, r1, #0
 650 02d4 1A70     		strb	r2, [r3]
 188:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** GPIO_E.odrHigh = val;
 651              		.loc 1 188 0
 652 02d6 1A4A     		ldr	r2, .L48
 653 02d8 FB1D     		adds	r3, r7, #7
 654 02da 1B78     		ldrb	r3, [r3]
 655 02dc 5375     		strb	r3, [r2, #21]
 189:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** select_controller( controller );
 656              		.loc 1 189 0
 657 02de BB1D     		adds	r3, r7, #6
 658 02e0 1B78     		ldrb	r3, [r3]
 659 02e2 1800     		movs	r0, r3
 660 02e4 FFF72AFF 		bl	select_controller
 190:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** delay_500ns();
 661              		.loc 1 190 0
 662 02e8 FFF7FEFF 		bl	delay_500ns
 191:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_set( B_E );
 663              		.loc 1 191 0
 664 02ec 4020     		movs	r0, #64
 665 02ee FFF7EFFE 		bl	graphic_ctrl_bit_set
 192:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** delay_500ns();
 666              		.loc 1 192 0
 667 02f2 FFF7FEFF 		bl	delay_500ns
 193:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_clear( B_E );
 668              		.loc 1 193 0
 669 02f6 4020     		movs	r0, #64
 670 02f8 FFF706FF 		bl	graphic_ctrl_bit_clear
 194:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** if( controller & B_CS1 )
 671              		.loc 1 194 0
 672 02fc BB1D     		adds	r3, r7, #6
 673 02fe 1B78     		ldrb	r3, [r3]
 674 0300 0822     		movs	r2, #8
 675 0302 1340     		ands	r3, r2
 676 0304 04D0     		beq	.L46
 195:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 196:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** select_controller( B_CS1);
 677              		.loc 1 196 0
 678 0306 0820     		movs	r0, #8
 679 0308 FFF718FF 		bl	select_controller
 197:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_wait_ready();
 680              		.loc 1 197 0
 681 030c FFF744FF 		bl	graphic_wait_ready
 682              	.L46:
 198:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 199:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** if( controller & B_CS2 )
 683              		.loc 1 199 0
 684 0310 BB1D     		adds	r3, r7, #6
 685 0312 1B78     		ldrb	r3, [r3]
 686 0314 1022     		movs	r2, #16
 687 0316 1340     		ands	r3, r2
 688 0318 04D0     		beq	.L47
 200:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 201:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** select_controller( B_CS2);
 689              		.loc 1 201 0
 690 031a 1020     		movs	r0, #16
 691 031c FFF70EFF 		bl	select_controller
 202:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_wait_ready();
 692              		.loc 1 202 0
 693 0320 FFF73AFF 		bl	graphic_wait_ready
 694              	.L47:
 203:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 204:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** GPIO_E.odrHigh = 0;
 695              		.loc 1 204 0
 696 0324 064B     		ldr	r3, .L48
 697 0326 0022     		movs	r2, #0
 698 0328 5A75     		strb	r2, [r3, #21]
 205:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_set( B_E );
 699              		.loc 1 205 0
 700 032a 4020     		movs	r0, #64
 701 032c FFF7D0FE 		bl	graphic_ctrl_bit_set
 206:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** select_controller( 0 );
 702              		.loc 1 206 0
 703 0330 0020     		movs	r0, #0
 704 0332 FFF703FF 		bl	select_controller
 207:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 705              		.loc 1 207 0
 706 0336 C046     		nop
 707 0338 BD46     		mov	sp, r7
 708 033a 02B0     		add	sp, sp, #8
 709              		@ sp needed
 710 033c 80BD     		pop	{r7, pc}
 711              	.L49:
 712 033e C046     		.align	2
 713              	.L48:
 714 0340 00100240 		.word	1073876992
 715              		.cfi_endproc
 716              	.LFE11:
 718              		.align	2
 719              		.code	16
 720              		.thumb_func
 722              	graphic_writeCommand:
 723              	.LFB12:
 208:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
 209:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** static void graphic_writeCommand(unsigned char commandToWrite,
 210:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** unsigned char controller)
 211:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 724              		.loc 1 211 0
 725              		.cfi_startproc
 726 0344 80B5     		push	{r7, lr}
 727              		.cfi_def_cfa_offset 8
 728              		.cfi_offset 7, -8
 729              		.cfi_offset 14, -4
 730 0346 82B0     		sub	sp, sp, #8
 731              		.cfi_def_cfa_offset 16
 732 0348 00AF     		add	r7, sp, #0
 733              		.cfi_def_cfa_register 7
 734 034a 0200     		movs	r2, r0
 735 034c FB1D     		adds	r3, r7, #7
 736 034e 1A70     		strb	r2, [r3]
 737 0350 BB1D     		adds	r3, r7, #6
 738 0352 0A1C     		adds	r2, r1, #0
 739 0354 1A70     		strb	r2, [r3]
 212:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_clear( B_E );
 740              		.loc 1 212 0
 741 0356 4020     		movs	r0, #64
 742 0358 FFF7D6FE 		bl	graphic_ctrl_bit_clear
 213:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_clear( B_DI | B_RW );
 743              		.loc 1 213 0
 744 035c 0320     		movs	r0, #3
 745 035e FFF7D3FE 		bl	graphic_ctrl_bit_clear
 214:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_write(commandToWrite, controller);
 746              		.loc 1 214 0
 747 0362 BB1D     		adds	r3, r7, #6
 748 0364 1A78     		ldrb	r2, [r3]
 749 0366 FB1D     		adds	r3, r7, #7
 750 0368 1B78     		ldrb	r3, [r3]
 751 036a 1100     		movs	r1, r2
 752 036c 1800     		movs	r0, r3
 753 036e FFF7A9FF 		bl	graphic_write
 215:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 754              		.loc 1 215 0
 755 0372 C046     		nop
 756 0374 BD46     		mov	sp, r7
 757 0376 02B0     		add	sp, sp, #8
 758              		@ sp needed
 759 0378 80BD     		pop	{r7, pc}
 760              		.cfi_endproc
 761              	.LFE12:
 763 037a C046     		.align	2
 764              		.code	16
 765              		.thumb_func
 767              	graphic_writeData:
 768              	.LFB13:
 216:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** static void graphic_writeData(unsigned char data,
 217:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** unsigned char controller)
 218:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 769              		.loc 1 218 0
 770              		.cfi_startproc
 771 037c 80B5     		push	{r7, lr}
 772              		.cfi_def_cfa_offset 8
 773              		.cfi_offset 7, -8
 774              		.cfi_offset 14, -4
 775 037e 82B0     		sub	sp, sp, #8
 776              		.cfi_def_cfa_offset 16
 777 0380 00AF     		add	r7, sp, #0
 778              		.cfi_def_cfa_register 7
 779 0382 0200     		movs	r2, r0
 780 0384 FB1D     		adds	r3, r7, #7
 781 0386 1A70     		strb	r2, [r3]
 782 0388 BB1D     		adds	r3, r7, #6
 783 038a 0A1C     		adds	r2, r1, #0
 784 038c 1A70     		strb	r2, [r3]
 219:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_clear( B_E );
 785              		.loc 1 219 0
 786 038e 4020     		movs	r0, #64
 787 0390 FFF7BAFE 		bl	graphic_ctrl_bit_clear
 220:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_set( B_DI );
 788              		.loc 1 220 0
 789 0394 0120     		movs	r0, #1
 790 0396 FFF79BFE 		bl	graphic_ctrl_bit_set
 221:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_clear( B_RW );
 791              		.loc 1 221 0
 792 039a 0220     		movs	r0, #2
 793 039c FFF7B4FE 		bl	graphic_ctrl_bit_clear
 222:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_write(data, controller);
 794              		.loc 1 222 0
 795 03a0 BB1D     		adds	r3, r7, #6
 796 03a2 1A78     		ldrb	r2, [r3]
 797 03a4 FB1D     		adds	r3, r7, #7
 798 03a6 1B78     		ldrb	r3, [r3]
 799 03a8 1100     		movs	r1, r2
 800 03aa 1800     		movs	r0, r3
 801 03ac FFF78AFF 		bl	graphic_write
 223:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 802              		.loc 1 223 0
 803 03b0 C046     		nop
 804 03b2 BD46     		mov	sp, r7
 805 03b4 02B0     		add	sp, sp, #8
 806              		@ sp needed
 807 03b6 80BD     		pop	{r7, pc}
 808              		.cfi_endproc
 809              	.LFE13:
 811              		.align	2
 812              		.global	graphic_initalize
 813              		.code	16
 814              		.thumb_func
 816              	graphic_initalize:
 817              	.LFB14:
 224:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
 225:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** void graphic_initalize(void)
 226:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 818              		.loc 1 226 0
 819              		.cfi_startproc
 820 03b8 80B5     		push	{r7, lr}
 821              		.cfi_def_cfa_offset 8
 822              		.cfi_offset 7, -8
 823              		.cfi_offset 14, -4
 824 03ba 00AF     		add	r7, sp, #0
 825              		.cfi_def_cfa_register 7
 227:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_set( B_E );
 826              		.loc 1 227 0
 827 03bc 4020     		movs	r0, #64
 828 03be FFF787FE 		bl	graphic_ctrl_bit_set
 228:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** delay_micro(10);
 829              		.loc 1 228 0
 830 03c2 0A20     		movs	r0, #10
 831 03c4 FFF7FEFF 		bl	delay_micro
 229:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
 832              		.loc 1 229 0
 833 03c8 7820     		movs	r0, #120
 834 03ca FFF79DFE 		bl	graphic_ctrl_bit_clear
 230:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** delay_milli( 30 );
 835              		.loc 1 230 0
 836 03ce 1E20     		movs	r0, #30
 837 03d0 FFF7FEFF 		bl	delay_milli
 231:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_ctrl_bit_set(B_RST);
 838              		.loc 1 231 0
 839 03d4 2020     		movs	r0, #32
 840 03d6 FFF77BFE 		bl	graphic_ctrl_bit_set
 232:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_writeCommand(LCD_OFF, B_CS1|B_CS2);
 841              		.loc 1 232 0
 842 03da 1821     		movs	r1, #24
 843 03dc 3E20     		movs	r0, #62
 844 03de FFF7B1FF 		bl	graphic_writeCommand
 233:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_writeCommand(LCD_ON, B_CS1|B_CS2);
 845              		.loc 1 233 0
 846 03e2 1821     		movs	r1, #24
 847 03e4 3F20     		movs	r0, #63
 848 03e6 FFF7ADFF 		bl	graphic_writeCommand
 234:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_writeCommand(LCD_DISP_START, B_CS1|B_CS2);
 849              		.loc 1 234 0
 850 03ea 1821     		movs	r1, #24
 851 03ec C020     		movs	r0, #192
 852 03ee FFF7A9FF 		bl	graphic_writeCommand
 235:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_writeCommand(LCD_SET_ADD, B_CS1|B_CS2);
 853              		.loc 1 235 0
 854 03f2 1821     		movs	r1, #24
 855 03f4 4020     		movs	r0, #64
 856 03f6 FFF7A5FF 		bl	graphic_writeCommand
 236:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_writeCommand(LCD_SET_PAGE, B_CS1|B_CS2);
 857              		.loc 1 236 0
 858 03fa 1821     		movs	r1, #24
 859 03fc B820     		movs	r0, #184
 860 03fe FFF7A1FF 		bl	graphic_writeCommand
 237:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** select_controller(0);
 861              		.loc 1 237 0
 862 0402 0020     		movs	r0, #0
 863 0404 FFF79AFE 		bl	select_controller
 238:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 864              		.loc 1 238 0
 865 0408 C046     		nop
 866 040a BD46     		mov	sp, r7
 867              		@ sp needed
 868 040c 80BD     		pop	{r7, pc}
 869              		.cfi_endproc
 870              	.LFE14:
 872 040e C046     		.align	2
 873              		.global	graphic_clearScreen
 874              		.code	16
 875              		.thumb_func
 877              	graphic_clearScreen:
 878              	.LFB15:
 239:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
 240:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** void graphic_clearScreen(void)
 241:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 879              		.loc 1 241 0
 880              		.cfi_startproc
 881 0410 80B5     		push	{r7, lr}
 882              		.cfi_def_cfa_offset 8
 883              		.cfi_offset 7, -8
 884              		.cfi_offset 14, -4
 885 0412 82B0     		sub	sp, sp, #8
 886              		.cfi_def_cfa_offset 16
 887 0414 00AF     		add	r7, sp, #0
 888              		.cfi_def_cfa_register 7
 242:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** unsigned char i, j;
 243:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** for(j = 0; j < 8; j++)
 889              		.loc 1 243 0
 890 0416 BB1D     		adds	r3, r7, #6
 891 0418 0022     		movs	r2, #0
 892 041a 1A70     		strb	r2, [r3]
 893 041c 23E0     		b	.L54
 894              	.L57:
 244:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 245:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_writeCommand(LCD_SET_PAGE | j, B_CS1|B_CS2 );
 895              		.loc 1 245 0
 896 041e BB1D     		adds	r3, r7, #6
 897 0420 1B78     		ldrb	r3, [r3]
 898 0422 4822     		movs	r2, #72
 899 0424 5242     		rsbs	r2, r2, #0
 900 0426 1343     		orrs	r3, r2
 901 0428 DBB2     		uxtb	r3, r3
 902 042a 1821     		movs	r1, #24
 903 042c 1800     		movs	r0, r3
 904 042e FFF789FF 		bl	graphic_writeCommand
 246:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_writeCommand(LCD_SET_ADD | 0, B_CS1|B_CS2 );
 905              		.loc 1 246 0
 906 0432 1821     		movs	r1, #24
 907 0434 4020     		movs	r0, #64
 908 0436 FFF785FF 		bl	graphic_writeCommand
 247:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** for(i = 0; i <= 63; i++){
 909              		.loc 1 247 0
 910 043a FB1D     		adds	r3, r7, #7
 911 043c 0022     		movs	r2, #0
 912 043e 1A70     		strb	r2, [r3]
 913 0440 08E0     		b	.L55
 914              	.L56:
 248:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** graphic_writeData(0, B_CS1|B_CS2);
 915              		.loc 1 248 0 discriminator 3
 916 0442 1821     		movs	r1, #24
 917 0444 0020     		movs	r0, #0
 918 0446 FFF799FF 		bl	graphic_writeData
 247:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** for(i = 0; i <= 63; i++){
 919              		.loc 1 247 0 discriminator 3
 920 044a FB1D     		adds	r3, r7, #7
 921 044c 1A78     		ldrb	r2, [r3]
 922 044e FB1D     		adds	r3, r7, #7
 923 0450 0132     		adds	r2, r2, #1
 924 0452 1A70     		strb	r2, [r3]
 925              	.L55:
 247:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** for(i = 0; i <= 63; i++){
 926              		.loc 1 247 0 is_stmt 0 discriminator 1
 927 0454 FB1D     		adds	r3, r7, #7
 928 0456 1B78     		ldrb	r3, [r3]
 929 0458 3F2B     		cmp	r3, #63
 930 045a F2D9     		bls	.L56
 243:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 931              		.loc 1 243 0 is_stmt 1 discriminator 2
 932 045c BB1D     		adds	r3, r7, #6
 933 045e 1A78     		ldrb	r2, [r3]
 934 0460 BB1D     		adds	r3, r7, #6
 935 0462 0132     		adds	r2, r2, #1
 936 0464 1A70     		strb	r2, [r3]
 937              	.L54:
 243:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 938              		.loc 1 243 0 is_stmt 0 discriminator 1
 939 0466 BB1D     		adds	r3, r7, #6
 940 0468 1B78     		ldrb	r3, [r3]
 941 046a 072B     		cmp	r3, #7
 942 046c D7D9     		bls	.L57
 249:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 250:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 251:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 943              		.loc 1 251 0 is_stmt 1
 944 046e C046     		nop
 945 0470 BD46     		mov	sp, r7
 946 0472 02B0     		add	sp, sp, #8
 947              		@ sp needed
 948 0474 80BD     		pop	{r7, pc}
 949              		.cfi_endproc
 950              	.LFE15:
 952 0476 C046     		.align	2
 953              		.global	pixel
 954              		.code	16
 955              		.thumb_func
 957              	pixel:
 958              	.LFB16:
 252:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
 253:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** void pixel( int x, int y, int set )
 254:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	{
 959              		.loc 1 254 0
 960              		.cfi_startproc
 961 0478 90B5     		push	{r4, r7, lr}
 962              		.cfi_def_cfa_offset 12
 963              		.cfi_offset 4, -12
 964              		.cfi_offset 7, -8
 965              		.cfi_offset 14, -4
 966 047a 89B0     		sub	sp, sp, #36
 967              		.cfi_def_cfa_offset 48
 968 047c 00AF     		add	r7, sp, #0
 969              		.cfi_def_cfa_register 7
 970 047e F860     		str	r0, [r7, #12]
 971 0480 B960     		str	r1, [r7, #8]
 972 0482 7A60     		str	r2, [r7, #4]
 255:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	uint8_t mask,c, controller;
 256:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	int index;
 257:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	if( (x > 128 ) || (y > 64) )
 973              		.loc 1 257 0
 974 0484 FB68     		ldr	r3, [r7, #12]
 975 0486 802B     		cmp	r3, #128
 976 0488 00DD     		ble	.LCB832
 977 048a B7E0     		b	.L79	@long jump
 978              	.LCB832:
 979              		.loc 1 257 0 is_stmt 0 discriminator 1
 980 048c BB68     		ldr	r3, [r7, #8]
 981 048e 402B     		cmp	r3, #64
 982 0490 00DD     		ble	.LCB835
 983 0492 B3E0     		b	.L79	@long jump
 984              	.LCB835:
 258:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 		return;
 259:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	index = (y-1)/8;
 985              		.loc 1 259 0 is_stmt 1
 986 0494 BB68     		ldr	r3, [r7, #8]
 987 0496 013B     		subs	r3, r3, #1
 988 0498 002B     		cmp	r3, #0
 989 049a 00DA     		bge	.L62
 990 049c 0733     		adds	r3, r3, #7
 991              	.L62:
 992 049e DB10     		asrs	r3, r3, #3
 993 04a0 BB61     		str	r3, [r7, #24]
 260:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	switch( (y-1)%8 )
 994              		.loc 1 260 0
 995 04a2 BB68     		ldr	r3, [r7, #8]
 996 04a4 013B     		subs	r3, r3, #1
 997 04a6 574A     		ldr	r2, .L80
 998 04a8 1340     		ands	r3, r2
 999 04aa 04D5     		bpl	.L63
 1000 04ac 013B     		subs	r3, r3, #1
 1001 04ae 0822     		movs	r2, #8
 1002 04b0 5242     		rsbs	r2, r2, #0
 1003 04b2 1343     		orrs	r3, r2
 1004 04b4 0133     		adds	r3, r3, #1
 1005              	.L63:
 1006 04b6 072B     		cmp	r3, #7
 1007 04b8 2CD8     		bhi	.L64
 1008 04ba 9A00     		lsls	r2, r3, #2
 1009 04bc 524B     		ldr	r3, .L80+4
 1010 04be D318     		adds	r3, r2, r3
 1011 04c0 1B68     		ldr	r3, [r3]
 1012 04c2 9F46     		mov	pc, r3
 1013              		.section	.rodata
 1014              		.align	2
 1015              	.L66:
 1016 0000 C4040000 		.word	.L65
 1017 0004 CE040000 		.word	.L67
 1018 0008 D8040000 		.word	.L68
 1019 000c E2040000 		.word	.L69
 1020 0010 EC040000 		.word	.L70
 1021 0014 F6040000 		.word	.L71
 1022 0018 00050000 		.word	.L72
 1023 001c 0A050000 		.word	.L73
 1024              		.text
 1025              	.L65:
 261:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	{
 262:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 		case 0: mask = 1; break;
 1026              		.loc 1 262 0
 1027 04c4 1F23     		movs	r3, #31
 1028 04c6 FB18     		adds	r3, r7, r3
 1029 04c8 0122     		movs	r2, #1
 1030 04ca 1A70     		strb	r2, [r3]
 1031 04cc 22E0     		b	.L64
 1032              	.L67:
 263:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 		case 1: mask = 2; break;
 1033              		.loc 1 263 0
 1034 04ce 1F23     		movs	r3, #31
 1035 04d0 FB18     		adds	r3, r7, r3
 1036 04d2 0222     		movs	r2, #2
 1037 04d4 1A70     		strb	r2, [r3]
 1038 04d6 1DE0     		b	.L64
 1039              	.L68:
 264:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 		case 2: mask = 4; break;
 1040              		.loc 1 264 0
 1041 04d8 1F23     		movs	r3, #31
 1042 04da FB18     		adds	r3, r7, r3
 1043 04dc 0422     		movs	r2, #4
 1044 04de 1A70     		strb	r2, [r3]
 1045 04e0 18E0     		b	.L64
 1046              	.L69:
 265:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 		case 3: mask = 8; break;
 1047              		.loc 1 265 0
 1048 04e2 1F23     		movs	r3, #31
 1049 04e4 FB18     		adds	r3, r7, r3
 1050 04e6 0822     		movs	r2, #8
 1051 04e8 1A70     		strb	r2, [r3]
 1052 04ea 13E0     		b	.L64
 1053              	.L70:
 266:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 		case 4: mask = 0x10; break;
 1054              		.loc 1 266 0
 1055 04ec 1F23     		movs	r3, #31
 1056 04ee FB18     		adds	r3, r7, r3
 1057 04f0 1022     		movs	r2, #16
 1058 04f2 1A70     		strb	r2, [r3]
 1059 04f4 0EE0     		b	.L64
 1060              	.L71:
 267:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 		case 5: mask = 0x20; break;
 1061              		.loc 1 267 0
 1062 04f6 1F23     		movs	r3, #31
 1063 04f8 FB18     		adds	r3, r7, r3
 1064 04fa 2022     		movs	r2, #32
 1065 04fc 1A70     		strb	r2, [r3]
 1066 04fe 09E0     		b	.L64
 1067              	.L72:
 268:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 		case 6: mask = 0x40; break;
 1068              		.loc 1 268 0
 1069 0500 1F23     		movs	r3, #31
 1070 0502 FB18     		adds	r3, r7, r3
 1071 0504 4022     		movs	r2, #64
 1072 0506 1A70     		strb	r2, [r3]
 1073 0508 04E0     		b	.L64
 1074              	.L73:
 269:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 		case 7: mask = 0x80; break;
 1075              		.loc 1 269 0
 1076 050a 1F23     		movs	r3, #31
 1077 050c FB18     		adds	r3, r7, r3
 1078 050e 8022     		movs	r2, #128
 1079 0510 1A70     		strb	r2, [r3]
 1080 0512 C046     		nop
 1081              	.L64:
 270:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	}
 271:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	if( set == 0)
 1082              		.loc 1 271 0
 1083 0514 7B68     		ldr	r3, [r7, #4]
 1084 0516 002B     		cmp	r3, #0
 1085 0518 06D1     		bne	.L74
 272:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 		mask = ~mask;
 1086              		.loc 1 272 0
 1087 051a 1F23     		movs	r3, #31
 1088 051c FB18     		adds	r3, r7, r3
 1089 051e 1F22     		movs	r2, #31
 1090 0520 BA18     		adds	r2, r7, r2
 1091 0522 1278     		ldrb	r2, [r2]
 1092 0524 D243     		mvns	r2, r2
 1093 0526 1A70     		strb	r2, [r3]
 1094              	.L74:
 273:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	if(x > 64){
 1095              		.loc 1 273 0
 1096 0528 FB68     		ldr	r3, [r7, #12]
 1097 052a 402B     		cmp	r3, #64
 1098 052c 07DD     		ble	.L75
 274:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 		controller = B_CS2;
 1099              		.loc 1 274 0
 1100 052e 1E23     		movs	r3, #30
 1101 0530 FB18     		adds	r3, r7, r3
 1102 0532 1022     		movs	r2, #16
 1103 0534 1A70     		strb	r2, [r3]
 275:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 		x = x - 65;
 1104              		.loc 1 275 0
 1105 0536 FB68     		ldr	r3, [r7, #12]
 1106 0538 413B     		subs	r3, r3, #65
 1107 053a FB60     		str	r3, [r7, #12]
 1108 053c 06E0     		b	.L76
 1109              	.L75:
 276:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	} else {
 277:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 		controller = B_CS1;
 1110              		.loc 1 277 0
 1111 053e 1E23     		movs	r3, #30
 1112 0540 FB18     		adds	r3, r7, r3
 1113 0542 0822     		movs	r2, #8
 1114 0544 1A70     		strb	r2, [r3]
 278:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 		x = x-1;
 1115              		.loc 1 278 0
 1116 0546 FB68     		ldr	r3, [r7, #12]
 1117 0548 013B     		subs	r3, r3, #1
 1118 054a FB60     		str	r3, [r7, #12]
 1119              	.L76:
 279:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	}
 280:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	graphic_writeCommand(LCD_SET_ADD | x, controller );
 1120              		.loc 1 280 0
 1121 054c FB68     		ldr	r3, [r7, #12]
 1122 054e DBB2     		uxtb	r3, r3
 1123 0550 1A1C     		adds	r2, r3, #0
 1124 0552 4023     		movs	r3, #64
 1125 0554 1343     		orrs	r3, r2
 1126 0556 DBB2     		uxtb	r3, r3
 1127 0558 DAB2     		uxtb	r2, r3
 1128 055a 1E23     		movs	r3, #30
 1129 055c FB18     		adds	r3, r7, r3
 1130 055e 1B78     		ldrb	r3, [r3]
 1131 0560 1900     		movs	r1, r3
 1132 0562 1000     		movs	r0, r2
 1133 0564 FFF7EEFE 		bl	graphic_writeCommand
 281:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	graphic_writeCommand(LCD_SET_PAGE | index, controller );
 1134              		.loc 1 281 0
 1135 0568 BB69     		ldr	r3, [r7, #24]
 1136 056a DBB2     		uxtb	r3, r3
 1137 056c 1A1C     		adds	r2, r3, #0
 1138 056e 4823     		movs	r3, #72
 1139 0570 5B42     		rsbs	r3, r3, #0
 1140 0572 1343     		orrs	r3, r2
 1141 0574 DBB2     		uxtb	r3, r3
 1142 0576 DAB2     		uxtb	r2, r3
 1143 0578 1E23     		movs	r3, #30
 1144 057a FB18     		adds	r3, r7, r3
 1145 057c 1B78     		ldrb	r3, [r3]
 1146 057e 1900     		movs	r1, r3
 1147 0580 1000     		movs	r0, r2
 1148 0582 FFF7DFFE 		bl	graphic_writeCommand
 282:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	c = graphic_read( controller );
 1149              		.loc 1 282 0
 1150 0586 1723     		movs	r3, #23
 1151 0588 FC18     		adds	r4, r7, r3
 1152 058a 1E23     		movs	r3, #30
 1153 058c FB18     		adds	r3, r7, r3
 1154 058e 1B78     		ldrb	r3, [r3]
 1155 0590 1800     		movs	r0, r3
 1156 0592 FFF781FE 		bl	graphic_read
 1157 0596 0300     		movs	r3, r0
 1158 0598 2370     		strb	r3, [r4]
 283:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	graphic_writeCommand(LCD_SET_ADD | x, controller );
 1159              		.loc 1 283 0
 1160 059a FB68     		ldr	r3, [r7, #12]
 1161 059c DBB2     		uxtb	r3, r3
 1162 059e 1A1C     		adds	r2, r3, #0
 1163 05a0 4023     		movs	r3, #64
 1164 05a2 1343     		orrs	r3, r2
 1165 05a4 DBB2     		uxtb	r3, r3
 1166 05a6 DAB2     		uxtb	r2, r3
 1167 05a8 1E23     		movs	r3, #30
 1168 05aa FB18     		adds	r3, r7, r3
 1169 05ac 1B78     		ldrb	r3, [r3]
 1170 05ae 1900     		movs	r1, r3
 1171 05b0 1000     		movs	r0, r2
 1172 05b2 FFF7C7FE 		bl	graphic_writeCommand
 284:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	if( set ) mask = mask | c;
 1173              		.loc 1 284 0
 1174 05b6 7B68     		ldr	r3, [r7, #4]
 1175 05b8 002B     		cmp	r3, #0
 1176 05ba 0AD0     		beq	.L77
 1177              		.loc 1 284 0 is_stmt 0 discriminator 1
 1178 05bc 1F23     		movs	r3, #31
 1179 05be FB18     		adds	r3, r7, r3
 1180 05c0 1F22     		movs	r2, #31
 1181 05c2 B918     		adds	r1, r7, r2
 1182 05c4 1722     		movs	r2, #23
 1183 05c6 BA18     		adds	r2, r7, r2
 1184 05c8 0978     		ldrb	r1, [r1]
 1185 05ca 1278     		ldrb	r2, [r2]
 1186 05cc 0A43     		orrs	r2, r1
 1187 05ce 1A70     		strb	r2, [r3]
 1188 05d0 09E0     		b	.L78
 1189              	.L77:
 285:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	else mask = mask & c;
 1190              		.loc 1 285 0 is_stmt 1
 1191 05d2 1F23     		movs	r3, #31
 1192 05d4 FB18     		adds	r3, r7, r3
 1193 05d6 1F22     		movs	r2, #31
 1194 05d8 BA18     		adds	r2, r7, r2
 1195 05da 1721     		movs	r1, #23
 1196 05dc 7918     		adds	r1, r7, r1
 1197 05de 1278     		ldrb	r2, [r2]
 1198 05e0 0978     		ldrb	r1, [r1]
 1199 05e2 0A40     		ands	r2, r1
 1200 05e4 1A70     		strb	r2, [r3]
 1201              	.L78:
 286:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	graphic_writeData( mask, controller);
 1202              		.loc 1 286 0
 1203 05e6 1E23     		movs	r3, #30
 1204 05e8 FB18     		adds	r3, r7, r3
 1205 05ea 1A78     		ldrb	r2, [r3]
 1206 05ec 1F23     		movs	r3, #31
 1207 05ee FB18     		adds	r3, r7, r3
 1208 05f0 1B78     		ldrb	r3, [r3]
 1209 05f2 1100     		movs	r1, r2
 1210 05f4 1800     		movs	r0, r3
 1211 05f6 FFF7C1FE 		bl	graphic_writeData
 1212 05fa 00E0     		b	.L58
 1213              	.L79:
 258:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	index = (y-1)/8;
 1214              		.loc 1 258 0
 1215 05fc C046     		nop
 1216              	.L58:
 287:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 1217              		.loc 1 287 0
 1218 05fe BD46     		mov	sp, r7
 1219 0600 09B0     		add	sp, sp, #36
 1220              		@ sp needed
 1221 0602 90BD     		pop	{r4, r7, pc}
 1222              	.L81:
 1223              		.align	2
 1224              	.L80:
 1225 0604 07000080 		.word	-2147483641
 1226 0608 00000000 		.word	.L66
 1227              		.cfi_endproc
 1228              	.LFE16:
 1230              		.align	2
 1231              		.global	delay_1mikro
 1232              		.code	16
 1233              		.thumb_func
 1235              	delay_1mikro:
 1236              	.LFB17:
 288:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
 289:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** void delay_1mikro ( void )
 290:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 1237              		.loc 1 290 0
 1238              		.cfi_startproc
 1239 060c 80B5     		push	{r7, lr}
 1240              		.cfi_def_cfa_offset 8
 1241              		.cfi_offset 7, -8
 1242              		.cfi_offset 14, -4
 1243 060e 00AF     		add	r7, sp, #0
 1244              		.cfi_def_cfa_register 7
 291:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	STK.Ctrl = 0;
 1245              		.loc 1 291 0
 1246 0610 074B     		ldr	r3, .L83
 1247 0612 0022     		movs	r2, #0
 1248 0614 1A60     		str	r2, [r3]
 292:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	STK.Load = (168 - 1);
 1249              		.loc 1 292 0
 1250 0616 064B     		ldr	r3, .L83
 1251 0618 A722     		movs	r2, #167
 1252 061a 5A60     		str	r2, [r3, #4]
 293:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	STK.Val = 0;
 1253              		.loc 1 293 0
 1254 061c 044B     		ldr	r3, .L83
 1255 061e 0022     		movs	r2, #0
 1256 0620 9A60     		str	r2, [r3, #8]
 294:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	STK.Ctrl = 7;
 1257              		.loc 1 294 0
 1258 0622 034B     		ldr	r3, .L83
 1259 0624 0722     		movs	r2, #7
 1260 0626 1A60     		str	r2, [r3]
 295:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 1261              		.loc 1 295 0
 1262 0628 C046     		nop
 1263 062a BD46     		mov	sp, r7
 1264              		@ sp needed
 1265 062c 80BD     		pop	{r7, pc}
 1266              	.L84:
 1267 062e C046     		.align	2
 1268              	.L83:
 1269 0630 10E000E0 		.word	-536813552
 1270              		.cfi_endproc
 1271              	.LFE17:
 1273              		.align	2
 1274              		.global	systick_irq_handler
 1275              		.code	16
 1276              		.thumb_func
 1278              	systick_irq_handler:
 1279              	.LFB18:
 296:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
 297:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** void systick_irq_handler (void)
 298:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** {
 1280              		.loc 1 298 0
 1281              		.cfi_startproc
 1282 0634 80B5     		push	{r7, lr}
 1283              		.cfi_def_cfa_offset 8
 1284              		.cfi_offset 7, -8
 1285              		.cfi_offset 14, -4
 1286 0636 00AF     		add	r7, sp, #0
 1287              		.cfi_def_cfa_register 7
 299:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	STK.Ctrl = 0;
 1288              		.loc 1 299 0
 1289 0638 084B     		ldr	r3, .L88
 1290 063a 0022     		movs	r2, #0
 1291 063c 1A60     		str	r2, [r3]
 300:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	DELAY_COUNT -- ;
 1292              		.loc 1 300 0
 1293 063e 084B     		ldr	r3, .L88+4
 1294 0640 1B68     		ldr	r3, [r3]
 1295 0642 5A1E     		subs	r2, r3, #1
 1296 0644 064B     		ldr	r3, .L88+4
 1297 0646 1A60     		str	r2, [r3]
 301:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	if (DELAY_COUNT > 0)
 1298              		.loc 1 301 0
 1299 0648 054B     		ldr	r3, .L88+4
 1300 064a 1B68     		ldr	r3, [r3]
 1301 064c 002B     		cmp	r3, #0
 1302 064e 01DD     		ble	.L87
 302:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	{
 303:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 		delay_1mikro();
 1303              		.loc 1 303 0
 1304 0650 FFF7FEFF 		bl	delay_1mikro
 1305              	.L87:
 304:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	}
 305:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 1306              		.loc 1 305 0
 1307 0654 C046     		nop
 1308 0656 BD46     		mov	sp, r7
 1309              		@ sp needed
 1310 0658 80BD     		pop	{r7, pc}
 1311              	.L89:
 1312 065a C046     		.align	2
 1313              	.L88:
 1314 065c 10E000E0 		.word	-536813552
 1315 0660 00000000 		.word	DELAY_COUNT
 1316              		.cfi_endproc
 1317              	.LFE18:
 1319              		.align	2
 1320              		.global	delay
 1321              		.code	16
 1322              		.thumb_func
 1324              	delay:
 1325              	.LFB19:
 306:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 
 307:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** void delay (unsigned int count){
 1326              		.loc 1 307 0
 1327              		.cfi_startproc
 1328 0664 80B5     		push	{r7, lr}
 1329              		.cfi_def_cfa_offset 8
 1330              		.cfi_offset 7, -8
 1331              		.cfi_offset 14, -4
 1332 0666 82B0     		sub	sp, sp, #8
 1333              		.cfi_def_cfa_offset 16
 1334 0668 00AF     		add	r7, sp, #0
 1335              		.cfi_def_cfa_register 7
 1336 066a 7860     		str	r0, [r7, #4]
 308:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	DELAY_COUNT = count;
 1337              		.loc 1 308 0
 1338 066c 7A68     		ldr	r2, [r7, #4]
 1339 066e 064B     		ldr	r3, .L94
 1340 0670 1A60     		str	r2, [r3]
 309:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	if (count == 0){
 1341              		.loc 1 309 0
 1342 0672 7B68     		ldr	r3, [r7, #4]
 1343 0674 002B     		cmp	r3, #0
 1344 0676 02D0     		beq	.L93
 310:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 		return;
 311:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	}
 312:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 	delay_1mikro();
 1345              		.loc 1 312 0
 1346 0678 FFF7FEFF 		bl	delay_1mikro
 1347 067c 00E0     		b	.L90
 1348              	.L93:
 310:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** 		return;
 1349              		.loc 1 310 0
 1350 067e C046     		nop
 1351              	.L90:
 313:C:/Users/czar/Chalmers/Moplaborationer/lab4\header.h **** }
 1352              		.loc 1 313 0
 1353 0680 BD46     		mov	sp, r7
 1354 0682 02B0     		add	sp, sp, #8
 1355              		@ sp needed
 1356 0684 80BD     		pop	{r7, pc}
 1357              	.L95:
 1358 0686 C046     		.align	2
 1359              	.L94:
 1360 0688 00000000 		.word	DELAY_COUNT
 1361              		.cfi_endproc
 1362              	.LFE19:
 1364              		.global	ball_geometry
 1365              		.data
 1366              		.align	2
 1369              	ball_geometry:
 1370 0000 0C000000 		.word	12
 1371 0004 04000000 		.word	4
 1372 0008 04000000 		.word	4
 1373 000c 00       		.byte	0
 1374 000d 01       		.byte	1
 1375 000e 00       		.byte	0
 1376 000f 02       		.byte	2
 1377 0010 01       		.byte	1
 1378 0011 00       		.byte	0
 1379 0012 01       		.byte	1
 1380 0013 01       		.byte	1
 1381 0014 01       		.byte	1
 1382 0015 02       		.byte	2
 1383 0016 01       		.byte	1
 1384 0017 03       		.byte	3
 1385 0018 02       		.byte	2
 1386 0019 00       		.byte	0
 1387 001a 02       		.byte	2
 1388 001b 01       		.byte	1
 1389 001c 02       		.byte	2
 1390 001d 02       		.byte	2
 1391 001e 02       		.byte	2
 1392 001f 03       		.byte	3
 1393 0020 03       		.byte	3
 1394 0021 01       		.byte	1
 1395 0022 03       		.byte	3
 1396 0023 02       		.byte	2
 1397 0024 00000000 		.space	104
 1397      00000000 
 1397      00000000 
 1397      00000000 
 1397      00000000 
 1398              		.global	alien_geometry
 1399              		.align	2
 1402              	alien_geometry:
 1403 008c 40000000 		.word	64
 1404 0090 08000000 		.word	8
 1405 0094 08000000 		.word	8
 1406 0098 00       		.byte	0
 1407 0099 00       		.byte	0
 1408 009a 03       		.byte	3
 1409 009b 00       		.byte	0
 1410 009c 04       		.byte	4
 1411 009d 00       		.byte	0
 1412 009e 07       		.byte	7
 1413 009f 00       		.byte	0
 1414 00a0 00       		.byte	0
 1415 00a1 01       		.byte	1
 1416 00a2 02       		.byte	2
 1417 00a3 01       		.byte	1
 1418 00a4 03       		.byte	3
 1419 00a5 01       		.byte	1
 1420 00a6 04       		.byte	4
 1421 00a7 01       		.byte	1
 1422 00a8 05       		.byte	5
 1423 00a9 01       		.byte	1
 1424 00aa 07       		.byte	7
 1425 00ab 01       		.byte	1
 1426 00ac 01       		.byte	1
 1427 00ad 02       		.byte	2
 1428 00ae 03       		.byte	3
 1429 00af 02       		.byte	2
 1430 00b0 04       		.byte	4
 1431 00b1 02       		.byte	2
 1432 00b2 06       		.byte	6
 1433 00b3 02       		.byte	2
 1434 00b4 01       		.byte	1
 1435 00b5 03       		.byte	3
 1436 00b6 02       		.byte	2
 1437 00b7 03       		.byte	3
 1438 00b8 03       		.byte	3
 1439 00b9 03       		.byte	3
 1440 00ba 04       		.byte	4
 1441 00bb 03       		.byte	3
 1442 00bc 05       		.byte	5
 1443 00bd 03       		.byte	3
 1444 00be 06       		.byte	6
 1445 00bf 03       		.byte	3
 1446 00c0 01       		.byte	1
 1447 00c1 04       		.byte	4
 1448 00c2 06       		.byte	6
 1449 00c3 04       		.byte	4
 1450 00c4 02       		.byte	2
 1451 00c5 05       		.byte	5
 1452 00c6 03       		.byte	3
 1453 00c7 05       		.byte	5
 1454 00c8 04       		.byte	4
 1455 00c9 05       		.byte	5
 1456 00ca 05       		.byte	5
 1457 00cb 05       		.byte	5
 1458 00cc 06       		.byte	6
 1459 00cd 05       		.byte	5
 1460 00ce 00       		.byte	0
 1461 00cf 06       		.byte	6
 1462 00d0 01       		.byte	1
 1463 00d1 06       		.byte	6
 1464 00d2 03       		.byte	3
 1465 00d3 06       		.byte	6
 1466 00d4 04       		.byte	4
 1467 00d5 06       		.byte	6
 1468 00d6 06       		.byte	6
 1469 00d7 06       		.byte	6
 1470 00d8 07       		.byte	7
 1471 00d9 06       		.byte	6
 1472 00da 00       		.byte	0
 1473 00db 07       		.byte	7
 1474 00dc 04       		.byte	4
 1475 00dd 07       		.byte	7
 1476 00de 07       		.byte	7
 1477 00df 07       		.byte	7
 1478 00e0 00000000 		.space	56
 1478      00000000 
 1478      00000000 
 1478      00000000 
 1478      00000000 
 1479              		.text
 1480              		.align	2
 1481              		.global	set_object_speed
 1482              		.code	16
 1483              		.thumb_func
 1485              	set_object_speed:
 1486              	.LFB20:
 1487              		.file 2 "C:/Users/czar/Chalmers/Moplaborationer/lab4/graphic_objs.h"
   1:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** #define MAX_POINTS 64
   2:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 
   3:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** typedef struct tPoint 
   4:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** {
   5:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	uint8_t x;
   6:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	uint8_t y;
   7:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** } POINT;
   8:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 
   9:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** typedef struct tGeometry
  10:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** {
  11:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	int	numpoints;
  12:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	int	sizeX;
  13:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	int	sizeY;
  14:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	POINT px [MAX_POINTS];
  15:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** } GEOMETRY, *PGEOMETRY;
  16:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 
  17:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** GEOMETRY ball_geometry = 
  18:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** {
  19:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	12,		//numpoints
  20:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	4,4,		//SizeX, SizeY
  21:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	{	
  22:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		/* px[0,1,2...] */
  23:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		{0,1},{0,2},{1,0},{1,1},{1,2},{1,3},{2,0},{2,1},{2,2},{2,3},{3,1},{3,2}
  24:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	}
  25:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** };
  26:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 
  27:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** GEOMETRY alien_geometry = 
  28:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** {
  29:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	64,		//numpoints
  30:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	8,8,		//SizeX, SizeY
  31:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	{	
  32:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		/* px[0,1,2...] */
  33:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		{0,0},{3,0},{4,0},{7,0},
  34:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		{0,1},{2,1},{3,1},{4,1},{5,1},{7,1},
  35:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		{1,2},{3,2},{4,2},{6,2},
  36:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		{1,3},{2,3},{3,3},{4,3},{5,3},{6,3},
  37:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		{1,4},{6,4},
  38:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		{2,5},{3,5},{4,5},{5,5},{6,5},
  39:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		{0,6},{1,6},{3,6},{4,6},{6,6},{7,6},
  40:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		{0,7},{4,7},{7,7},
  41:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	}
  42:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** };
  43:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 
  44:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** typedef struct tObj{
  45:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	PGEOMETRY	geo;
  46:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	int			dirX, dirY;
  47:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	int			posX, posY;
  48:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	void (* draw) (struct tObj *);
  49:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	void (* clear) (struct tObj *);
  50:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	void (* move) (struct tObj *);
  51:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	void (* set_speed) (struct tObj *, int , int );
  52:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** } OBJECT, *POBJECT;
  53:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 
  54:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 
  55:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 
  56:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** void set_object_speed (POBJECT o, int speedX, int speedY)
  57:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** {
 1488              		.loc 2 57 0
 1489              		.cfi_startproc
 1490 068c 80B5     		push	{r7, lr}
 1491              		.cfi_def_cfa_offset 8
 1492              		.cfi_offset 7, -8
 1493              		.cfi_offset 14, -4
 1494 068e 84B0     		sub	sp, sp, #16
 1495              		.cfi_def_cfa_offset 24
 1496 0690 00AF     		add	r7, sp, #0
 1497              		.cfi_def_cfa_register 7
 1498 0692 F860     		str	r0, [r7, #12]
 1499 0694 B960     		str	r1, [r7, #8]
 1500 0696 7A60     		str	r2, [r7, #4]
  58:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	o->dirX = speedX;
 1501              		.loc 2 58 0
 1502 0698 FB68     		ldr	r3, [r7, #12]
 1503 069a BA68     		ldr	r2, [r7, #8]
 1504 069c 5A60     		str	r2, [r3, #4]
  59:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	o->dirY = speedY;
 1505              		.loc 2 59 0
 1506 069e FB68     		ldr	r3, [r7, #12]
 1507 06a0 7A68     		ldr	r2, [r7, #4]
 1508 06a2 9A60     		str	r2, [r3, #8]
  60:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** }
 1509              		.loc 2 60 0
 1510 06a4 C046     		nop
 1511 06a6 BD46     		mov	sp, r7
 1512 06a8 04B0     		add	sp, sp, #16
 1513              		@ sp needed
 1514 06aa 80BD     		pop	{r7, pc}
 1515              		.cfi_endproc
 1516              	.LFE20:
 1518              		.align	2
 1519              		.global	draw_object
 1520              		.code	16
 1521              		.thumb_func
 1523              	draw_object:
 1524              	.LFB21:
  61:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 
  62:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 
  63:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** void draw_object (POBJECT o)
  64:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** {
 1525              		.loc 2 64 0
 1526              		.cfi_startproc
 1527 06ac 80B5     		push	{r7, lr}
 1528              		.cfi_def_cfa_offset 8
 1529              		.cfi_offset 7, -8
 1530              		.cfi_offset 14, -4
 1531 06ae 84B0     		sub	sp, sp, #16
 1532              		.cfi_def_cfa_offset 24
 1533 06b0 00AF     		add	r7, sp, #0
 1534              		.cfi_def_cfa_register 7
 1535 06b2 7860     		str	r0, [r7, #4]
 1536              	.LBB2:
  65:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	for (int i = 0; i < o->geo->numpoints; i++)
 1537              		.loc 2 65 0
 1538 06b4 0023     		movs	r3, #0
 1539 06b6 FB60     		str	r3, [r7, #12]
 1540 06b8 2EE0     		b	.L98
 1541              	.L100:
  66:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	{
  67:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		if (o->posX > 0 && o->posY > 0 && o->posX < 128 && o->posY < 64)
 1542              		.loc 2 67 0
 1543 06ba 7B68     		ldr	r3, [r7, #4]
 1544 06bc DB68     		ldr	r3, [r3, #12]
 1545 06be 002B     		cmp	r3, #0
 1546 06c0 27DD     		ble	.L99
 1547              		.loc 2 67 0 is_stmt 0 discriminator 1
 1548 06c2 7B68     		ldr	r3, [r7, #4]
 1549 06c4 1B69     		ldr	r3, [r3, #16]
 1550 06c6 002B     		cmp	r3, #0
 1551 06c8 23DD     		ble	.L99
 1552              		.loc 2 67 0 discriminator 2
 1553 06ca 7B68     		ldr	r3, [r7, #4]
 1554 06cc DB68     		ldr	r3, [r3, #12]
 1555 06ce 7F2B     		cmp	r3, #127
 1556 06d0 1FDC     		bgt	.L99
 1557              		.loc 2 67 0 discriminator 3
 1558 06d2 7B68     		ldr	r3, [r7, #4]
 1559 06d4 1B69     		ldr	r3, [r3, #16]
 1560 06d6 3F2B     		cmp	r3, #63
 1561 06d8 1BDC     		bgt	.L99
  68:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		{pixel((o->geo->px[i].x + o->posX) , (o->geo->px[i].y + o->posY), 1 );}
 1562              		.loc 2 68 0 is_stmt 1
 1563 06da 7B68     		ldr	r3, [r7, #4]
 1564 06dc 1A68     		ldr	r2, [r3]
 1565 06de FB68     		ldr	r3, [r7, #12]
 1566 06e0 0433     		adds	r3, r3, #4
 1567 06e2 5B00     		lsls	r3, r3, #1
 1568 06e4 D318     		adds	r3, r2, r3
 1569 06e6 0433     		adds	r3, r3, #4
 1570 06e8 1B78     		ldrb	r3, [r3]
 1571 06ea 1A00     		movs	r2, r3
 1572 06ec 7B68     		ldr	r3, [r7, #4]
 1573 06ee DB68     		ldr	r3, [r3, #12]
 1574 06f0 D018     		adds	r0, r2, r3
 1575 06f2 7B68     		ldr	r3, [r7, #4]
 1576 06f4 1A68     		ldr	r2, [r3]
 1577 06f6 FB68     		ldr	r3, [r7, #12]
 1578 06f8 0433     		adds	r3, r3, #4
 1579 06fa 5B00     		lsls	r3, r3, #1
 1580 06fc D318     		adds	r3, r2, r3
 1581 06fe 0533     		adds	r3, r3, #5
 1582 0700 1B78     		ldrb	r3, [r3]
 1583 0702 1A00     		movs	r2, r3
 1584 0704 7B68     		ldr	r3, [r7, #4]
 1585 0706 1B69     		ldr	r3, [r3, #16]
 1586 0708 D318     		adds	r3, r2, r3
 1587 070a 0122     		movs	r2, #1
 1588 070c 1900     		movs	r1, r3
 1589 070e FFF7FEFF 		bl	pixel
 1590              	.L99:
  65:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	for (int i = 0; i < o->geo->numpoints; i++)
 1591              		.loc 2 65 0 discriminator 2
 1592 0712 FB68     		ldr	r3, [r7, #12]
 1593 0714 0133     		adds	r3, r3, #1
 1594 0716 FB60     		str	r3, [r7, #12]
 1595              	.L98:
  65:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	for (int i = 0; i < o->geo->numpoints; i++)
 1596              		.loc 2 65 0 is_stmt 0 discriminator 1
 1597 0718 7B68     		ldr	r3, [r7, #4]
 1598 071a 1B68     		ldr	r3, [r3]
 1599 071c 1A68     		ldr	r2, [r3]
 1600 071e FB68     		ldr	r3, [r7, #12]
 1601 0720 9A42     		cmp	r2, r3
 1602 0722 CADC     		bgt	.L100
 1603              	.LBE2:
  69:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	}
  70:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	
  71:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** }
 1604              		.loc 2 71 0 is_stmt 1
 1605 0724 C046     		nop
 1606 0726 BD46     		mov	sp, r7
 1607 0728 04B0     		add	sp, sp, #16
 1608              		@ sp needed
 1609 072a 80BD     		pop	{r7, pc}
 1610              		.cfi_endproc
 1611              	.LFE21:
 1613              		.align	2
 1614              		.global	clear_object
 1615              		.code	16
 1616              		.thumb_func
 1618              	clear_object:
 1619              	.LFB22:
  72:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 
  73:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** void clear_object (POBJECT o)
  74:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** {
 1620              		.loc 2 74 0
 1621              		.cfi_startproc
 1622 072c 80B5     		push	{r7, lr}
 1623              		.cfi_def_cfa_offset 8
 1624              		.cfi_offset 7, -8
 1625              		.cfi_offset 14, -4
 1626 072e 84B0     		sub	sp, sp, #16
 1627              		.cfi_def_cfa_offset 24
 1628 0730 00AF     		add	r7, sp, #0
 1629              		.cfi_def_cfa_register 7
 1630 0732 7860     		str	r0, [r7, #4]
 1631              	.LBB3:
  75:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	for (int i = 0; i < o->geo->numpoints; i++)
 1632              		.loc 2 75 0
 1633 0734 0023     		movs	r3, #0
 1634 0736 FB60     		str	r3, [r7, #12]
 1635 0738 1EE0     		b	.L102
 1636              	.L103:
  76:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	{
  77:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		pixel((o->geo->px[i].x + o->posX) , (o->geo->px[i].y + o->posY), 0 );
 1637              		.loc 2 77 0 discriminator 3
 1638 073a 7B68     		ldr	r3, [r7, #4]
 1639 073c 1A68     		ldr	r2, [r3]
 1640 073e FB68     		ldr	r3, [r7, #12]
 1641 0740 0433     		adds	r3, r3, #4
 1642 0742 5B00     		lsls	r3, r3, #1
 1643 0744 D318     		adds	r3, r2, r3
 1644 0746 0433     		adds	r3, r3, #4
 1645 0748 1B78     		ldrb	r3, [r3]
 1646 074a 1A00     		movs	r2, r3
 1647 074c 7B68     		ldr	r3, [r7, #4]
 1648 074e DB68     		ldr	r3, [r3, #12]
 1649 0750 D018     		adds	r0, r2, r3
 1650 0752 7B68     		ldr	r3, [r7, #4]
 1651 0754 1A68     		ldr	r2, [r3]
 1652 0756 FB68     		ldr	r3, [r7, #12]
 1653 0758 0433     		adds	r3, r3, #4
 1654 075a 5B00     		lsls	r3, r3, #1
 1655 075c D318     		adds	r3, r2, r3
 1656 075e 0533     		adds	r3, r3, #5
 1657 0760 1B78     		ldrb	r3, [r3]
 1658 0762 1A00     		movs	r2, r3
 1659 0764 7B68     		ldr	r3, [r7, #4]
 1660 0766 1B69     		ldr	r3, [r3, #16]
 1661 0768 D318     		adds	r3, r2, r3
 1662 076a 0022     		movs	r2, #0
 1663 076c 1900     		movs	r1, r3
 1664 076e FFF7FEFF 		bl	pixel
  75:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	for (int i = 0; i < o->geo->numpoints; i++)
 1665              		.loc 2 75 0 discriminator 3
 1666 0772 FB68     		ldr	r3, [r7, #12]
 1667 0774 0133     		adds	r3, r3, #1
 1668 0776 FB60     		str	r3, [r7, #12]
 1669              	.L102:
  75:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	for (int i = 0; i < o->geo->numpoints; i++)
 1670              		.loc 2 75 0 is_stmt 0 discriminator 1
 1671 0778 7B68     		ldr	r3, [r7, #4]
 1672 077a 1B68     		ldr	r3, [r3]
 1673 077c 1A68     		ldr	r2, [r3]
 1674 077e FB68     		ldr	r3, [r7, #12]
 1675 0780 9A42     		cmp	r2, r3
 1676 0782 DADC     		bgt	.L103
 1677              	.LBE3:
  78:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	}
  79:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	
  80:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** }
 1678              		.loc 2 80 0 is_stmt 1
 1679 0784 C046     		nop
 1680 0786 BD46     		mov	sp, r7
 1681 0788 04B0     		add	sp, sp, #16
 1682              		@ sp needed
 1683 078a 80BD     		pop	{r7, pc}
 1684              		.cfi_endproc
 1685              	.LFE22:
 1687              		.align	2
 1688              		.global	move_object
 1689              		.code	16
 1690              		.thumb_func
 1692              	move_object:
 1693              	.LFB23:
  81:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 
  82:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** void move_object (POBJECT o)
  83:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** {
 1694              		.loc 2 83 0
 1695              		.cfi_startproc
 1696 078c 80B5     		push	{r7, lr}
 1697              		.cfi_def_cfa_offset 8
 1698              		.cfi_offset 7, -8
 1699              		.cfi_offset 14, -4
 1700 078e 82B0     		sub	sp, sp, #8
 1701              		.cfi_def_cfa_offset 16
 1702 0790 00AF     		add	r7, sp, #0
 1703              		.cfi_def_cfa_register 7
 1704 0792 7860     		str	r0, [r7, #4]
  84:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	clear_object(o);
 1705              		.loc 2 84 0
 1706 0794 7B68     		ldr	r3, [r7, #4]
 1707 0796 1800     		movs	r0, r3
 1708 0798 FFF7FEFF 		bl	clear_object
  85:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	
  86:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	if (o->posX < 1 )
 1709              		.loc 2 86 0
 1710 079c 7B68     		ldr	r3, [r7, #4]
 1711 079e DB68     		ldr	r3, [r3, #12]
 1712 07a0 002B     		cmp	r3, #0
 1713 07a2 04DC     		bgt	.L105
  87:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		{ o->dirX = o->dirX * -1; }
 1714              		.loc 2 87 0
 1715 07a4 7B68     		ldr	r3, [r7, #4]
 1716 07a6 5B68     		ldr	r3, [r3, #4]
 1717 07a8 5A42     		rsbs	r2, r3, #0
 1718 07aa 7B68     		ldr	r3, [r7, #4]
 1719 07ac 5A60     		str	r2, [r3, #4]
 1720              	.L105:
  88:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	if (o->posX > 128 )
 1721              		.loc 2 88 0
 1722 07ae 7B68     		ldr	r3, [r7, #4]
 1723 07b0 DB68     		ldr	r3, [r3, #12]
 1724 07b2 802B     		cmp	r3, #128
 1725 07b4 04DD     		ble	.L106
  89:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		{ o->dirX = o->dirX * -1; }
 1726              		.loc 2 89 0
 1727 07b6 7B68     		ldr	r3, [r7, #4]
 1728 07b8 5B68     		ldr	r3, [r3, #4]
 1729 07ba 5A42     		rsbs	r2, r3, #0
 1730 07bc 7B68     		ldr	r3, [r7, #4]
 1731 07be 5A60     		str	r2, [r3, #4]
 1732              	.L106:
  90:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	if (o->posY < 1 ) 
 1733              		.loc 2 90 0
 1734 07c0 7B68     		ldr	r3, [r7, #4]
 1735 07c2 1B69     		ldr	r3, [r3, #16]
 1736 07c4 002B     		cmp	r3, #0
 1737 07c6 04DC     		bgt	.L107
  91:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		{ o->dirY = o->dirY * -1; }
 1738              		.loc 2 91 0
 1739 07c8 7B68     		ldr	r3, [r7, #4]
 1740 07ca 9B68     		ldr	r3, [r3, #8]
 1741 07cc 5A42     		rsbs	r2, r3, #0
 1742 07ce 7B68     		ldr	r3, [r7, #4]
 1743 07d0 9A60     		str	r2, [r3, #8]
 1744              	.L107:
  92:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	if (o->posY > 64 )
 1745              		.loc 2 92 0
 1746 07d2 7B68     		ldr	r3, [r7, #4]
 1747 07d4 1B69     		ldr	r3, [r3, #16]
 1748 07d6 402B     		cmp	r3, #64
 1749 07d8 04DD     		ble	.L108
  93:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		{ o->dirY = o->dirY * -1; }
 1750              		.loc 2 93 0
 1751 07da 7B68     		ldr	r3, [r7, #4]
 1752 07dc 9B68     		ldr	r3, [r3, #8]
 1753 07de 5A42     		rsbs	r2, r3, #0
 1754 07e0 7B68     		ldr	r3, [r7, #4]
 1755 07e2 9A60     		str	r2, [r3, #8]
 1756              	.L108:
  94:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 		
  95:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	o->posY += o->dirY;
 1757              		.loc 2 95 0
 1758 07e4 7B68     		ldr	r3, [r7, #4]
 1759 07e6 1A69     		ldr	r2, [r3, #16]
 1760 07e8 7B68     		ldr	r3, [r7, #4]
 1761 07ea 9B68     		ldr	r3, [r3, #8]
 1762 07ec D218     		adds	r2, r2, r3
 1763 07ee 7B68     		ldr	r3, [r7, #4]
 1764 07f0 1A61     		str	r2, [r3, #16]
  96:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	o->posX += o->dirX;
 1765              		.loc 2 96 0
 1766 07f2 7B68     		ldr	r3, [r7, #4]
 1767 07f4 DA68     		ldr	r2, [r3, #12]
 1768 07f6 7B68     		ldr	r3, [r7, #4]
 1769 07f8 5B68     		ldr	r3, [r3, #4]
 1770 07fa D218     		adds	r2, r2, r3
 1771 07fc 7B68     		ldr	r3, [r7, #4]
 1772 07fe DA60     		str	r2, [r3, #12]
  97:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	
  98:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** 	draw_object(o);
 1773              		.loc 2 98 0
 1774 0800 7B68     		ldr	r3, [r7, #4]
 1775 0802 1800     		movs	r0, r3
 1776 0804 FFF7FEFF 		bl	draw_object
  99:C:/Users/czar/Chalmers/Moplaborationer/lab4\graphic_objs.h **** }
 1777              		.loc 2 99 0
 1778 0808 C046     		nop
 1779 080a BD46     		mov	sp, r7
 1780 080c 02B0     		add	sp, sp, #8
 1781              		@ sp needed
 1782 080e 80BD     		pop	{r7, pc}
 1783              		.cfi_endproc
 1784              	.LFE23:
 1786              		.data
 1787              		.align	2
 1790              	ball:
 1791 0118 00000000 		.word	ball_geometry
 1792 011c 00000000 		.word	0
 1793 0120 00000000 		.word	0
 1794 0124 01000000 		.word	1
 1795 0128 01000000 		.word	1
 1796 012c 00000000 		.word	draw_object
 1797 0130 00000000 		.word	clear_object
 1798 0134 00000000 		.word	move_object
 1799 0138 00000000 		.word	set_object_speed
 1800              		.align	2
 1803              	alien:
 1804 013c 00000000 		.word	alien_geometry
 1805 0140 00000000 		.word	0
 1806 0144 00000000 		.word	0
 1807 0148 01000000 		.word	1
 1808 014c 01000000 		.word	1
 1809 0150 00000000 		.word	draw_object
 1810 0154 00000000 		.word	clear_object
 1811 0158 00000000 		.word	move_object
 1812 015c 00000000 		.word	set_object_speed
 1813              		.text
 1814              		.align	2
 1815              		.global	appInit_alt
 1816              		.code	16
 1817              		.thumb_func
 1819              	appInit_alt:
 1820              	.LFB24:
 1821              		.file 3 "C:/Users/czar/Chalmers/Moplaborationer/lab4/key_input.h"
   1:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** void appInit_alt (void)
   2:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** {
 1822              		.loc 3 2 0
 1823              		.cfi_startproc
 1824 0810 80B5     		push	{r7, lr}
 1825              		.cfi_def_cfa_offset 8
 1826              		.cfi_offset 7, -8
 1827              		.cfi_offset 14, -4
 1828 0812 00AF     		add	r7, sp, #0
 1829              		.cfi_def_cfa_register 7
   3:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	GPIO_D.moder  &= 0x0000FFFF;
 1830              		.loc 3 3 0
 1831 0814 104B     		ldr	r3, .L110
 1832 0816 104A     		ldr	r2, .L110
 1833 0818 1268     		ldr	r2, [r2]
 1834 081a 1204     		lsls	r2, r2, #16
 1835 081c 120C     		lsrs	r2, r2, #16
 1836 081e 1A60     		str	r2, [r3]
   4:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	GPIO_D.moder  |= 0x55000000;
 1837              		.loc 3 4 0
 1838 0820 0D4B     		ldr	r3, .L110
 1839 0822 0D4A     		ldr	r2, .L110
 1840 0824 1268     		ldr	r2, [r2]
 1841 0826 AA21     		movs	r1, #170
 1842 0828 C905     		lsls	r1, r1, #23
 1843 082a 0A43     		orrs	r2, r1
 1844 082c 1A60     		str	r2, [r3]
   5:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	GPIO_D.otyper &= 0x00FF;
 1845              		.loc 3 5 0
 1846 082e 0A4A     		ldr	r2, .L110
 1847 0830 094B     		ldr	r3, .L110
 1848 0832 9B88     		ldrh	r3, [r3, #4]
 1849 0834 9BB2     		uxth	r3, r3
 1850 0836 FF21     		movs	r1, #255
 1851 0838 0B40     		ands	r3, r1
 1852 083a 9BB2     		uxth	r3, r3
 1853 083c 9380     		strh	r3, [r2, #4]
   6:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	GPIO_D.pupdr  = 0x0000FFFF;
 1854              		.loc 3 6 0
 1855 083e 064B     		ldr	r3, .L110
 1856 0840 064A     		ldr	r2, .L110+4
 1857 0842 DA60     		str	r2, [r3, #12]
   7:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	GPIO_D.pupdr  |= 0xAAAA00000;
 1858              		.loc 3 7 0
 1859 0844 044B     		ldr	r3, .L110
 1860 0846 044A     		ldr	r2, .L110
 1861 0848 D268     		ldr	r2, [r2, #12]
 1862 084a 1100     		movs	r1, r2
 1863 084c 044A     		ldr	r2, .L110+8
 1864 084e 0A43     		orrs	r2, r1
 1865 0850 DA60     		str	r2, [r3, #12]
   8:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** }
 1866              		.loc 3 8 0
 1867 0852 C046     		nop
 1868 0854 BD46     		mov	sp, r7
 1869              		@ sp needed
 1870 0856 80BD     		pop	{r7, pc}
 1871              	.L111:
 1872              		.align	2
 1873              	.L110:
 1874 0858 000C0240 		.word	1073875968
 1875 085c FFFF0000 		.word	65535
 1876 0860 0000A0AA 		.word	-1432354816
 1877              		.cfi_endproc
 1878              	.LFE24:
 1880              		.align	2
 1881              		.global	kbdActivate
 1882              		.code	16
 1883              		.thumb_func
 1885              	kbdActivate:
 1886              	.LFB25:
   9:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 
  10:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 
  11:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** void kbdActivate (unsigned int row)
  12:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** { /* aktiverar angiven rad hos tangentbordet, eller deaktivera samtliga */
 1887              		.loc 3 12 0
 1888              		.cfi_startproc
 1889 0864 80B5     		push	{r7, lr}
 1890              		.cfi_def_cfa_offset 8
 1891              		.cfi_offset 7, -8
 1892              		.cfi_offset 14, -4
 1893 0866 82B0     		sub	sp, sp, #8
 1894              		.cfi_def_cfa_offset 16
 1895 0868 00AF     		add	r7, sp, #0
 1896              		.cfi_def_cfa_register 7
 1897 086a 7860     		str	r0, [r7, #4]
  13:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 
  14:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	switch (row) 
 1898              		.loc 3 14 0
 1899 086c 7B68     		ldr	r3, [r7, #4]
 1900 086e 042B     		cmp	r3, #4
 1901 0870 19D8     		bhi	.L120
 1902 0872 7B68     		ldr	r3, [r7, #4]
 1903 0874 9A00     		lsls	r2, r3, #2
 1904 0876 0E4B     		ldr	r3, .L121
 1905 0878 D318     		adds	r3, r2, r3
 1906 087a 1B68     		ldr	r3, [r3]
 1907 087c 9F46     		mov	pc, r3
 1908              		.section	.rodata
 1909              		.align	2
 1910              	.L115:
 1911 0020 9E080000 		.word	.L114
 1912 0024 7E080000 		.word	.L116
 1913 0028 86080000 		.word	.L117
 1914 002c 8E080000 		.word	.L118
 1915 0030 96080000 		.word	.L119
 1916              		.text
 1917              	.L116:
  15:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	{
  16:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 		case 1: GPIO_D.odrHigh = 0x10; break;
 1918              		.loc 3 16 0
 1919 087e 0D4B     		ldr	r3, .L121+4
 1920 0880 1022     		movs	r2, #16
 1921 0882 5A75     		strb	r2, [r3, #21]
 1922 0884 0FE0     		b	.L113
 1923              	.L117:
  17:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 		case 2: GPIO_D.odrHigh = 0x20; break;
 1924              		.loc 3 17 0
 1925 0886 0B4B     		ldr	r3, .L121+4
 1926 0888 2022     		movs	r2, #32
 1927 088a 5A75     		strb	r2, [r3, #21]
 1928 088c 0BE0     		b	.L113
 1929              	.L118:
  18:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 		case 3: GPIO_D.odrHigh = 0x40; break;
 1930              		.loc 3 18 0
 1931 088e 094B     		ldr	r3, .L121+4
 1932 0890 4022     		movs	r2, #64
 1933 0892 5A75     		strb	r2, [r3, #21]
 1934 0894 07E0     		b	.L113
 1935              	.L119:
  19:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 		case 4: GPIO_D.odrHigh = 0x80; break;
 1936              		.loc 3 19 0
 1937 0896 074B     		ldr	r3, .L121+4
 1938 0898 8022     		movs	r2, #128
 1939 089a 5A75     		strb	r2, [r3, #21]
 1940 089c 03E0     		b	.L113
 1941              	.L114:
  20:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 		case 0: GPIO_D.odrHigh = 0x00; break;
 1942              		.loc 3 20 0
 1943 089e 054B     		ldr	r3, .L121+4
 1944 08a0 0022     		movs	r2, #0
 1945 08a2 5A75     		strb	r2, [r3, #21]
 1946 08a4 C046     		nop
 1947              	.L113:
 1948              	.L120:
  21:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	}
  22:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** }
 1949              		.loc 3 22 0
 1950 08a6 C046     		nop
 1951 08a8 BD46     		mov	sp, r7
 1952 08aa 02B0     		add	sp, sp, #8
 1953              		@ sp needed
 1954 08ac 80BD     		pop	{r7, pc}
 1955              	.L122:
 1956 08ae C046     		.align	2
 1957              	.L121:
 1958 08b0 20000000 		.word	.L115
 1959 08b4 000C0240 		.word	1073875968
 1960              		.cfi_endproc
 1961              	.LFE25:
 1963              		.align	2
 1964              		.global	kbdGetCol
 1965              		.code	16
 1966              		.thumb_func
 1968              	kbdGetCol:
 1969              	.LFB26:
  23:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 
  24:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 
  25:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 
  26:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** int kbdGetCol (void)
  27:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** { /* om någon tangent (i aktiverad rad) är nedtryckt, returnera dess kolumner, annars, returnera 
 1970              		.loc 3 27 0
 1971              		.cfi_startproc
 1972 08b8 80B5     		push	{r7, lr}
 1973              		.cfi_def_cfa_offset 8
 1974              		.cfi_offset 7, -8
 1975              		.cfi_offset 14, -4
 1976 08ba 82B0     		sub	sp, sp, #8
 1977              		.cfi_def_cfa_offset 16
 1978 08bc 00AF     		add	r7, sp, #0
 1979              		.cfi_def_cfa_register 7
  28:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	unsigned char c;
  29:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	c = GPIO_D.idrHigh;
 1980              		.loc 3 29 0
 1981 08be 124A     		ldr	r2, .L129
 1982 08c0 FB1D     		adds	r3, r7, #7
 1983 08c2 527C     		ldrb	r2, [r2, #17]
 1984 08c4 1A70     		strb	r2, [r3]
  30:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	if (c & 0x8) return 4;
 1985              		.loc 3 30 0
 1986 08c6 FB1D     		adds	r3, r7, #7
 1987 08c8 1B78     		ldrb	r3, [r3]
 1988 08ca 0822     		movs	r2, #8
 1989 08cc 1340     		ands	r3, r2
 1990 08ce 01D0     		beq	.L124
 1991              		.loc 3 30 0 is_stmt 0 discriminator 1
 1992 08d0 0423     		movs	r3, #4
 1993 08d2 15E0     		b	.L125
 1994              	.L124:
  31:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	if (c & 0x4) return 3;
 1995              		.loc 3 31 0 is_stmt 1
 1996 08d4 FB1D     		adds	r3, r7, #7
 1997 08d6 1B78     		ldrb	r3, [r3]
 1998 08d8 0422     		movs	r2, #4
 1999 08da 1340     		ands	r3, r2
 2000 08dc 01D0     		beq	.L126
 2001              		.loc 3 31 0 is_stmt 0 discriminator 1
 2002 08de 0323     		movs	r3, #3
 2003 08e0 0EE0     		b	.L125
 2004              	.L126:
  32:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	if (c & 0x2) return 2;
 2005              		.loc 3 32 0 is_stmt 1
 2006 08e2 FB1D     		adds	r3, r7, #7
 2007 08e4 1B78     		ldrb	r3, [r3]
 2008 08e6 0222     		movs	r2, #2
 2009 08e8 1340     		ands	r3, r2
 2010 08ea 01D0     		beq	.L127
 2011              		.loc 3 32 0 is_stmt 0 discriminator 1
 2012 08ec 0223     		movs	r3, #2
 2013 08ee 07E0     		b	.L125
 2014              	.L127:
  33:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	if (c & 0x1) return 1;
 2015              		.loc 3 33 0 is_stmt 1
 2016 08f0 FB1D     		adds	r3, r7, #7
 2017 08f2 1B78     		ldrb	r3, [r3]
 2018 08f4 0122     		movs	r2, #1
 2019 08f6 1340     		ands	r3, r2
 2020 08f8 01D0     		beq	.L128
 2021              		.loc 3 33 0 is_stmt 0 discriminator 1
 2022 08fa 0123     		movs	r3, #1
 2023 08fc 00E0     		b	.L125
 2024              	.L128:
  34:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	return 0;
 2025              		.loc 3 34 0 is_stmt 1
 2026 08fe 0023     		movs	r3, #0
 2027              	.L125:
  35:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** }
 2028              		.loc 3 35 0
 2029 0900 1800     		movs	r0, r3
 2030 0902 BD46     		mov	sp, r7
 2031 0904 02B0     		add	sp, sp, #8
 2032              		@ sp needed
 2033 0906 80BD     		pop	{r7, pc}
 2034              	.L130:
 2035              		.align	2
 2036              	.L129:
 2037 0908 000C0240 		.word	1073875968
 2038              		.cfi_endproc
 2039              	.LFE26:
 2041              		.section	.rodata
 2042              		.align	2
 2043              	.LC0:
 2044 0034 01       		.byte	1
 2045 0035 02       		.byte	2
 2046 0036 03       		.byte	3
 2047 0037 0A       		.byte	10
 2048 0038 04       		.byte	4
 2049 0039 05       		.byte	5
 2050 003a 06       		.byte	6
 2051 003b 0B       		.byte	11
 2052 003c 07       		.byte	7
 2053 003d 08       		.byte	8
 2054 003e 09       		.byte	9
 2055 003f 0C       		.byte	12
 2056 0040 0E       		.byte	14
 2057 0041 00       		.byte	0
 2058 0042 0F       		.byte	15
 2059 0043 0D       		.byte	13
 2060              		.text
 2061              		.align	2
 2062              		.global	keyb
 2063              		.code	16
 2064              		.thumb_func
 2066              	keyb:
 2067              	.LFB27:
  36:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 
  37:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 
  38:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 
  39:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 
  40:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** unsigned char keyb (void)
  41:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** {
 2068              		.loc 3 41 0
 2069              		.cfi_startproc
 2070 090c 80B5     		push	{r7, lr}
 2071              		.cfi_def_cfa_offset 8
 2072              		.cfi_offset 7, -8
 2073              		.cfi_offset 14, -4
 2074 090e 86B0     		sub	sp, sp, #24
 2075              		.cfi_def_cfa_offset 32
 2076 0910 00AF     		add	r7, sp, #0
 2077              		.cfi_def_cfa_register 7
  42:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	unsigned char key[]= {1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
 2078              		.loc 3 42 0
 2079 0912 3A00     		movs	r2, r7
 2080 0914 174B     		ldr	r3, .L137
 2081 0916 1000     		movs	r0, r2
 2082 0918 1900     		movs	r1, r3
 2083 091a 1023     		movs	r3, #16
 2084 091c 1A00     		movs	r2, r3
 2085 091e FFF7FEFF 		bl	memcpy
  43:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	int row, col;
  44:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	for (row=1; row <= 4; row++){
 2086              		.loc 3 44 0
 2087 0922 0123     		movs	r3, #1
 2088 0924 7B61     		str	r3, [r7, #20]
 2089 0926 19E0     		b	.L132
 2090              	.L135:
  45:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 		kbdActivate(row);
 2091              		.loc 3 45 0
 2092 0928 7B69     		ldr	r3, [r7, #20]
 2093 092a 1800     		movs	r0, r3
 2094 092c FFF7FEFF 		bl	kbdActivate
  46:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 		if((col = kbdGetCol() ))
 2095              		.loc 3 46 0
 2096 0930 FFF7FEFF 		bl	kbdGetCol
 2097 0934 0300     		movs	r3, r0
 2098 0936 3B61     		str	r3, [r7, #16]
 2099 0938 3B69     		ldr	r3, [r7, #16]
 2100 093a 002B     		cmp	r3, #0
 2101 093c 0BD0     		beq	.L133
  47:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 		{
  48:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 			kbdActivate(0);
 2102              		.loc 3 48 0
 2103 093e 0020     		movs	r0, #0
 2104 0940 FFF7FEFF 		bl	kbdActivate
  49:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 			return key [4*(row-1)+(col-1)];
 2105              		.loc 3 49 0
 2106 0944 7B69     		ldr	r3, [r7, #20]
 2107 0946 013B     		subs	r3, r3, #1
 2108 0948 9A00     		lsls	r2, r3, #2
 2109 094a 3B69     		ldr	r3, [r7, #16]
 2110 094c 013B     		subs	r3, r3, #1
 2111 094e D318     		adds	r3, r2, r3
 2112 0950 3A00     		movs	r2, r7
 2113 0952 D35C     		ldrb	r3, [r2, r3]
 2114 0954 09E0     		b	.L136
 2115              	.L133:
  44:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 		kbdActivate(row);
 2116              		.loc 3 44 0 discriminator 2
 2117 0956 7B69     		ldr	r3, [r7, #20]
 2118 0958 0133     		adds	r3, r3, #1
 2119 095a 7B61     		str	r3, [r7, #20]
 2120              	.L132:
  44:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 		kbdActivate(row);
 2121              		.loc 3 44 0 is_stmt 0 discriminator 1
 2122 095c 7B69     		ldr	r3, [r7, #20]
 2123 095e 042B     		cmp	r3, #4
 2124 0960 E2DD     		ble	.L135
  50:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 		}
  51:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	}
  52:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	kbdActivate(0);
 2125              		.loc 3 52 0 is_stmt 1
 2126 0962 0020     		movs	r0, #0
 2127 0964 FFF7FEFF 		bl	kbdActivate
  53:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	return 1;
 2128              		.loc 3 53 0
 2129 0968 0123     		movs	r3, #1
 2130              	.L136:
  54:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** }
 2131              		.loc 3 54 0 discriminator 1
 2132 096a 1800     		movs	r0, r3
 2133 096c BD46     		mov	sp, r7
 2134 096e 06B0     		add	sp, sp, #24
 2135              		@ sp needed
 2136 0970 80BD     		pop	{r7, pc}
 2137              	.L138:
 2138 0972 C046     		.align	2
 2139              	.L137:
 2140 0974 34000000 		.word	.LC0
 2141              		.cfi_endproc
 2142              	.LFE27:
 2144              		.section	.rodata
 2145              		.align	2
 2146              	.LC1:
 2147 0044 3F       		.byte	63
 2148 0045 06       		.byte	6
 2149 0046 5B       		.byte	91
 2150 0047 4F       		.byte	79
 2151 0048 66       		.byte	102
 2152 0049 6D       		.byte	109
 2153 004a 7D       		.byte	125
 2154 004b 07       		.byte	7
 2155 004c 7F       		.byte	127
 2156 004d 67       		.byte	103
 2157 004e 77       		.byte	119
 2158 004f 7C       		.byte	124
 2159 0050 58       		.byte	88
 2160 0051 5E       		.byte	94
 2161 0052 79       		.byte	121
 2162 0053 71       		.byte	113
 2163              		.text
 2164              		.align	2
 2165              		.global	out7seg
 2166              		.code	16
 2167              		.thumb_func
 2169              	out7seg:
 2170              	.LFB28:
  55:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 
  56:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 
  57:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** void out7seg(unsigned char key_)
  58:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** {
 2171              		.loc 3 58 0
 2172              		.cfi_startproc
 2173 0978 80B5     		push	{r7, lr}
 2174              		.cfi_def_cfa_offset 8
 2175              		.cfi_offset 7, -8
 2176              		.cfi_offset 14, -4
 2177 097a 86B0     		sub	sp, sp, #24
 2178              		.cfi_def_cfa_offset 32
 2179 097c 00AF     		add	r7, sp, #0
 2180              		.cfi_def_cfa_register 7
 2181 097e 0200     		movs	r2, r0
 2182 0980 FB1D     		adds	r3, r7, #7
 2183 0982 1A70     		strb	r2, [r3]
  59:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	if (key_ > 0xF)
 2184              		.loc 3 59 0
 2185 0984 FB1D     		adds	r3, r7, #7
 2186 0986 1B78     		ldrb	r3, [r3]
 2187 0988 0F2B     		cmp	r3, #15
 2188 098a 03D9     		bls	.L140
  60:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	{
  61:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	GPIO_E.odrLow = 0x00;
 2189              		.loc 3 61 0
 2190 098c 0B4B     		ldr	r3, .L143
 2191 098e 0022     		movs	r2, #0
 2192 0990 1A75     		strb	r2, [r3, #20]
  62:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	}
  63:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	else
  64:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	{
  65:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	
  66:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	unsigned char SegCodes[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x67,0x77,0x7C,0x58,0x5E,0x
  67:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	GPIO_E.odrLow = SegCodes[key_];
  68:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	}
  69:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 
  70:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** }...
 2193              		.loc 3 70 0
 2194 0992 0FE0     		b	.L142
 2195              	.L140:
 2196              	.LBB4:
  66:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	unsigned char SegCodes[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x67,0x77,0x7C,0x58,0x5E,0x
 2197              		.loc 3 66 0
 2198 0994 0823     		movs	r3, #8
 2199 0996 FA18     		adds	r2, r7, r3
 2200 0998 094B     		ldr	r3, .L143+4
 2201 099a 1000     		movs	r0, r2
 2202 099c 1900     		movs	r1, r3
 2203 099e 1023     		movs	r3, #16
 2204 09a0 1A00     		movs	r2, r3
 2205 09a2 FFF7FEFF 		bl	memcpy
  67:C:/Users/czar/Chalmers/Moplaborationer/lab4\key_input.h **** 	GPIO_E.odrLow = SegCodes[key_];
 2206              		.loc 3 67 0
 2207 09a6 0549     		ldr	r1, .L143
 2208 09a8 FB1D     		adds	r3, r7, #7
 2209 09aa 1B78     		ldrb	r3, [r3]
 2210 09ac 0822     		movs	r2, #8
 2211 09ae BA18     		adds	r2, r7, r2
 2212 09b0 D35C     		ldrb	r3, [r2, r3]
 2213 09b2 0B75     		strb	r3, [r1, #20]
 2214              	.L142:
 2215              	.LBE4:
 2216              		.loc 3 70 0
 2217 09b4 C046     		nop
 2218 09b6 BD46     		mov	sp, r7
 2219 09b8 06B0     		add	sp, sp, #24
 2220              		@ sp needed
 2221 09ba 80BD     		pop	{r7, pc}
 2222              	.L144:
 2223              		.align	2
 2224              	.L143:
 2225 09bc 00100240 		.word	1073876992
 2226 09c0 44000000 		.word	.LC1
 2227              		.cfi_endproc
 2228              	.LFE28:
 2230              		.section	.start_section,"ax",%progbits
 2231              		.align	2
 2232              		.global	startup
 2233              		.code	16
 2234              		.thumb_func
 2236              	startup:
 2237              	.LFB29:
 2238              		.file 4 "C:/Users/czar/Chalmers/Moplaborationer/lab4/startup.c"
   1:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** /*
   2:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c ****  * 	startup.c
   3:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c ****  *
   4:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c ****  */
   5:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c ****  #include "header.h"
   6:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c ****  #include "graphic_objs.h"
   7:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c ****  #include "key_input.h"
   8:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   9:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** 
  10:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** void startup ( void )
  11:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** {
 2239              		.loc 4 11 0
 2240              		.cfi_startproc
  12:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** asm volatile(
 2241              		.loc 4 12 0
 2242              		.syntax divided
 2243              	@ 12 "C:/Users/czar/Chalmers/Moplaborationer/lab4/startup.c" 1
 2244 0000 0248     		 LDR R0,=0x2001C000
 2245 0002 8546     	 MOV SP,R0
 2246 0004 FFF7FEFF 	 BL main
 2247 0008 FEE7     	.L1: B .L1
 2248              	
 2249              	@ 0 "" 2
  13:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  14:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** 	" MOV SP,R0\n"
  15:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** 	" BL main\n"				/* call main */
  16:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** 	".L1: B .L1\n"				/* never return */
  17:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** 	) ;
  18:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** }
 2250              		.loc 4 18 0
 2251              		.thumb
 2252              		.syntax unified
 2253 000a C046     		nop
 2254              		.cfi_endproc
 2255              	.LFE29:
 2257              		.text
 2258              		.align	2
 2259              		.global	main
 2260              		.code	16
 2261              		.thumb_func
 2263              	main:
 2264              	.LFB30:
  19:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** #ifdef 		SIMULATOR
  20:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** #define 	DELAY_COUNT 10000
  21:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** #else
  22:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** #define		DELAY_COUNT 1000000
  23:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** #endif
  24:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** void main(void)
  25:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** {
 2265              		.loc 4 25 0
 2266              		.cfi_startproc
 2267 09c4 80B5     		push	{r7, lr}
 2268              		.cfi_def_cfa_offset 8
 2269              		.cfi_offset 7, -8
 2270              		.cfi_offset 14, -4
 2271 09c6 00AF     		add	r7, sp, #0
 2272              		.cfi_def_cfa_register 7
  26:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** 	init_app();
 2273              		.loc 4 26 0
 2274 09c8 FFF7FEFF 		bl	init_app
 2275              	.L147:
  27:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** 	while (1){
  28:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** 		GPIO_E.odrHigh = 0x00;
 2276              		.loc 4 28 0 discriminator 1
 2277 09cc 074B     		ldr	r3, .L148
 2278 09ce 0022     		movs	r2, #0
 2279 09d0 5A75     		strb	r2, [r3, #21]
  29:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** 		delay(DELAY_COUNT);
 2280              		.loc 4 29 0 discriminator 1
 2281 09d2 074B     		ldr	r3, .L148+4
 2282 09d4 1800     		movs	r0, r3
 2283 09d6 FFF7FEFF 		bl	delay
  30:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** 		GPIO_E.odrHigh = 0xFF;
 2284              		.loc 4 30 0 discriminator 1
 2285 09da 044B     		ldr	r3, .L148
 2286 09dc FF22     		movs	r2, #255
 2287 09de 5A75     		strb	r2, [r3, #21]
  31:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** 		delay(DELAY_COUNT);
 2288              		.loc 4 31 0 discriminator 1
 2289 09e0 034B     		ldr	r3, .L148+4
 2290 09e2 1800     		movs	r0, r3
 2291 09e4 FFF7FEFF 		bl	delay
  32:C:/Users/czar/Chalmers/Moplaborationer/lab4\startup.c **** 	}
 2292              		.loc 4 32 0 discriminator 1
 2293 09e8 F0E7     		b	.L147
 2294              	.L149:
 2295 09ea C046     		.align	2
 2296              	.L148:
 2297 09ec 00100240 		.word	1073876992
 2298 09f0 10270000 		.word	10000
 2299              		.cfi_endproc
 2300              	.LFE30:
 2302              	.Letext0:
 2303              		.file 5 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\machine\\_default_types.h"
 2304              		.file 6 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\sys\\_stdint.h"
