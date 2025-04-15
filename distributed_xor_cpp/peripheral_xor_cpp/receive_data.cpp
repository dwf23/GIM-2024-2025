#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include <iostream>
#include "gim_model_controller.h"

// sclk, cs, mosi, miso is the spi part that goes across the boards
// data_in, data_in for communication of the module with the FPGAs
//NUM = number of numbers we're sending
pkt receive_data(packet_line &data_in, comm_line &alpha_rx, volatile bool &flag) {
    
    #pragma HLS interface ap_hs port=alpha_rx
    #pragma HLS INTERFACE mode=s_axilite port=flag
    #pragma HLS interface s_axilite port=return

    pkt rx;
    int ID = 0;
    fixed_16 rx1;
    fixed_16 rx2;
    
    
    while(flag){
        //check to make sure we can store data
        if(!data_in.full() & alpha_rx.valid()){

            ap_uint<BITS> bit_bin = 0;
            ap_uint<BITS> bit_read;
            std::cout << "Receiving Data" << std::endl;
            for (int i = 0; i< BITS; i++){
                while(!alpha_rx.valid());
                bit_read = alpha_rx.read();
                std::cout << "Read bit "<< i  << ": "<< bit_read << std::endl;
                bit_bin = bit_bin | (bit_read << i);
            }

            fixed_16 rx1 = (fixed_16) bit_bin;
            std::cout << std::dec << "First number: " << rx1.to_float() << std::endl;
            rx.data[0] = rx1;

            for (int i = 0; i< BITS; i++){
                while(!alpha_rx.valid());
                bit_read = alpha_rx.read();
                std::cout << "Read bit " << i << ": " << bit_read << std::endl;
                bit_bin = bit_bin | (bit_read << i);
            }
            
            fixed_16 rx2 = (fixed_16) bit_bin;
            std::cout << "Second number: " << rx2.to_float() << std::endl;
            rx.data[1] = rx2;
            rx.ID = ID;
            ID++;
            //priority to get it to stream asap
            data_in.write(rx);
            
        }

        //for testing purposes
        if (ID > 0){
            return rx;
        }
        

    }

    return rx;



}