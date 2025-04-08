#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "GIM_comm.h"
#include "ap_int.h"



int main()
{
    std::cout << "Starting Testbench" << "\n";
    packet_line data_in;
    packet_line data_out;
    pkt tmp;
    acc_ret res;
    tmp.data[0]  = 3.1;
    tmp.data[1] = 2.2;
    int interval = 1000;
    int debug = 0;


#ifdef HW_COSIM
   // Run the Vitis HLS block and pass pointer to r_hw to allow writing of variable
    std::cout << "Beginning HLS Func" << "\n";
    std::cout << "writing in" << "\n";
    data_in.write(tmp);
    for (int j = 0; j < interval; j++);  // Delay for the interval
    data_in.write(tmp);
    for (int j = 0; j < interval; j++);
    res = example_acc(data_in, data_out, debug);
    data_out.read(tmp);
    std::cout << "First Packet" <<std::endl;
    std::cout << "Num1: " << (float) tmp.data[0] << std::endl;
    std::cout << "Num2: " << (float) tmp.data[1] << std::endl;
    std::cout << "Second Packet" <<std::endl;
    std::cout << "Num1: " << (float) tmp.data[0] << std::endl;
    std::cout << "Num2: " << (float) tmp.data[1] << std::endl;
    std::cout << "RETURN" << std::endl;
    std::cout << "Num1: " << (float) res.data[0] << std::endl;
    std::cout << "Num2: " << (float) res.data[1] << std::endl;
    std::cout << "Num3: " << (float) res.data[2] << std::endl;
    std::cout << "Num4: " << (float) res.data[3] << std::endl; 
    return 0;
#endif

   // Print result r_sw and r_hw
   return 0;
}