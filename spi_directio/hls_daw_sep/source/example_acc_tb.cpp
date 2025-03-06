#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "GIM_comm.h"
#include "ap_int.h"


pkt example_acc(packet_line &data_in, packet_line &data_out);

int main()
{
    std::cout << "Starting Testbench" << "\n";
    packet_line data_in;
    packet_line data_out;
    pkt tmp;
    pkt res;
    tmp.data[0]  = 3.1;
    tmp.data[1] = 2.2;
    tmp.ID = 0;
    int interval = 1000;


#ifdef HW_COSIM
   // Run the Vitis HLS block and pass pointer to r_hw to allow writing of variable
    std::cout << "Beginning HLS Func" << "\n";
    std::cout << "writing in" << "\n";
    data_in.write(tmp);
    for (int j = 0; j < interval; j++);  // Delay for the interval
    example_acc(data_in, data_out);
    res = data_out.read();
    std::cout << "Num1: " << (float) res.data[0] << std::endl;
    std::cout << "Num2: " << (float) res.data[1] << std::endl;
    return 0;
#endif

   // Print result r_sw and r_hw
   return 0;
}