#include "xaccelerator.h"

XAccelerator_Config XAccelerator_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,accelerator-1.0", /* compatible */
		0x80000000 /* reg */
	},
	 {
		 NULL
	}
};