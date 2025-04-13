#include "definitions.h"

 void example_acc_board_2(packet_line& out_stream, bool &wrote_flag, volatile bool &loop, packet_line& in_stream, bool &received_flag, int &received_val_1, int &received_val_2, int &interval, bool &initialized_1, bool &initialized_2) {
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
    #pragma HLS INTERFACE mode=s_axilite port=initialized_1
    #pragma HLS INTERFACE mode=s_axilite port=initialized_2
    #pragma HLS interface s_axilite port=return
    #pragma HLS pipeline II=2
    #pragma HLS INTERFACE axis port=in_stream

    axis<int, 0, 1, 1> initialization_packet_1(7, 6, 1, 2); // ID 1 and Destination 2
    axis<int, 0, 1, 1> initialization_packet_2(5, 4, 1, 2); // ID 1 and Destination 2
    axis<int, 0, 1, 1> packet_1(5, 6, 1, 2); // ID 1 and Destination 2
    axis<int, 0, 1, 1> packet_2(4, 8, 2, 2); // ID 1 and Destination 2
    axis<int, 0, 1, 1> in_val;
    
    initialized_1 = 0;
    initialized_2 = 0;
    // initialization process
    while(!initialized_1){
        if(!in_stream.empty()){
            in_val = in_stream.read();
            if(in_val.data[0] == 3 & in_val.data[1] == 2){
                initialized_1 = 1;
                out_stream.write(initialization_packet_1);
                std::cout << "Initialized stage 1 complete!" << std::endl;
            }
        }
    }
    // now the other board should have stopped sending
    while(!in_stream.empty()){ // flush out any remaining values from out_stream
        in_val = in_stream.read();
    }
    out_stream.write(initialization_packet_2); // signal other board to begin program
    initialized_2 = true;
    std::cout << "Initialized stage 2 complete!" << std::endl;


   for(int i = 0; i < interval; i++)
   ;  
    
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

    

    
 }

 