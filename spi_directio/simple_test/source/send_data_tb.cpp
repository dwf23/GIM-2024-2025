#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "GIM_comm.h"
#include "ap_int.h"
#include <iostream>
#include <unistd.h>
#include <csignal>
#include <atomic>

int main()
{
    std::cout << "Starting Testbench" << "\n";
    fixed_16 w1 = 2.8;
    fixed_16 w2 = 4;
    fixed_16 example_data[ARRAY_SIZE] = {w1, w2};
    pkt example_packet;
    example_packet.data[0] = w1;
    example_packet.data[1] = w2;
    //std::copy(example_data, example_data + ARRAY_SIZE, example_packet.data);
    packet_line data_out;
    packet_line data_in;
    comm_line alpha_tx;
    volatile bool flag = true;
    int interval = 10; // Interval is the amount of milliseconds in between sending every bit
    int debug = 0;

// #ifdef HW_COSIM
    std::cout << "Beginning Send Data Thread" << "\n";
    std::thread send_data_thread(send_data, std::ref(alpha_tx), std::ref(data_out), std::ref(flag), std::ref(interval),
    std::ref(debug));
    data_out.write(example_packet);
    std::this_thread::sleep_for(std::chrono::milliseconds(interval * 16 * ARRAY_SIZE *2));
    flag = false;
    send_data_thread.join();

   
    std::cout << "Beginning Send Data with flag False" << "\n";
    send_data(alpha_tx, data_out, flag, interval, debug);
    return 0;


// #endif
   return 0;
}