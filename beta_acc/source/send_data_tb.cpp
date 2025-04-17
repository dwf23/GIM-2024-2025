#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "definitions.h"
#include "ap_int.h"
#include <unistd.h>
#include <csignal>
#include <atomic>
#include <bitset>

void convert_from_bitstream(ap_int<16 * ARRAY_SIZE> bitstream, fixed_16 data[ARRAY_SIZE]) {
    for (int i = 0; i < ARRAY_SIZE; i++) {
        ap_int<16> number = (bitstream >> (i * 16)) & 0xFFFF;
        data[i].range(15,0) = number; // Properly assign the bits to the fixed-point value
        std::cout << "Converted Data Number: " << data[i].to_float() << std::endl;
    }
}

int main()
{
     std::cout << "Starting Testbench" << "\n";
    
    volatile bool reset = 1;
    volatile bool loop = 1;
    fixed_16 received_val_1 = 27;
    fixed_16 received_val_2 = 8;

    // #ifdef HW_COSIM
        packet_line tx_stream;
        comm_line alpha_tx;
        bool flag = false;
        bool send_sent_flag = false;
        ap_int<32> bitstream;
        fixed_16 output_data[2];
        ap_int<32> bitstream_example = 0x1111;
        std::cout << "Not Binary: " << bitstream_example << std::endl;
        std::cout << "Bitstream Example: " << std::bitset<32> (bitstream_example) << std::endl;
        fixed_16 data_example[2];
        convert_from_bitstream(bitstream_example, data_example);

        std::cout << "Starting thread" << std::endl;
        std::thread receive_thread(send_data, std::ref(tx_stream), std::ref(flag), std::ref(loop), std::ref(received_val_1),
         std::ref(received_val_2), std::ref(alpha_tx), std::ref(send_sent_flag));
        
        axis<fixed_16, 0, 1, 1> myAxis(fixed_16(5), fixed_16(2), 0, 2);
        myAxis.display();

        tx_stream.write(myAxis);
        for(int i = 0; i < 32; i++){
            while(!alpha_tx.valid());
            ap_int<32> bit = alpha_tx.read();
            bitstream = bitstream | (bit << i);
        }

        convert_from_bitstream(bitstream, output_data);
        std::cout << "Received output " << output_data[0] << ", " << output_data[1] << std::endl;
        while(!send_sent_flag);

        std::cout << "Receive output" << std::endl;
        
        loop = 0;
        receive_thread.join();
        std::cout << "Received in testbench data 1: " << received_val_1 << " data 2: " << received_val_2 << std::endl;

        std::cout << "Running with loop false" << std::endl;

        send_data(tx_stream, flag, loop, received_val_1, received_val_2, alpha_tx, send_sent_flag);

    
    //#endif
    return 0;
}