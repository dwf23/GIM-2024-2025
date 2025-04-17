#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include "hls_print.h"
#include <iostream>
#include "GIM_comm.h"


// sclk, cs, mosi, miso is the spi part that goes across the boards
// data_out, data_in for communication of the module with the FPGAs
//NUM = number of numbers we're sending
void recv_data(mosi &data_in, hls::stream<pkt>&in) {
    
    #pragma HLS interface ap_hs port=data_out
    #pragma HLS interface mode=axis port=out

    while(true){
        while(!in.full()){
            pkt tmp;
            int data = data_in.read();
            tmp.data = data;
            in.write(tmp);
        }
    }

}