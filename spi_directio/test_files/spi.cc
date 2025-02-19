
#include <cmath>
#include <iostream>
#include <iomanip>
#include "./vitis_files/dut.h"
#include "vitis_files\spi_master_logic.h"
#include "xspi_master.h"
#include "xspi_master_logic.h"
XT_int T_int;


#include <xparameters.h>
// The Xilinx time function file for measuring ARM core cycles
// #include "xtime_l.h"
#include <xiltimer.h>

// Used by C++ for the print command cout
using namespace std;


// actual MAIN control program running on ARM processor PS
int main()
{
	cout << "--- Start of the Program ---" << endl;

	// values for simulation and testing using C++ format with integers
	int a_in = 1;
	int b_in = 2;
	int c_in = 3;
	int d_in = -4;
	int e_in = 5;
	int f_in = 6;
	int g_in = 7;
	int h_in = 8;
	int r_sw = 0.0;
	int r_hw = 0.0;


	// Handshake variable from output of HLS PL block
	int done_out = 0;

	// Variables for timing and counts used for application cycle counts and timing
	unsigned long long tt;
	int tt_print;
	double tt_seconds, pl_time, ps_time, speedup;
	XTime start_time_co;
	XTime stop_time_co;
	
	
	// cout is c++ version of printf and needs the iostream.h and namespace std declared above
	cout << "Integer variables initialized for software sim, a=" << a_in << " b=" << b_in << " c=" << c_in << " d=" << d_in << " e=" << e_in << " f=" << f_in << " g=" << g_in << " h=" << h_in << endl;

	// Get the starting time in cycle counts
	XTime_GetTime(&start_time_co);

	// The "cout" print statements are commented out after debugging is complete to not affect
	// the cycle count of processor performance.

	// cout << "Start time marked." << endl;

	// IMPORTANT PART OF PS-PL AXI COMMUNICATION
	// Need to initialize the PL accelerator. Use the pointer to the device instance, here &T_int
	// Second parameter is the DeviceId which is usually zero 0 for a single AXI interface.
	// The function names of the Initialize, Set, and Get functions will be in the drivers folder
	// in the C:\ELEC522\cavallar\Tree_Int_HLS_Vitis\Vitis_HLS\t_int\solution1\impl\ip\drivers\t_int_v1_0\src
	// and the xt_int.h example here.
	XT_int_Initialize(&T_int, 0);

	// Real processing on PL accelerator starts here
	// Write all values to PL accelerator registers

	XT_int_Set_a(&T_int, a_in);
	XT_int_Set_b(&T_int, b_in);
	XT_int_Set_c(&T_int, c_in);
	XT_int_Set_d(&T_int, d_in);
	XT_int_Set_e(&T_int, e_in);
	XT_int_Set_f(&T_int, f_in);
	XT_int_Set_g(&T_int, g_in);
	XT_int_Set_h(&T_int, h_in);

	// Trigger the accelerator to start
	 XT_int_Start(&T_int);

	// Polling loop to wait for PL to complete.
	// Note that r_hw is the result value.
	// Note that done_out is a standard 32 bit integer and does not need reinterpretation.
	      do {
			 r_hw = XT_int_Get_r(&T_int);
	    	 done_out = XT_int_Get_done(&T_int);
	      } while (!XT_int_IsReady(&T_int));
         // Comment out print statement after debugging
	     // cout << "Detected HLS peripheral complete. Result received." << endl;


	// Capture the stop time on the processor
	XTime_GetTime(&stop_time_co);

	// END OF EXECUTION ON FPGA PROGRAMMABLE LOGIC
	cout << "Done signal from hardware = " << done_out << endl;
	
	cout << "Hardware result as r_hw = " << r_hw << endl;


	// Compute timing on PL hardware using the accelerator.
	tt = stop_time_co - start_time_co;
	tt_print = (unsigned) tt;
	cout << "Done, Total time steps for I/O writes and I/O reads for PL = " << tt_print << endl;
	tt_seconds = (double) COUNTS_PER_SECOND;
	cout << "Cycle counts per second for ARM A9 core for PL add = " << tt_seconds << endl;
	pl_time = (double) tt_print / tt_seconds;
	cout << "Time in seconds for PL hardware add = times steps / COUNTS_PER_SECOND = " << pl_time << endl;


	// ARM SOFTWARE ONLY PORTION OF PROGRAM
	// Generate the expected result on the ARM core using the built-in adder
	// Add the elements into the software result r_sw; first reset r_sw
    r_sw = 0;
    // Get timing and do software simulation with integer data in c++
    XTime_GetTime(&start_time_co);
    r_sw = a_in + b_in + c_in + d_in + e_in + f_in + g_in + h_in;
    XTime_GetTime(&stop_time_co);
    cout << "Result after ARM software only calculation = " << r_sw << endl;

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

