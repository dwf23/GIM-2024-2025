#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "GIM_comm.h"
#include "ap_int.h"


int example_acc(dataline &data_in, bool start);

int main()
{
    std::cout << "Starting Testbench" << "\n";
    bool start = false;
    dataline data_in;


#ifdef HW_COSIM
   // Run the Vitis HLS block and pass pointer to r_hw to allow writing of variable
    std::cout << "Beginning HLS Func" << "\n";
    start = true;
    example_acc(data_in, start);
#endif

   // Print result r_sw and r_hw
   return 0;
}