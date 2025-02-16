#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "GIM_comm.h"



int main()
{
    std::cout << "Starting Testbench" << "\n";
    int w1 = 10;
    int w2 = 0;


#ifdef HW_COSIM
   // Run the Vitis HLS block and pass pointer to r_hw to allow writing of variable
    std::cout << "Beginning HLS Func" << "\n";
    example_acc(w1,w2);
#endif

   // Print result r_sw and r_hw
   return 0;
}