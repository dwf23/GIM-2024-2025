#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include <iostream>
#include <memory>
#include "GIM_comm.h"



float example_acc(dataline &data_in){
    // fixed_16 will be the
    // LSB first
    // for the purposes of signaling start needs to be passed in as true, but you won't see it in code
    fixed_16 tmp;
    int rx = 0;
    bool start = true;

    #pragma HLS INTERFACE ap_hs port=data_in
    #pragma HLS INTERFACE mode=ap_ctrl_hs port=return
    #pragma HLS INTERFACE mode=s_axilite port=return

    while (rx<10){
        tmp = data_in.read();
        std::cout << "Data Received: " << tmp.range(15,0) << std::endl;
        rx ++;
    }


    return 0;
    

}
