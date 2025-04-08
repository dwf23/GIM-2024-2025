
#include <cmath>
#include <iostream>


// #include "xexample_acc.h"
#include "xexample_acc.h"
#include "xsend_data.h"
#include "xreceive_data.h"
#include "ap_fixed.h"

XExample_acc Example_acc;
XSend_data Send_data;
XReceive_data Receive_data;

#include <xparameters.h>
#include <xiltimer.h>
#include <cstdint>
#include <bitset>

typedef ap_fixed<16, 7> fixed_16;
template <typename T, size_t WUser, size_t WId, size_t WDest>
struct axis {
    T data[2];
    T user;
    T id;
    T dest;
    
    // Default constructor
    axis() : user(0), id(0), dest(0) {
        data[0] = 0;
        data[1] = 0;
    }

    // Constructor
    axis(T d1, T d2) {
        data[0] = d1;
        data[1] = d2;
    }
    
    // Function to display the values
    void display() {
        std::cout << "Data: " << data[0].to_float() << ", " << data[1].to_float() << std::endl;
    }
};

// struct pkt axis<fixed_16, 0, 0, 0>;
typedef axis<fixed_16, 0,0,0> pkt;
struct acc_ret {
    fixed_16  data[4];
};

using namespace std;
int main()
{
	cout << "--- Start of the Program ---" << endl;

	// values for simulation and testing using C++ format with integers
    bool flag_send = true;
    bool flag_rx = true;
    int debug;
    long ret;

	XTime start_time_co;
	XTime stop_time_co;
	
	
	// cout is c++ version of printf and needs the iostream.h and namespace std declared above
    cout << "Starting Initialize" << endl;
	// Get the starting time in cycle counts
	XTime_GetTime(&start_time_co);
	XExample_acc_Initialize(&Example_acc, 0);
    XSend_data_Initialize(&Send_data, 0);
    XReceive_data_Initialize(&Receive_data,0);

    cout << "Setting Flags" << endl;

    XSend_data_Set_flag(&Send_data,flag_send);
    XReceive_data_Set_flag(&Receive_data,flag_rx);

    cout<< "Starting Send Data:" << endl;
    XReceive_data_Start(&Receive_data);
    cout << "Starting Rx Data" << endl;
    XSend_data_Start(&Send_data);
    cout << "Starting Example Acc" << endl;
    while(!XSend_data_IsReady(&Send_data));
	// Trigger the accelerator to start
	XExample_acc_Start(&Example_acc);
    do{
        debug = XExample_acc_Get_debug(&Example_acc);
        cout << "DEBUG" << debug << endl;
    }
    while(!XExample_acc_IsReady(&Example_acc));


    ret = XExample_acc_Get_return(&Example_acc);
    cout << "ALl 4 numbers (can debug this later) " << bitset<64>(ret) << endl;
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