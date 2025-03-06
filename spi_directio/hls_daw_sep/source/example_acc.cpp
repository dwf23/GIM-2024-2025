#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include <iostream>
#include <memory>
#include "GIM_comm.h"



pkt example_acc(packet_line &data_in, packet_line &data_out){
    // fixed_16 will be the
    // LSB first
    // for the purposes of signaling start needs to be passed in as true, but you won't see it in code
    pkt rx;
    pkt tmp;

    #pragma HLS INTERFACE mode=s_axilite port=return

    //If you need the data urgently do this
    rx = data_in.read();
    tmp = rx;
    tmp.data[0] = rx.data[0] + (fixed_16).375;
    tmp.data[1] = rx.data[1] * (fixed_16)-1.1;
    tmp.ID = 1;
    data_out.write(tmp);
    

    //If you don't do something like this
    //to make the program do other things while waiting
    //I would recommend making a FIFO struct check each cycle
    //if data and then immediately storing
    // for(int i=0; i<1000; i++){
    //     //don't pipeline this
    //     #pragma HLS PIPELINE II=0
    //     if(data_in.read_nb(rx)){
    //         //keep old data off rx immediately!!!
    //         tmp = rx;
    //         break;
    //     }
    //     else{
    //         counter++;
    //     }
    // }
    //alt you can just do a 
    // if(data_in.empty())
    //but this won't read anything
    //you would then do a rx = data_in.read()

    return rx;
    

}
