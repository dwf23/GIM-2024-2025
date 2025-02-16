#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include <iostream>
#include "GIM_comm.h"

// sclk, cs, mosi, miso is the spi part that goes across the boards
// data_out, data_in for communication of the module with the FPGAs
//NUM = number of numbers we're sending
void send_data(miso &data_out, hls::stream<pkt>&out) {
    
    #pragma HLS interface ap_hs port=data_out
    #pragma HLS interface mode=axis port=out

    while(!out.empty()){
        pkt tmp = out.read();
        std::cout << "Sending: " << tmp.data << "\n";
        data_out.write(tmp.data);
    }

}