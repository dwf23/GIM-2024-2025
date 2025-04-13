#include "definitions.h"


void receive(packet_line& in_stream, bool &flag, volatile bool &loop, axis<fixed_16, 0, 0, 0> &received_val) {
    #pragma HLS INTERFACE mode=s_axilite port=flag
    #pragma HLS INTERFACE mode=s_axilite port=loop
    #pragma HLS INTERFACE mode=s_axilite port=received_val
    #pragma HLS interface s_axilite port=return
    #pragma HLS pipeline II=2
    //#pragma HLS INTERFACE ap_fifo port=in_stream
    #pragma HLS INTERFACE axis port=in_stream

    axis<fixed_16, 0, 0, 0> in_val;

    

    while(loop){
        if(!in_stream.empty()){
            // std::cout << "Done resetting internally" << std::endl;
            std::cout << "Checkpoint" << std::endl;
            in_val = in_stream.read();
            std::cout << "Received Data" << std::endl;
            in_val.display();
            // std::cout << "Received ID" << in_val.ID << std::endl;
            flag = true;
            received_val = in_val;
        }
    }
 }

 