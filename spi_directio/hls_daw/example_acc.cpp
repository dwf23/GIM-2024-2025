#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include <iostream>
#include <memory>
#include "GIM_comm.h"


int example_acc(int w1, int w2, miso &data_out, bool start){

    pkt example_pkt;

    #pragma HLS INTERFACE ap_hs port=data_out
    #pragma HLS INTERFACE mode=s_axilite port=w1
    #pragma HLS INTERFACE mode=s_axilite port=w2
    #pragma HLS INTERFACE ap_none port=start
    #pragma HLS INTERFACE mode=ap_ctrl_hs port=return

    for (int i = 0; i< NUM_RUNS; i++) {
        #pragma HLS PIPELINE II=50
        w1 +=1;
        w2 +=2;
        std::cout << "Modify W1: " << w1 <<  "\n";
        //id 0 --> w1
        example_pkt.data = w1;
        data_out.write(example_pkt.data);
        std::cout << "Modify W2: " << w2 << "\n";
        //id 1 --> w2
        example_pkt.data = w2;
        data_out.write(example_pkt.data);
    }

    return 0;
    


}