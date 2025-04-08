#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include <iostream>
#include <memory>
#include "GIM_comm.h"



acc_ret example_acc(packet_line &data_in, packet_line &data_out, int &debug){
    // fixed_16 will be the
    // LSB first
    // for the purposes of signaling start needs to be passed in as true, but you won't see it in code
    pkt rx;
    pkt tmp;
    acc_ret ret;
    int j = 0;

    #pragma HLS INTERFACE mode=s_axilite port=return
    #pragma HLS INTERFACE mode=s_axilite port=debug
    #pragma HLS INTERFACE axis port=data_in
    #pragma HLS INTERFACE axis port=data_out
    #pragma HLS pipeline II=2

    std::cout << "Start" << std::endl;

    //reading two numbers
    for(int i = 0; i<2; i++){
        debug = 0;
        rx = data_in.read(); //blocking read from stream
        debug = 1;
        tmp = rx;
        ret.data[j] = rx.data[0];
        j++;
        ret.data[j] = rx.data[1];
        j++;
        tmp.data[0] = rx.data[0] + (fixed_16).375;
        tmp.data[1] = rx.data[1] * (fixed_16)-1.1;
        debug = 2;
        data_out.write(tmp); //blocking write 

    }
    return ret;
    

}
