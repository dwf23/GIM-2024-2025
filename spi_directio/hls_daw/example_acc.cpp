#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include <iostream>
#include <memory>
#include "GIM_comm.h"



int example_acc(dataline &data_in, bool start){
    // fixed_16 will be the
    // LSB first
    // for the purposes of signaling start needs to be passed in as true, but you won't see it in code
    fixed_16 tmp;
    int rx = 0;

    #pragma HLS INTERFACE ap_hs port=data_in
    #pragma HLS INTERFACE mode=s_axilite port=start
    #pragma HLS INTERFACE mode=ap_ctrl_hs port=return
    #pragma HLS INTERFACE mode=s_axilite port=return

    do {
        //need to serialize this data
        //need to talk to Lindsey to figure out protocal for this
        //id 0 --> w1
        tmp = data_in.read();
        std::cout << "Data Received: " << tmp.range(15,0) << std::endl;
        rx ++;
        if (rx > 10){
            start = false;
        }
    } while(start);

    return 0;
    

}
