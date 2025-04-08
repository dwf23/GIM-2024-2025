#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include <iostream>
#include "GIM_comm.h"
//#include <bitset>

// sclk, cs, mosi, miso is the spi part that goes across the boards
// data_in, data_in for communication of the module with the FPGAs
//NUM = number of numbers we're sending
void receive_data(comm_line &alpha_rx, volatile bool &flag, ap_uint<BITS>
&rx1, ap_uint<BITS> &rx2) {
    
    #pragma HLS interface ap_hs port=alpha_rx
    #pragma HLS INTERFACE mode=s_axilite port=flag
    #pragma HLS interface s_axilite port=return
    #pragma HLS interface s_axilite port=rx1
    #pragma HLS interface s_axilite port=rx2

    //initialize them to all high to check if we get inside the while loop at all
    rx1 = (ap_uint<BITS>) 0b1111111111111111;
    rx2 = (ap_uint<BITS>) 0b1111111111111111;
    
    while(flag){
        //check to make sure we can store data
        ap_uint<BITS> bit_bin = 0;
        ap_uint<BITS> bit_read;
        std::cout << "Receiving Data" << std::endl;
        for (int i = 0; i< BITS; i++){
            bit_read = alpha_rx.read();
            std::cout << "Read bit "<< i  << ": "<< bit_read << std::endl;
            bit_bin = bit_bin | (bit_read << i);
        }
        //std::cout << "First number in bits: " << std::bitset<16>(bit_bin) << std::endl;
        rx1 = bit_bin;
        //std::cout << "First number: " << (uint16_t) rx1 << std::endl;

        for (int i = 0; i< BITS; i++){
            bit_read = alpha_rx.read();
            std::cout << "Read bit " << i << ": " << bit_read << std::endl;
            bit_bin = bit_bin | (bit_read << i);
        }
        //std::cout << "Second number in bits: " << std::bitset<16>(bit_bin) << std::endl;    
        fixed_16 rx2 = (fixed_16) bit_bin;
        //std::cout << "Second number: " << (uint16_t) rx2 << std::endl;


    }

}

