#include "xspips.h"

XSpiPs_Config XSpiPs_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"cdns,spi-r1p6", /* compatible */
		0xff040000, /* reg */
		0x0, /* xlnx,clock-freq */
		0x4013, /* interrupts */
		0xf9010000 /* interrupt-parent */
	},
	 {
		 NULL
	}
};