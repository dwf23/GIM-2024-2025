#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "GIM_comm.h"
#include "ap_int.h"


int main()
{
    std::cout << "Starting Testbench" << "\n";
    fixed_16 w1 = 2.5;
    fixed_16 w2 = 3;
    comm_line alpha_transmit_line;

#ifdef HW_COSIM
   // Run the Vitis HLS block and pass pointer to r_hw to allow writing of variable
    std::cout << "Beginning HLS Func" << "\n";
    example_acc(w1, w2, alpha_transmit_line);
#endif

   // Print result r_sw and r_hw
   return 0;
}