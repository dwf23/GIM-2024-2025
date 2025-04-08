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
    fixed_16 rx1 = 0;
    fixed_16 rx2 = 0;
    volatile bool flag = true;
    int interval = 100;
    pkt data_received;


#ifdef HW_COSIM
   // Run the Vitis HLS block and pass pointer to r_hw to allow writing of variable
    std::cout << "Beginning HLS Func" << std::endl;;
    std::thread receive_data_thread(receive_data, std::ref(data_in), std::ref(alpha_rx), std::ref(flag),
    std::ref(rx1), std::ref(rx2));
    for (int i = 0; i < 64; i++){
        for (int j = 0; j < interval; j++);  // Delay for the interval
        alpha_rx.write(i % 2);
    }
    data_in.read(data_received);
    std::cout << "Received values " <<  data_received.data[0] << " and " << data_received.data[1] << std::endl;
    flag = false;
    receive_data_thread.join();

    for (int j = 0; j < interval; j++);
    receive_data(data_in, alpha_rx, flag, rx1, rx2);
    return 0;



#endif

   return 0;
}