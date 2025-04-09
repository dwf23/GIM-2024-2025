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




int main()
{
    std::cout << "Starting Testbench" << "\n";
    // pkt example_packet;
    // pkt result;
    // fixed_16 w1 = 1.38;
    // fixed_16 w2 = 3.40;
    // example_packet.ID = 0;
    // example_packet.data[0] = w1;
    // example_packet.data[1] = w2;
    axis<fixed_16, 0, 1, 1> result(fixed_16(0), fixed_16(0), 0, 0);
    axis<fixed_16, 0, 1, 1> data_to_send(fixed_16(27.5), fixed_16(0.0), 1, 1);

// #ifdef HW_COSIM
    std::cout << "Beginning Send Data Thread" << "\n";
    packet_line out_stream;
    packet_line in_stream;
    bool received_flag = false;
    bool wrote_flag = false;
    volatile bool loop = 0;
    ap_uint<1> fifo_reset;
    volatile bool fifo_reset_busy = false;
    float received_val_1 = 0;
    float received_val_2 = 0;
    // example_acc(out_stream, wrote_flag, loop, in_stream, received_flag, received_val_1, received_val_2);
    // while(!wrote_flag);
    // result = out_stream.read();
    // std::cout << "Received Data" << std::endl;
    // result.display();
    // std::cout << "Transmit test complete" << "\n";

    // wrote_flag = false;
    loop = true;

    std::thread example_acc_thread(example_acc, std::ref(out_stream), std::ref(wrote_flag), std::ref(loop), std::ref(in_stream), std::ref(received_flag), std::ref(received_val_1), std::ref(received_val_2));

    in_stream.write(data_to_send);
    while(!wrote_flag);
    result = out_stream.read();
    std::cout << "Received Data" << std::endl;
    result.display();
    while(!received_flag);
    loop = false;
    std::cout << "Got data " << received_val_1 << " and " << received_val_2 << std::endl;
    example_acc_thread.join();




// #endif
   return 0;
}