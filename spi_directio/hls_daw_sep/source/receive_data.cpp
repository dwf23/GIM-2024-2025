#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include <iostream>
#include "GIM_comm.h"

// sclk, cs, mosi, miso is the spi part that goes across the boards
// data_out, data_in for communication of the module with the FPGAs
//NUM = number of numbers we're sending
pkt receive_data(packet_line &data_out, comm_line &alpha_tx) {
    
    #pragma HLS interface ap_hs port=alpha_tx
    #pragma HLS interface s_axilite port=return

    volatile pkt rx;
    volatile int ID = 0;
    volatile fixed_16 rx1;
    volatile fixed_16 rx2;
    volatile fixed_16[ARRAY_SIZE] data;
    
    while(true){
        //check to make sure we can store data
        if(!data_out.full()){

            ap_uint<BITS> bit_bin = 0;
            ap_uint<1> bit_read;

            for (int i = 0; i< BITS; i++){
                bit_read = alpha_tx.read();
                bit_bin = bit_bin | (bit_read << i);
            }

            fixed_16 rx1 = (fixed_16) bit_bin;
            data[0] = rx1;

            for (int i = 0; i< BITS; i++){
                bit_read = alpha_tx.read();
                bit_bin = bit_bin | (bit_read << i);
            }

            fixed_16 rx2 = (fixed_16) bit_bin;
            data[1] = rx2;
            rx.data = data;
            rx.ID = ID;
            ID++;
            //priority to get it to stream asap
            data_out.write(rx);
            
        }

        //for testing purposes
        if (ID > 0){
            return rx;
        }
        

    }

    return rx;



}

