#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include <iostream>
#include "GIM_comm.h"

// sclk, cs, mosi, miso is the spi part that goes across the boards
// data_out, data_in for communication of the module with the FPGAs
//NUM = number of numbers we're sending
void send_data(miso &data_out, pkt &example_pkt) {

    #pragma HLS interface ap_hs port=data_out
    

    data_out.write(example_pkt.data);

}