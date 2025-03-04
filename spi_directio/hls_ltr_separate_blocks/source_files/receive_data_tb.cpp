#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "GIM_comm.h"
#include "ap_int.h"



int main()
{
    std::cout << "Starting Testbench" << std::endl;;
    packet_line data_in;
    comm_line alpha_rx;
    pkt tmp;
    volatile bool flag = true;
    int interval = 100;
    pkt data_received;


#ifdef HW_COSIM
   // Run the Vitis HLS block and pass pointer to r_hw to allow writing of variable
    std::cout << "Beginning HLS Func" << std::endl;;
    std::thread receive_data_thread(receive_data, std::ref(data_in), std::ref(alpha_rx), std::ref(flag));
    for (int i = 0; i < 64; i++){
        for (int j = 0; j < interval; j++);  // Delay for the interval
        alpha_rx.write(i % 2);
    }
    data_in.read(data_received);
    std::cout << "Received values " <<  data_received.data[0] << " and " << data_received.data[1] << std::endl;
    flag = false;
    receive_data_thread.join();

    flag = false;
    tmp = receive_data(data_in, alpha_rx, flag);
    

#endif

   return 0;
}