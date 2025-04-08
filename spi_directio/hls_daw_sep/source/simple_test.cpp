#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include <iostream>
#include "GIM_comm.h"


void simple_test(test_line &alpha_tx, volatile bool &flag) {
    /*
    alpha_tx is the line between transmitters and receivers on which the data flows. comm_line is the type ap_hs
    data_out is the data given to the transmitter to send 
    Interval is the time in between sending each bit: we will use this function to tune this interval for maximum efficiency without dropping data
    */

    #pragma HLS INTERFACE ap_vld port=alpha_tx
    #pragma HLS INTERFACE mode=s_axilite port=return
    #pragma HLS INTERFACE mode=s_axilite port=flag

    int i = 0;

    // input_packet = data_out.read();
    // bitstream = convert_to_bitstream(input_packet.data);
    // for (int i = 0; i < bits_arr; i++){
    //     for (int j = 0; j < interval; j++);  // Delay for the interval
    //     bit = (bitstream >> i) & 1;
    //     alpha_tx.write(bit);
    //     std::cout << "Writing bit " << std::dec << i << ": " << bit << std::endl;
    // }
    while(flag){
        if(i%3 == 0){
            std::cout << "Sending: " << 1 << std::endl;
            alpha_tx.write(1);
        }
        std::cout << "Sending: " << 0 << std::endl;
        alpha_tx.write(0);
        i++;
    }
    return;
}