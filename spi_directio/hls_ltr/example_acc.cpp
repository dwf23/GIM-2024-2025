#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include <iostream>
#include <memory>
#include "GIM_comm.h"



void example_acc(fixed_16 w1, fixed_16 w2, comm_line &alpha_transmit_line){

    #pragma HLS INTERFACE ap_hs port=alpha_transmit_line
    #pragma HLS INTERFACE mode=s_axilite port=w1
    #pragma HLS INTERFACE mode=s_axilite port=w2
    #pragma HLS INTERFACE mode=s_axilite port=return

    fixed_16 data_out[ARRAY_SIZE] = {w1, w2};

    send_data(alpha_transmit_line, data_out);
    

}