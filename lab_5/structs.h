#include <stdint.h>	
typedef struct {	
				uint32_t				MODER;	
				uint16_t				OTYPER; //	+0x4	
				uint16_t				otReserved;
				uint32_t				OSPEEDR; //	+0x8
				uint32_t				PUPDR; //	+0xc
				uint8_t					IDRLOW; //	+0x10
				uint8_t					IDRHIGH; //	+0x11
				uint16_t				idrReserved;
				uint8_t					ODRLOW; //	+0x14
				uint8_t					ODRHIGH; //	+0x15
				uint16_t				odrReserved;
}	GPIO;

#define GPIO_D	(*((volatile	GPIO*)	0x40020c00))	
#define GPIO_E	(*((volatile	GPIO*)	0x40021000))