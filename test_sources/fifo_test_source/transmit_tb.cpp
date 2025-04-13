#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "definitions.h"
#include "ap_int.h"
#include <iostream>
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
    axis<fixed_16, 0, 0, 0> example_packet(fixed_16(2.5), fixed_16(1.87));
    axis<fixed_16, 0, 0, 0> result(fixed_16(0), fixed_16(0));

// #ifdef HW_COSIM
    std::cout << "Beginning Send Data Thread" << "\n";
    packet_line out_stream;
    bool flag = false;
    ap_uint<1> fifo_reset;
    volatile bool fifo_reset_busy = false;
    transmit(out_stream, flag, example_packet);
    while(!flag);
    result = out_stream.read();
    std::cout << "Received Data" << std::endl;
    result.display();
    std::cout << "Transmit test complete" << "\n";

// #endif
   return 0;
}