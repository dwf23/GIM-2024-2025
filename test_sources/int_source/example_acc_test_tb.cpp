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
    packet_line out_stream;
    packet_line in_stream;
    bool wrote_flag = 0;
    bool received_flag = 0;
    int received_val_1 = 0;
    int received_val_2 = 0;
    int interval = 1000;
    

// #ifdef HW_COSIM

    std::thread example_acc_thread(example_acc_test, std::ref(out_stream), std::ref(wrote_flag), std::ref(in_stream), std::ref(received_flag), std::ref(received_val_1), std::ref(received_val_2), std::ref(interval));
    for (int i = 0; i < 16; i++){
        while(out_stream.empty());
        result = out_stream.read();
        result.display();
        data_to_send.data[0] = result.data[0];
        data_to_send.data[1] = result.data[1];
        while(in_stream.full());
        in_stream.write(data_to_send);
    }
    example_acc_thread.join();




// #endif
   return 0;
}