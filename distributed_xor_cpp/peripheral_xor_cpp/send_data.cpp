#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include <iostream>
#include "gim_model_controller.h"



ap_uint<16 * ARRAY_SIZE> convert_to_bitstream(fixed_16 data[ARRAY_SIZE]) {
    ap_uint<16 * ARRAY_SIZE> bitstream = 0;


    for (int i = 0; i < ARRAY_SIZE; i++) {        
        ap_uint<16 * ARRAY_SIZE> number = *reinterpret_cast<ap_uint<16>*>(&data[i]);
        std::cout << "Converted number: " << std::hex << number << std::endl;;
        bitstream = (number << (i*16)) | bitstream;  // Shift and concatenate
    }

    return bitstream;
}

void send_data(comm_line &alpha_tx, packet_line &data_out, volatile bool &flag, int interval) {
    /*
    alpha_tx is the line between transmitters and receivers on which the data flows. comm_line is the type ap_hs
    data_out is the data given to the transmitter to send 
    Interval is the time in between sending each bit: we will use this function to tune this interval for maximum efficiency without dropping data
    */

    #pragma HLS INTERFACE ap_hs port=alpha_tx
    #pragma HLS INTERFACE mode=s_axilite port = return
    #pragma HLS INTERFACE mode=s_axilite port=flag
    #pragma HLS INTERFACE mode=s_axilite port=interval

    ap_uint<16*ARRAY_SIZE> bitstream;
    bool bit;
    const int BITS = 16*ARRAY_SIZE;
    pkt input_packet;
    int input_packet_id;
    fixed_16 input_packet_data[ARRAY_SIZE];

    while(flag){
        if(data_out.read_nb(input_packet)){
            // std::copy(input_packet.data, input_packet.data + ARRAY_SIZE, input_packet_data);
            input_packet.data[0] = input_packet_data[0];
            input_packet.data[1] = input_packet_data[1];
            input_packet_id = input_packet.ID;
            bitstream = convert_to_bitstream(input_packet_data);
            std::cout << "Converted bitstream: " << bitstream << std::endl;
            alpha_tx.write(input_packet_id);
            std::cout << "sent ID: " << input_packet_id << std::endl;
            for (int i = 0; i < BITS; i++){
                for (int j = 0; j < interval; j++);  // Delay for the interval
                bit = (bitstream >> i) & 1;
                alpha_tx.write(bit);
                std::cout << "Writing bit " << std::dec << i << ": " << bit << std::endl;
            }
        }
    }
}
