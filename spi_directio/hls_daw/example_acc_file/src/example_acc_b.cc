
#include <cmath>
#include <iostream>
//#include "hls_directio.h"
//#include "C:\Users\Dawso\GIM-2024-2025\spi_directio\hls_daw\GIM_comm.h"


// #include "xexample_acc.h"
#include "xexample_acc.h"

XExample_acc Example_acc;

#include <xparameters.h>
#include <xiltimer.h>

using namespace std;


int main()
{
	cout << "--- Start of the Program ---" << endl;

	// values for simulation and testing using C++ format with integers
	//dataline alpha_transmit_line;

	unsigned long long tt;
	int tt_print;
	double tt_seconds, pl_time, ps_time, speedup;
    float res;
	XTime start_time_co;
	XTime stop_time_co;

    XExample_acc Example_acc;
	
	
	// cout is c++ version of printf and needs the iostream.h and namespace std declared above

	// Get the starting time in cycle counts
	XTime_GetTime(&start_time_co);
	XExample_acc_Initialize(&Example_acc, 0);

    cout << "Starting accelerator" << endl;
	// Trigger the accelerator to start
	XExample_acc_Start(&Example_acc);
	while (!XExample_acc_IsDone(&Example_acc));

    cout << "Done?" << endl;

    res = XExample_acc_Get_return(&Example_acc);
    cout << "The res is: " << res << endl;


    

	// Capture the stop time on the processor
	//XTime_GetTime(&stop_time_co);

	// Compute timing on PL hardware using the accelerator.

    // Get timing and do software simulation with integer data in c+
	



    // Compute Speedup when using the programmable logic accelerator
    cout << "--- End of the Program ---" << endl;


	return 0;
}