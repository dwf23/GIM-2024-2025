#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "definitions.h"
#include "ap_int.h"
#include <iostream>
#include <unistd.h>
#include <csignal>
#include <atomic>

ap_uint<16 * ARRAY_SIZE> convert_to_bitstream(fixed_16 data[ARRAY_SIZE]) {
    ap_uint<16 * ARRAY_SIZE> bitstream = 0;


    for (int i = 0; i < ARRAY_SIZE; i++) {        
        ap_uint<16 * ARRAY_SIZE> number = *reinterpret_cast<ap_uint<16>*>(&data[i]);
        std::cout << "Converted number: " << std::hex << number << std::endl;;
        bitstream = (number << (i*16)) | bitstream;  // Shift and concatenate
    }

    return bitstream;
}

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
    //axis<fixed_16, 0, 1, 1> example_packet(fixed_16(2.5), fixed_16(1.87), );
    axis<fixed_16, 0, 1, 1> result(fixed_16(0), fixed_16(0), 0, 0);

// #ifdef HW_COSIM
    std::cout << "Beginning Send Data Thread" << "\n";
    packet_line out_stream;
    comm_line alpha_rx;
    bool flag = false;
    volatile bool loop = true;
    float data_1 = 3.7;
    float data_2 = 4.5;
    int destination = 1;

    std::thread receive_thread(receive_data, std::ref(out_stream), std::ref(flag), std::ref(loop), std::ref(alpha_rx));
    fixed_16 data_to_send[2];
    data_to_send[0] = 2.8;
    data_to_send[1] = 3.75;

    std::cout << "Sending numbers: " << data_to_send[0] << " and " << data_to_send[1] << std::endl;
    ap_uint<32> binary_data = convert_to_bitstream(data_to_send);
    std::cout << "Sending data: " << binary_data << std::endl;

    for (int i = 0; i < 32; i++){
        while(!alpha_rx.ready());
        alpha_rx.write(binary_data[i]);
    }
    while(!flag);

    
    loop = false;
    result = out_stream.read();
    receive_thread.join();
    std::cout << "Received Data" << std::endl;
    result.display();
    std::cout << "Receive data test complete" << "\n";

    std::cout << "Running receive_data with false loop" << "\n";

    receive_data(out_stream, flag, loop, alpha_rx);
    return 0;

// #endif
    return 0;
}