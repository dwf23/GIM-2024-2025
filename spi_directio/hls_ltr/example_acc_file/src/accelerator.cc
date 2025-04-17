
#include <cmath>
#include <iostream>
#include <xexample_acc.h>
#include "ap_fixed.h"
//#include "hls_directio.h"

#include "xexample_acc.h"

XExample_acc Example_acc;

#include <xparameters.h>
#include <xiltimer.h>

// using namespace std;

typedef bool comm_line;
typedef ap_fixed<16, 7> fixed_16;

int main()
{
	std::cout << "--- Start of the Program ---" << std::endl;

	// values for simulation and testing using C++ format with integers
    fixed_16 w1_in = 2;
	fixed_16 w2_in = 3;
	comm_line alpha_transmit_line;

	unsigned long long tt;
	int tt_print;
	double tt_seconds, pl_time, ps_time, speedup;
	XTime start_time_co;
	XTime stop_time_co;
	
	
	// std::cout is c++ version of printf and needs the iostream.h and namespace std declared above
	std::cout << "Integer variables initialized for software sim, w1=" << w1_in << " w2=" << w2_in << std::endl;

	// Get the starting time in cycle counts
	XTime_GetTime(&start_time_co);
    XExample_acc_Initialize(&Example_acc, 0);
	// XExample_acc_CfgInitialize(&Example_acc, 0);

    std::cout << "Initalized" << std::endl;

	XExample_acc_Set_w1(&Example_acc, w1_in);
	XExample_acc_Set_w2(&Example_acc, w2_in);

    std::cout << "Set values" << std::endl;

	// Trigger the accelerator to start
	XExample_acc_Start(&Example_acc);
	while (!XExample_acc_IsReady(&Example_acc));

	// Capture the stop time on the processor
	XTime_GetTime(&stop_time_co);

	// Compute timing on PL hardware using the accelerator.
	tt = stop_time_co - start_time_co;
	tt_print = (unsigned) tt;
	std::cout << "Done, Total time steps for I/O writes and I/O reads for PL = " << tt_print << std::endl;
	tt_seconds = (double) COUNTS_PER_SECOND;
	std::cout << "Cycle counts per second for ARM A9 core for communication send = " << tt_seconds << std::endl;
	pl_time = (double) tt_print / tt_seconds;
	std::cout << "Time in seconds for communication send = times steps / COUNTS_PER_SECOND = " << pl_time << std::endl;


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

