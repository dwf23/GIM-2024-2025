#include "xarmv8.h"

XARMv8_Config XARMv8_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {
	{
		0x5f5dd19,  /* stamp-frequency */
		0x41908016,  /* cpu-frequency */
		0x0  /* reg */
	}
};