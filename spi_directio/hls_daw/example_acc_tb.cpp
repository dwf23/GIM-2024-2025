#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "GIM_comm.h"
#include "ap_int.h"


int example_acc(ap_uint<32> w1, ap_uint<32> w2, miso &data_out, bool start);

int main()
{
    std::cout << "Starting Testbench" << "\n";
    ap_uint<32> w1 = 10;
    ap_uint<32> w2 = 0;
    bool start = false;
    miso data_out;


#ifdef HW_COSIM
   // Run the Vitis HLS block and pass pointer to r_hw to allow writing of variable
    std::cout << "Beginning HLS Func" << "\n";
    start = true;
    example_acc(w1,w2, data_out, start);
#endif

   // Print result r_sw and r_hw
   return 0;
}