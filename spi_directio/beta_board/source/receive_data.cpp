#include "definitions.h"
#include <bitset>


void convert_from_bitstream(ap_int<32 * ARRAY_SIZE> bitstream, int data[ARRAY_SIZE]) {
    for (int i = 0; i < ARRAY_SIZE; i++) {
        ap_int<32> number = (bitstream >> (i * 32)) & 0xFFFF;
        data[i] = number.range(31,0); // Properly assign the bits to the fixed-point value
        //std::cout << "Converted Data value: " << std::bitset<32>(data[i]) << std::endl;
    }
}

 void receive_data(packet_line& rx_stream, bool &flag, volatile bool &loop, comm_line &alpha_rx) {
    #pragma HLS INTERFACE mode=s_axilite port=flag
    // #pragma HLS INTERFACE mode=s_axilite port=data_1
    // #pragma HLS INTERFACE mode=s_axilite port=data_2
    // #pragma HLS INTERFACE mode=s_axilite port=destination
    #pragma HLS INTERFACE mode=s_axilite port=loop
    #pragma HLS interface s_axilite port=return
    #pragma HLS INTERFACE axis port=rx_stream

    // axis<fixed_16, 0, 1, 1> packet(fixed_16(data_1), fixed_16(data_2), 1, destination);

    while(loop){
        if(alpha_rx.valid()){
            ap_uint<32*ARRAY_SIZE> bit_bin = 0;
            int output[2];
            ap_uint<32*ARRAY_SIZE> bit_read;
            std::cout << "Receiving Data" << std::endl;
            for (int i = 0; i< 32*ARRAY_SIZE; i++){
                while(!alpha_rx.valid());
                bit_read = alpha_rx.read();
                bit_bin = bit_bin | (bit_read << i);
            }
            //std::cout << "Received data: " << std::bitset<64> (bit_bin) << std::endl;
            convert_from_bitstream(bit_bin, output);
            axis<int, 0, 1, 1> packet(output[0], output[1], 1, 1); //id 1 dest 1
            std::cout << "packet received from alpha_rx" << std::endl;
            packet.display();

            while(rx_stream.full()); // wait until the stream is not full
            rx_stream.write(packet);
            std::cout << "Wrote data" << std::endl;
            flag = true;              
            
        }

    }

 }

 