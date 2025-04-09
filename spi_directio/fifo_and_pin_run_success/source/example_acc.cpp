#include "definitions.h"

 void example_acc(packet_line& out_stream, bool &wrote_flag, volatile bool &loop, packet_line& in_stream, bool &received_flag, float &received_val_1, float &received_val_2) {
    /*
    Something heading to example_acc has destination 1
    Something heading to send_data has destination 2
    */
    #pragma HLS INTERFACE mode=s_axilite port=wrote_flag
    #pragma HLS interface s_axilite port=return
    #pragma HLS INTERFACE axis port=out_stream
    #pragma HLS INTERFACE mode=s_axilite port=received_flag
    #pragma HLS INTERFACE mode=s_axilite port=loop
    #pragma HLS INTERFACE mode=s_axilite port=received_val_1
    #pragma HLS INTERFACE mode=s_axilite port=received_val_2
    #pragma HLS interface s_axilite port=return
    #pragma HLS pipeline II=2
    #pragma HLS INTERFACE axis port=in_stream

    axis<fixed_16, 0, 1, 1> packet(fixed_16(8.5332), fixed_16(8.5332), 1, 2); // ID 1 and Destination 2
    axis<fixed_16, 0, 1, 1> in_val;
    

    // wrote_flag = false;
    // while(out_stream.full()); // wait until the stream is not full
    // out_stream.write(packet);
    // std::cout << "Wrote data" << std::endl;
    // wrote_flag = true;

    while(loop){
        while(out_stream.full());
        out_stream.write(packet);
        std::cout << "Wrote data" << std::endl;
        wrote_flag = true;
        if(!in_stream.empty()){
            std::cout << "Checkpoint" << std::endl;
            in_val = in_stream.read();
            if(in_val.dest == 1){
                std::cout << "Received Valid Data" << std::endl;
                in_val.display();
                received_flag = true;
                received_val_1 = in_val.data[0].to_float();
                received_val_2 = in_val.data[1].to_float();
            }
            else{
                std::cout << "Data Not Valid" << std::endl;
            }
        }
    }
 }

 