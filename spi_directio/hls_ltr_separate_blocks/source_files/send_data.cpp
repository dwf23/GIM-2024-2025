#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include <iostream>
#include "GIM_comm.h"



ap_uint<16 * ARRAY_SIZE> convert_to_bitstream(fixed_16 data[ARRAY_SIZE]) {
    ap_uint<16 * ARRAY_SIZE> bitstream = 0;


    for (int i = 0; i < ARRAY_SIZE; i++) {
        ap_uint<16> number = *reinterpret_cast<ap_uint<16>*>(&data[i]);
        std::cout << "Converted number: " << number << std::endl;;
        bitstream = (bitstream << 16) | number;  // Shift and concatenate
    }

    return bitstream;
}

void send_data(comm_line &alpha_transmit_line, hls::stream<pkt> &data_out, volatile bool &flag) {

    #pragma HLS INTERFACE ap_hs port=alpha_transmit_line
    #pragma HLS INTERFACE mode=s_axilite port = return

    ap_uint<16*ARRAY_SIZE> bitstream;
    bool bit;
    const int BITS = 16*ARRAY_SIZE;
    pkt input_packet;
    int input_packet_id;
    fixed_16 input_packet_data[ARRAY_SIZE];

    while(flag){
        if(data_out.read_nb(input_packet)){
            std::copy(input_packet.data_out, input_packet.data_out + ARRAY_SIZE, input_packet_data);
            // std::cout << "Input packet data received by transmitter" << std::endl;
            // std::cout << "First value: " << input_packet_data[0] << std::endl;
            // std::cout << "Second value: " << input_packet_data[1] << std::endl;
            input_packet_id = input_packet.ID;
            bitstream = convert_to_bitstream(input_packet_data);
            std::cout << "Converted bitstream: " << bitstream << std::endl;
            alpha_transmit_line.write(input_packet_id);
            std::cout << "sent ID: " << input_packet_id << std::endl;
            for (int i = 0; i < BITS; i++){
                bit = (bitstream >> (BITS - 1 - i)) & 1;
                alpha_transmit_line.write(bit);
                std::cout << "Writing bit" << bit << std::endl;
            }
        }
    }
}

