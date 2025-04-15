#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "gim_model_controller.h"
#include "ap_int.h"
#include <iostream>
#include <unistd.h>
#include <csignal>
#include <atomic>

void convert_from_bitstream(ap_uint<16 * ARRAY_SIZE> bitstream, fixed_16 data[ARRAY_SIZE]) {
    for (int i = 0; i < ARRAY_SIZE; i++) {
        ap_uint<16> number = (bitstream >> (i * 16)) & 0xFFFF;
        data[i].range(15, 0) = number; // Properly assign the bits to the fixed-point value
        std::cout << "Converted fixed_16 value: " << data[i].to_float() << std::endl;
    }
}

int main()
{
     std::cout << "Starting Testbench" << "\n";
    
    volatile bool reset = 1;
    volatile bool loop = 1;
    float received_val_1 = 27.5;
    float received_val_2 = 8.3;

    // #ifdef HW_COSIM
        packet_line in_stream;
        comm_line alpha_tx;
        bool flag = false;
        bool send_sent_flag = false;
        ap_uint<32> bitstream;
        fixed_16 output_data[2];
        ap_uint<32> bitstream_example = 0x1111;
        fixed_16 data_example[2];
        convert_from_bitstream(bitstream_example, data_example);

        std::cout << "Starting thread" << std::endl;
        std::thread receive_thread(send_data, std::ref(in_stream), std::ref(flag), std::ref(loop), std::ref(received_val_1), std::ref(received_val_2), std::ref(alpha_tx), std::ref(send_sent_flag));
        
        axis<fixed_16, 0, 1, 1> myAxis(fixed_16(8.5332), fixed_16(8.5332), 0, 2);
        myAxis.display();

        in_stream.write(myAxis);
        for(int i = 0; i < 32; i++){
            while(!alpha_tx.valid());
            ap_uint<32> bit = alpha_tx.read();
            bitstream = bitstream | (bit << i);
        }

        convert_from_bitstream(bitstream, output_data);
        std::cout << "Received output " << output_data[0].to_float() << ", " << output_data[1].to_float() << std::endl;
        while(!send_sent_flag);

        std::cout << "Receive output" << std::endl;
        
        loop = 0;
        receive_thread.join();
        std::cout << "Received in testbench data 1: " << received_val_1 << " data 2: " << received_val_2 << std::endl;

        std::cout << "Running with loop false" << std::endl;

        send_data(in_stream, flag, loop, received_val_1, received_val_2, alpha_tx, send_sent_flag);

    
    //#endif
    return 0;
}