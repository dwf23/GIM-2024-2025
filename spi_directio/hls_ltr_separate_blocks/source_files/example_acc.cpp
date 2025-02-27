#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include <iostream>
#include <memory>
#include "GIM_comm.h"



void example_acc(fixed_16 out_w1, fixed_16 out_w2, fixed_16 in_w1, fixed_16 in_w2, hls::stream<pkt> &data_out, hls::stream<pkt> &data_in, int interval){

    #pragma HLS INTERFACE mode=s_axilite port=out_w1
    #pragma HLS INTERFACE mode=s_axilite port=out_w2
    #pragma HLS INTERFACE mode=s_axilite port=in_w1
    #pragma HLS INTERFACE mode=s_axilite port=in_w2
    #pragma HLS INTERFACE mode=s_axilite port=return

    fixed_16 example_data[ARRAY_SIZE] = {out_w1, out_w2};
    pkt example_packet;
    pkt read_packet;

    example_packet.ID = 0; 
    std::copy(example_data, example_data + ARRAY_SIZE, example_packet.data);

    if(data_out.write_nb(example_packet)){
        std::cout << "Wrote data " << out_w1.to_float() << "and " << out_w2.to_float() << std::endl;
    }
    else{
        std::cout << "Failed to write data" << std::endl;
    }

    // Do we need a stall here? To wait for the data_in to be complete?
    for (int j = 0; j < interval*16*ARRAY_SIZE*2; j++);  // Delay for the interval

    if(data_in.read_nb(read_packet)){
        in_w1 = read_packet.data[0];
        in_w2 = read_packet.data[1];
        std::cout << "Read data" << in_w1.to_float() << "and" << in_w2.to_float() << std::endl;
    } else {
        std::cout << "Failed to read data" << std::endl;
    }


}