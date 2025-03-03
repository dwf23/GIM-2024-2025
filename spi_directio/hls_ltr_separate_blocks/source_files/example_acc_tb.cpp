#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "GIM_comm.h"
#include "ap_int.h"


int main()
{
    std::cout << "Starting Testbench" << "\n";
    fixed_16 out_w1 = 2.5;
    fixed_16 out_w2 = 3;
    fixed_16 in_w1, in_w2;
    hls::stream<pkt> data_out;
    hls::stream<pkt> data_in;
    int interval = 100;
    bool expecting_input = false;

#ifdef HW_COSIM
   // Run the Vitis HLS block and pass pointer to r_hw to allow writing of variable
    std::cout << "Beginning HLS Func" << "\n";
    example_acc(out_w1, out_w2, in_w1, in_w2, data_out, data_in, interval, expecting_input);
#endif

   // Print result r_sw and r_hw
   return 0;
}