
#include <cmath>
#include <iostream>
#include "xexample_acc.h"

XExample_acc Example_acc;

#include <xparameters.h>
#include <xiltimer.h>

// Used by C++ for the print command cout
using namespace std;


// actual MAIN control program running on ARM processor PS
int main()
{

    fixed_16 w1_in, w2_in;


	// Variables for timing and counts used for application cycle counts and timing
	unsigned long long tt;
	int tt_print;
	double tt_seconds, pl_time, ps_time, speedup;
	XTime start_time_co;
	XTime stop_time_co;

	cout << "--- Start of the Program ---" << endl;

	// Entter values for simulation and testing using C++ format with integers
	cout << "Enter number w1:";
	cin >> w1_in;
	
	cout << endl << "Enter number w2:";
	cin >> w2_in;
		
	
	// cout is c++ version of printf and needs the iostream.h and namespace std declared above
	cout << endl << "fixed_16 variables initialized for software sim, a=" << a_in << " b=" << b_in << " c=" << c_in << " d=" << d_in << " e=" << e_in << " f=" << f_in << " g=" << g_in << " h=" << h_in << endl;

	// Get the starting time in cycle counts
	XTime_GetTime(&start_time_co);

	XT_int_Initialize(&T_int, 0);

	// Real processing on PL accelerator starts here
	// Write all values to PL accelerator registers
	
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


   	cout << "--- End of the Program ---" << endl;


	return 0;
}

