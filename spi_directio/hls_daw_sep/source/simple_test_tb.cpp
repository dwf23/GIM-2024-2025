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
    //std::copy(example_data, example_data + ARRAY_SIZE, example_packet.data);
    test_line alpha_tx;
    volatile bool flag = true;
    int interval = 1; // Interval is the amount of milliseconds in between sending every bit

// #ifdef HW_COSIM
    std::cout << "Beginning Send Data Thread" << "\n";
    std::thread send_data_thread(simple_test, std::ref(alpha_tx), std::ref(flag));
    std::this_thread::sleep_for(std::chrono::milliseconds(interval * 16 * ARRAY_SIZE *2));
    flag = false;
    send_data_thread.join();

   
    std::cout << "Beginning Send Data with flag False" << "\n";
    simple_test(alpha_tx, flag);
    //for (int j = 0; j < interval; j++);  // Delay for the interval
    flag = false;


// #endif
   return 0;
}