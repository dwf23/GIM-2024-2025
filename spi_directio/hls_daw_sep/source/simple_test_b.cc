
#include <cmath>
#include <iostream>


// #include "xexample_acc.h"
#include "xsimple_test.h"

XSimple_test Simple_test;

#include <xparameters.h>
#include <xiltimer.h>

using namespace std;


int main()
{
	cout << "--- Start of the Program ---" << endl;

	// values for simulation and testing using C++ format with integers
    bool flag = true;

	XTime start_time_co;
	XTime stop_time_co;
	
	
	// cout is c++ version of printf and needs the iostream.h and namespace std declared above
    cout << "Starting Initialize" << endl;
	// Get the starting time in cycle counts
	XTime_GetTime(&start_time_co);
	XSimple_test_Initialize(&Simple_test, 0);

	XSimple_test_Set_flag(&Simple_test,flag);

    cout << "Starting Simple_test" << endl;
	// Trigger the accelerator to start
	XSimple_test_Start(&Simple_test);
    while(!XSimple_test_IsReady(&Simple_test));

	// Capture the stop time on the processor
	XTime_GetTime(&stop_time_co);

	// Compute timing on PL hardware using the accelerator.


    // Get timing and do software simulation with integer data in c++
    XTime_GetTime(&start_time_co);
	XTime_GetTime(&stop_time_co);
	
    // Compute timing on ARM PS hardware


    // Compute Speedup when using the programmable logic accelerator


	return 0;
}