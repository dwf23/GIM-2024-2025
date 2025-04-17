#include "definitions.h"

 void transmit(packet_line& out_stream, bool &flag, axis<fixed_16, 0, 0, 0> packet) {
    #pragma HLS INTERFACE mode=s_axilite port=flag
    #pragma HLS INTERFACE mode=s_axilite port=packet
    #pragma HLS interface s_axilite port=return
    #pragma HLS INTERFACE axis port=out_stream

    flag = false;
    while(out_stream.full()); // wait until the stream is not full
    out_stream.write(packet);
    std::cout << "Wrote data" << std::endl;
    flag = true;
 }

 