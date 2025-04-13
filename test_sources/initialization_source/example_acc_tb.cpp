#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "definitions.h"
#include "ap_int.h"
#include <iostream>
#include <ostream>
#include <unistd.h>
#include <csignal>
#include <atomic>
#include <limits.h>



int main()
{
    std::cout << "Starting Testbench" << "\n";
    axis<int, 0, 1, 1> result(0, 0, 0, 0);
    axis<int, 0, 1, 1> result2(0, 0, 0, 0);
    axis<int, 0, 1, 1> data_to_send(23, 5, 1, 1);
    axis<int, 0, 1, 1> data_to_send_2(19, 2, 1, 1);

// #ifdef HW_COSIM
    std::cout << "Beginning Send Data Thread" << "\n";
    packet_line out_stream;
    packet_line in_stream;
    bool received_flag = false;
    bool wrote_flag = false;
    volatile bool loop = 0;
    ap_uint<1> fifo_reset;
    volatile bool fifo_reset_busy = false;
    int received_val_1 = 0;
    int received_val_2 = 0;
    int interval = 10000;
    loop = true;
    bool initialized_1 = false;
    bool initialized_2 = false;

    std::thread example_acc_thread(example_acc, std::ref(out_stream), std::ref(wrote_flag), std::ref(loop), std::ref(in_stream), std::ref(received_flag), std::ref(received_val_1), std::ref(received_val_2), std::ref(interval), std::ref(initialized_1), std::ref(initialized_2));
    while(out_stream.empty());
    result = out_stream.read();
    std::cout << "Received first data" << std::endl;
    result.display();

    axis<int, 0, 1, 1> initialization_packet_1(7, 6, 1, 2);
    axis<int, 0, 1, 1> initialization_packet_2(5, 4, 1, 2);
    in_stream.write(initialization_packet_1);
    while(!initialized_1);
    while(!out_stream.empty()){ // flush out any remaining values from out_stream
        result = out_stream.read();
    }
    in_stream.write(initialization_packet_2);
    while(!initialized_2);


    while(out_stream.empty());
    result = out_stream.read();
    std::cout << "Received second data" << std::endl;
    result.display();

    while(out_stream.empty());
    result = out_stream.read();
    std::cout << "Received third data" << std::endl;
    result.display();

    while(in_stream.full());
    in_stream.write(data_to_send);
    while(in_stream.full());
    in_stream.write(data_to_send_2);

    result = out_stream.read();
    std::cout << "Received fourth data" << std::endl;
    result.display();

    std::cout << "Got data " << received_val_1 << " and " << received_val_2 << std::endl;
    
    example_acc_thread.join();




// #endif
   return 0;
}