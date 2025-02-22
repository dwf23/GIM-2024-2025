#include "xexample_acc.h"

XExample_acc_Config XExample_acc_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,example-acc-1.0", /* compatible */
		0x80000000 /* reg */
	},
	 {
		 NULL
	}
};