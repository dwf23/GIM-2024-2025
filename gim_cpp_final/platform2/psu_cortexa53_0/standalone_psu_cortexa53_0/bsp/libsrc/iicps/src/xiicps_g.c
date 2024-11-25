#include "xiicps.h"

XIicPs_Config XIicPs_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"cdns,i2c-r1p14", /* compatible */
		0xff030000, /* reg */
		0x5f5dd19, /* xlnx,clock-freq */
		0x4012, /* interrupts */
		0xf9010000, /* interrupt-parent */
		0x3e /* clocks */
	},
	 {
		 NULL
	}
};