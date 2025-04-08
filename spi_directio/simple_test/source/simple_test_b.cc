
#include <cmath>
#include <iostream>


// #include "xexample_acc.h"
#include "xreceive_data.h"
#include "xsimple_test.h"

XSimple_test Simple_test;
XReceive_data Receive_data;


#include <xparameters.h>
#include <xiltimer.h>

using namespace std;


int main()
{
	cout << "--- Start of the Program ---" << endl;

	// values for simulation and testing using C++ format with integers
    bool flag = true;
    int interval = 10000000;

	XTime start_time_co;
	XTime stop_time_co;
	
	
	// cout is c++ version of printf and needs the iostream.h and namespace std declared above
    cout << "Starting Initialize" << endl;
	// Get the starting time in cycle counts
	XTime_GetTime(&start_time_co);
	XSimple_test_Initialize(&Simple_test, 0);
    XReceive_data_Initialize(&Receive_data,0);

    cout << "rx1: " << XReceive_data_Get_rx1(&Receive_data) << endl;
    cout << "rx2: " << XReceive_data_Get_rx2(&Receive_data) << endl;

	XSimple_test_Set_flag(&Simple_test,flag);
    XReceive_data_Set_flag(&Receive_data, flag);

    cout << "Starting Simple_test" << endl;
	// Trigger the accelerator to start
	XSimple_test_Start(&Simple_test);

    cout << "Starting Receive_test:" << endl;

    do{
        for (int i = 0; i < interval; i++); //delay between reads
        cout << "rx1: " << XReceive_data_Get_rx1(&Receive_data) << endl;
        cout << "rx2: " << XReceive_data_Get_rx2(&Receive_data) << endl;
    }
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