#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include <iostream>
#include "GIM_comm.h"



int example_acc(int w1, int w2){

    pkt example_pkt;
    miso data_out;

    #pragma HLS interface ap_hs port=data_out

    for (int i = 0; i< NUM_RUNS; i++) {
        w1 +=1;
        w2 +=2;
        std::cout << "Modify W1" << "\n";
        //id 0 --> w1
        example_pkt.data = w1;
        send_data(data_out, example_pkt);
        std::cout << "Modify W2 buffer" << "\n";
        //id 1 --> w2
        example_pkt.data = w2;
        send_data(data_out, example_pkt);
    }

    return 0;
    


}