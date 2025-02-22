#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "GIM_comm.h"
#include "ap_int.h"


float example_acc(dataline &data_in);

int main()
{
    std::cout << "Starting Testbench" << "\n";
    dataline data_in;
    float last_num;


#ifdef HW_COSIM
   // Run the Vitis HLS block and pass pointer to r_hw to allow writing of variable
    std::cout << "Beginning HLS Func" << "\n";
    example_acc(data_in);
    return 0;
#endif

   // Print result r_sw and r_hw
   return 0;
}