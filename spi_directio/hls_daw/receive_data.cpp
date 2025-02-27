#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include <iostream>
#include "GIM_comm.h"

// sclk, cs, mosi, miso is the spi part that goes across the boards
// data_out, data_in for communication of the module with the FPGAs
//NUM = number of numbers we're sending
fixed_16 receive_data(dataline &data_in) {
    
    #pragma HLS interface ap_hs port=data_in
    

    ap_uint<BITS> bit_bin = 0;
    ap_uint<1> bit_read;

    for (int i = 0; i< BITS; i++){
        bit_read = data_in.read();
        bit_bin = bit_bin | (bit_read << i);
    }

    fixed_16 res = (fixed_16) bit_bin;
    return res;
}

