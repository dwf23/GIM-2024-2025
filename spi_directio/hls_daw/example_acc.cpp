#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include <iostream>
#include "GIM_comm.h"


int example_acc(int w1, int w2, miso &data_out){

    pkt example_pkt;

    #pragma HLS interface ap_hs port=data_out

    for (int i = 0; i< NUM_RUNS; i++) {
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