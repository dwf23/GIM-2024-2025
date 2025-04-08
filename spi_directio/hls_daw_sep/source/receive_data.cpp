#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include <iostream>
#include "GIM_comm.h"
#include <bitset>

// sclk, cs, mosi, miso is the spi part that goes across the boards
// data_in, data_in for communication of the module with the FPGAs
//NUM = number of numbers we're sending
pkt receive_data(packet_line &data_in, comm_line &alpha_rx, volatile bool &flag, volatile fixed_16
rx1, volatile fixed_16 rx2) {
    
    #pragma HLS interface ap_hs port=alpha_rx
    #pragma HLS INTERFACE mode=s_axilite port=flag
    #pragma HLS interface s_axilite port=return
    #pragma HLS interface s_axilite port=rx1
    #pragma HLS interface s_axilite port=rx2
    #pragma HLS INTERFACE axis port=data_in

    pkt rx;
    
    
    while(flag){
        //check to make sure we can store data
        if(!data_in.full()){ //checks to see whether FIFO is full
            ap_uint<BITS> bit_bin = 0;
            ap_uint<BITS> bit_read;
            std::cout << "Receiving Data" << std::endl;
            for (int i = 0; i< BITS; i++){
                bit_read = alpha_rx.read();
                std::cout << "Read bit "<< i  << ": "<< bit_read << std::endl;
                bit_bin = bit_bin | (bit_read << i);
            }

            fixed_16 rx1 = (fixed_16) bit_bin;
            std::cout << std::dec << "First number: " <<(float)rx1 << std::endl;
            rx.data[0] = rx1;

            for (int i = 0; i< BITS; i++){
                bit_read = alpha_rx.read();
                std::cout << "Read bit " << i << ": " << bit_read << std::endl;
                bit_bin = bit_bin | (bit_read << i);
            }
            
            fixed_16 rx2 = (fixed_16) bit_bin;
            std::cout << "Second number: " << rx2.to_float() << std::endl;
            rx.data[1] = rx2;
            //priority to get it to stream asap
            data_in.write(rx);
            
        }
        

    }

    return rx;



}

