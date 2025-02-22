#include "xpulse_gen.h"

XPulse_gen_Config XPulse_gen_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,pulse-gen-1.0", /* compatible */
		0x80010000 /* reg */
	},
	 {
		 NULL
	}
};