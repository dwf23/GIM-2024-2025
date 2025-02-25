#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include <iostream>
#include <memory>
#include "GIM_comm.h"



void example_acc(fixed_16 w1, fixed_16 w2, hls::stream<pkt> &data_out, hls::stream<pkt> &data_in, volatile bool flag){

    #pragma HLS INTERFACE mode=s_axilite port=w1
    #pragma HLS INTERFACE mode=s_axilite port=w2
    #pragma HLS INTERFACE mode=s_axilite port=return

    fixed_16 example_data[ARRAY_SIZE] = {w1, w2};
    pkt example_packet;
    pkt read_packet;
    example_packet.ID = 0; 
    std::copy(example_data, example_data + ARRAY_SIZE, example_packet.data_out);

    if(data_out.write_nb(example_packet)){
        std::cout << "Wrote data" << std::endl;
    }
    else{
        std::cout << "Failed to write data" << std::endl;
    }
    data_out.write_nb()

    while(data_in.read_nb() | flag);

    read_packet.data_out


}