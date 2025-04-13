#include "definitions.h"

 void example_acc(packet_line& out_stream, bool &wrote_flag, volatile bool &loop, packet_line& in_stream, bool &received_flag, int &received_val_1, int &received_val_2, int &interval) {
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
    #pragma HLS INTERFACE mode=s_axilite port=interval
    #pragma HLS interface s_axilite port=return
    #pragma HLS pipeline II=2
    #pragma HLS INTERFACE axis port=in_stream

    axis<int, 0, 1, 1> packet_1(3, 6, 1, 2); // ID 1 and Destination 2
    axis<int, 0, 1, 1> packet_2(4, 8, 2, 2); // ID 1 and Destination 2
    axis<int, 0, 1, 1> in_val;
    

    while(out_stream.full());
    out_stream.write(packet_1);
    std::cout << "Wrote data 1" << std::endl;
    wrote_flag = true;
    
    for(int i = 0; i < interval; i++);

    while(out_stream.full());
    out_stream.write(packet_2);
    std::cout << "Wrote data 2" << std::endl;
    wrote_flag = true;

    for(int i = 0; i < interval; i++);

    while(in_stream.empty());
    in_val = in_stream.read();
    if(in_val.dest == 1){
        std::cout << "Received Valid Data" << std::endl;
        in_val.display();
        received_flag = true;
        received_val_1 = in_val.data[0];
        received_val_2 = in_val.data[1];
    }
    else{
        std::cout << "Data Not Valid" << std::endl;
    }

    for(int i = 0; i < interval; i++);  

    while(in_stream.empty());
    in_val = in_stream.read();
    if(in_val.dest == 1){
        std::cout << "Received Valid Data" << std::endl;
        in_val.display();
        received_flag = true;
        received_val_1 = in_val.data[0];
        received_val_2 = in_val.data[1];
    }
    else{
        std::cout << "Data Not Valid" << std::endl;
    }

    for(int i = 0; i < interval; i++);  

    int modified_val_1 = received_val_1 * -1;
    int modified_val_2 = received_val_2 + 4;
    axis<int, 0, 1, 1> modified_packet(modified_val_1, modified_val_2, 3, 2); // ID 1 and Destination 2

    while(out_stream.full());
    out_stream.write(modified_packet);
    std::cout << "Wrote modified_packet" << std::endl;
    wrote_flag = true;


    

    
 }

 