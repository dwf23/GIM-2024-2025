
#include <cmath>
#include <iostream>
#include "ap_fixed.h"


// #include "xexample_acc.h"
#include "xexample_acc.c"

XExample_acc Example_acc;

#include <xparameters.h>
#include <xiltimer.h>

using namespace std;


int main()
{
	cout << "--- Start of the Program ---" << endl;

	// values for simulation and testing using C++ format with integers
	fixed_16 w1_in = 2.5;
	fixed_16 w2_in = 3;
	comm_line alpha_transmit_line;

	unsigned long long tt;
	int tt_print;
	double tt_seconds, pl_time, ps_time, speedup;
	XTime start_time_co;
	XTime stop_time_co;
	
	
	// cout is c++ version of printf and needs the iostream.h and namespace std declared above
	cout << "Integer variables initialized for software sim, a=" << a_in << " b=" << b_in << " c=" << c_in << " d=" << d_in << " e=" << e_in << " f=" << f_in << " g=" << g_in << " h=" << h_in << endl;

	// Get the starting time in cycle counts
	XTime_GetTime(&start_time_co);
	XExample_acc_CfgInitialize(&Example_acc, 0);

	XExample_acc_Set_w1(&Example_acc, w1_in);
	XExample_acc_Set_w2(&Example_acc, w2_in);

	// Trigger the accelerator to start
	XExample_acc_Start(&Example_acc);
	while (!XT_int_IsReady(&T_int));

	// Capture the stop time on the processor
	XTime_GetTime(&stop_time_co);

	// Compute timing on PL hardware using the accelerator.
	tt = stop_time_co - start_time_co;
	tt_print = (unsigned) tt;
	cout << "Done, Total time steps for I/O writes and I/O reads for PL = " << tt_print << endl;
	tt_seconds = (double) COUNTS_PER_SECOND;
	cout << "Cycle counts per second for ARM A9 core for PL add = " << tt_seconds << endl;
	pl_time = (double) tt_print / tt_seconds;
	cout << "Time in seconds for PL hardware add = times steps / COUNTS_PER_SECOND = " << pl_time << endl;


    // Get timing and do software simulation with integer data in c++
    XTime_GetTime(&start_time_co);
	XTime_GetTime(&stop_time_co);
	
    // Compute timing on ARM PS hardware
    tt = stop_time_co - start_time_co;
    tt_print = (unsigned) tt;
    cout << "Done, Total time steps for PS internal = " << tt_print << endl;
    tt_seconds = (double) COUNTS_PER_SECOND;
    cout << "Cycle counts per second for ARM A9 core for PS internal add = " << tt_seconds << endl;
    ps_time = (double) tt_print / tt_seconds;
    cout << "Time in seconds for PS ARM software internal add = times steps / COUNTS_PER_SECOND = " << ps_time << endl;


    // Compute Speedup when using the programmable logic accelerator
    speedup = ps_time / pl_time;
    cout << "Speedup of FPGA accelerator versus all software on ARM or PS/PL = " << speedup << endl;
    cout << "--- End of the Program ---" << endl;


	return 0;
}

