
#include <cmath>
#include <iostream>
#include "ap_fixed.h"


#include "xexample_acc.h"
#include "xsend_data.h"
#include "xreceive_data.h"
#include "ap_fixed.h"

XExample_acc Example_acc;
XSend_data Send_data;
XReceive_data Receive_data;

#include <xparameters.h>
#include <xiltimer.h>

using namespace std;
typedef ap_fixed<16, 7> fixed_16;


int main()
{
	cout << "--- Start of the Program ---" << endl;

	// values for simulation and testing using C++ format with integers
	fixed_16 w1_in = 2.5;
	fixed_16 w2_in = 3;
    fixed_16 w1_out = 0.0;
    fixed_16 w2_out = 0.0;
    bool flag = true;
    int interval = 100;

	unsigned long long tt;
	int tt_print;
	double tt_seconds, pl_time, ps_time, speedup;
	XTime start_time_co;
	XTime stop_time_co;
	
	
	// cout is c++ version of printf and needs the iostream.h and namespace std declared above
	cout << "Fixed 16 variables initialized for software sim, w1=" << w1_in.to_float() << " w2=" << w2_in.to_float() << endl;

	// Get the starting time in cycle counts
	XTime_GetTime(&start_time_co);

	XExample_acc_Initialize(&Example_acc, 0);
    XSend_data_Initialize(&Send_data, 0);
    XReceive_data_Initialize(&Receive_data, 0);

	XExample_acc_Set_in_w1(&Example_acc, w1_in);
	XExample_acc_Set_in_w2(&Example_acc, w2_in);
    XSend_data_Set_flag(&Send_data, flag);
    XSend_data_Set_interval(&Send_data, interval);
    XReceive_data_Set_flag(&Receive_data, flag);
    


	// Trigger the accelerator to start
    XSend_data_Start(&Send_data);
    while(!XSend_data_IsReady(&Send_data));
    XReceive_data_Start(&Receive_data);
    while(!XReceive_data_IsReady(&Receive_data))
	XExample_acc_Start(&Example_acc);
    do {
        w1_out = XExample_acc_Get_out_w1(&Example_acc);
        w2_out = XExample_acc_Get_out_w2(&Example_acc);
    }
	while (!XExample_acc_IsReady(&Example_acc));

    cout << "Finished running program: Received w1: " << w1_out.to_float() << "and w2: " << w2_out.to_float() << endl;

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

