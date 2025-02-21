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

void send_data(comm_line &alpha_transmit_line, fixed_16 data_out[ARRAY_SIZE]) {

    #pragma HLS interface ap_hs port=alpha_transmit_line

    ap_uint<16*ARRAY_SIZE> bitstream;
    bool bit;
    const int BITS = 16*ARRAY_SIZE;

    bitstream = convert_to_bitstream(data_out);
    std::cout << "Converted bitstream: " << bitstream << std::endl;

    for (int i = 0; i < BITS; i++){
        bit = (bitstream >> (BITS - 1 - i)) & 1;
        alpha_transmit_line.write(bit);
        std::cout << "Writing bit" << bit << std::endl;
    }
}

