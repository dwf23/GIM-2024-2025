#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "GIM_comm.h"
#include "ap_int.h"


pkt receive_data(packet_line &data_out, comm_line &alpha_tx);

int main()
{
    std::cout << "Starting Testbench" << "\n";
    packet_line data_out;
    comm_line alpha_tx;
    pkt tmp;


#ifdef HW_COSIM
   // Run the Vitis HLS block and pass pointer to r_hw to allow writing of variable
    std::cout << "Beginning HLS Func" << "\n";
    tmp = receive_data(data_out, alpha_tx);
    return 0;
#endif

   // Print result r_sw and r_hw
   return 0;
}