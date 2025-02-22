
#include <cmath>
#include <iostream>
#include "xexample_acc.h"
#include "xpulse_gen.h"
#include "C:\Users\Dawso\GIM-2024-2025\spi_directio\hls_daw\GIM_comm.h"

XExample_acc Example_acc;
XPulse_gen Pulse_gen;

#include <xparameters.h>
#include <xiltimer.h>



int main()
{
	std::cout << "--- Start of the Program ---" << std::endl;

	// values for simulation and testing using C++ format with integers
	dataline data_in;
    bool start = true;

	unsigned long long tt;
	int tt_print;
	double tt_seconds, pl_time, ps_time, speedup;
	XTime start_time_co;
	XTime stop_time_co;
	
	
	// cout is c++ version of printf and needs the iostream.h and namespace std declared above

	// Get the starting time in cycle counts
	XTime_GetTime(&start_time_co);
	XExample_acc_Initialize(&Example_acc, 0);
    XPulse_gen_Initialize(&Pulse_gen, 0);


	// Trigger the accelerator to start
	XExample_acc_Set_start_r(&Example_acc, start);
    while(!XPulse_gen_Is)
    XPulse_gen_Set_start_r(&Pulse_gen, start);
	while (!XExample_acc_IsReady(&Example_acc));

	// Capture the stop time on the processor
	XTime_GetTime(&stop_time_co);

	// Compute timing on PL hardware using the accelerator.
	tt = stop_time_co - start_time_co;
	tt_print = (unsigned) tt;
	std::cout << "Done, Total time steps for I/O writes and I/O reads for PL = " << tt_print << std::endl;
	tt_seconds = (double) COUNTS_PER_SECOND;
	std::cout << "Cycle counts per second for ARM A9 core for PL add = " << tt_seconds << std::endl;
	pl_time = (double) tt_print / tt_seconds;
	std::cout << "Time in seconds for PL hardware add = times steps / COUNTS_PER_SECOND = " << pl_time << std::endl;


    // Get timing and do software simulation with integer data in c++
    XTime_GetTime(&start_time_co);
	XTime_GetTime(&stop_time_co);
	
    // Compute timing on ARM PS hardware
    tt = stop_time_co - start_time_co;
    tt_print = (unsigned) tt;
    std::cout << "Done, Total time steps for PS internal = " << tt_print << std::endl;
    tt_seconds = (double) COUNTS_PER_SECOND;
    std::cout << "Cycle counts per second for ARM A9 core for PS internal add = " << tt_seconds << std::endl;
    ps_time = (double) tt_print / tt_seconds;
    std::cout << "Time in seconds for PS ARM software internal add = times steps / COUNTS_PER_SECOND = " << ps_time << std::endl;


    // Compute Speedup when using the programmable logic accelerator
    speedup = ps_time / pl_time;
    std::cout << "Speedup of FPGA accelerator versus all software on ARM or PS/PL = " << speedup << std::endl;
    std::cout << "--- End of the Program ---" << std::endl;


	return 0;
}