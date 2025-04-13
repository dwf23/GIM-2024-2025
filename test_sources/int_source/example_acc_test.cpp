#include "definitions.h"

void example_acc_test(packet_line& out_stream, bool &wrote_flag, packet_line& in_stream, bool &received_flag, int &received_val_1, int &received_val_2, int &interval) {
    /*
    Something heading to example_acc has destination 1
    Something heading to send_data has destination 2
    */
    #pragma HLS INTERFACE mode=s_axilite port=wrote_flag
    #pragma HLS interface s_axilite port=return
    #pragma HLS INTERFACE axis port=out_stream
    #pragma HLS INTERFACE mode=s_axilite port=received_flag
    #pragma HLS INTERFACE mode=s_axilite port=received_val_1
    #pragma HLS INTERFACE mode=s_axilite port=received_val_2
    #pragma HLS INTERFACE mode=s_axilite port=interval
    #pragma HLS interface s_axilite port=return
    #pragma HLS pipeline II=2
    #pragma HLS INTERFACE axis port=in_stream

    int val1 = 0;
    int val2 = 0;
    axis<int, 0, 1, 1> packet_1(val1, val2, 1, 2); // ID 1 and Destination 2
    axis<int, 0, 1, 1> packet_2(4, 8, 2, 2); // ID 1 and Destination 2
    axis<int, 0, 1, 1> in_val;
    
    for (int i = 0; i < 16; i++){

        for(int j = 0; j < interval; j++);

        while(out_stream.full());
        out_stream.write(packet_1);
        wrote_flag = true;

        for(int j = 0; j < interval; j++);

        while(in_stream.empty());
        in_stream.read(in_val);
        received_flag = true;
        received_val_1 = in_val.data[0];
        received_val_2 = in_val.data[1];
        val1 = in_val.data[0] + 1;
        val2 = in_val.data[1] + 2;

        packet_1.data[0] = val1;
        packet_1.data[1] = val2;
    }


    
 }

 