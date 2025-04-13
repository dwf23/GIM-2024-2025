#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "definitions.h"
#include "ap_int.h"
#include <iostream>
#include <ostream>
#include <unistd.h>
#include <csignal>
#include <atomic>
#include <limits.h>



int main()
{
    std::cout << "Starting Testbench" << "\n";
    axis<int, 0, 1, 1> result(0, 0, 0, 0);
    axis<int, 0, 1, 1> result2(0, 0, 0, 0);
    axis<int, 0, 1, 1> data_to_send(23, 5, 1, 1);
    axis<int, 0, 1, 1> data_to_send_2(19, 2, 1, 1);

// #ifdef HW_COSIM
    std::cout << "Beginning Send Data Thread" << "\n";
    packet_line out_stream;
    packet_line in_stream;
    bool received_flag = false;
    bool wrote_flag = false;
    volatile bool loop = 0;
    ap_uint<1> fifo_reset;
    volatile bool fifo_reset_busy = false;
    int received_val_1 = 0;
    int received_val_2 = 0;
    int interval = 10000;
    loop = true;
    bool initialized_1 = false;
    bool initialized_2 = false;
    bool other_initialized_1 = false;
    bool other_initialized_2 = false;

    std::thread example_acc_thread(example_acc_board_2, std::ref(out_stream), std::ref(wrote_flag), std::ref(loop), std::ref(in_stream), std::ref(received_flag), std::ref(received_val_1), std::ref(received_val_2), std::ref(interval), std::ref(other_initialized_1), std::ref(other_initialized_2));
    axis<int, 0, 1, 1> initialization_packet(3, 2, 1, 2); // ID 1 and Destination 2
    axis<int, 0, 1, 1> packet_1(5, 6, 1, 1); // ID 1 and Destination 2
    axis<int, 0, 1, 1> packet_2(4, 8, 2, 1); // ID 1 and Destination 2
    axis<int, 0, 1, 1> in_val;
    

    // initialization process
    while(!initialized_1){
        in_stream.write_nb(initialization_packet);
        if(out_stream.read_nb(in_val)){
            if(in_val.data[0] == 7 & in_val.data[1] == 6){ // waits to receive a specific data point to ensure it is synced
                initialized_1 = 1;
                std::cout << "Initialized stage 1 complete!" << std::endl;
            }
        }
    }

    while(!initialized_2){
        if(!out_stream.empty()){
            in_val = out_stream.read();
            if(in_val.data[0] == 5 & in_val.data[1] == 4){
                initialized_2 = 1;
                std::cout << "Initialized stage 2 complete!" << std::endl;
            }
        }
    }
    


    while(in_stream.full());
    in_stream.write(packet_1);
    std::cout << "Wrote data 1" << std::endl;
    wrote_flag = true;
    
    for(int i = 0; i < interval; i++);

    while(in_stream.full());
    in_stream.write(packet_2);
    std::cout << "Wrote data 2" << std::endl;
    wrote_flag = true;

    for(int i = 0; i < interval; i++);

    while(out_stream.empty());
    in_val = out_stream.read();
    if(in_val.dest == 2){
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

    while(out_stream.empty());
    in_val = out_stream.read();
    if(in_val.dest == 2){
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
    axis<int, 0, 1, 1> modified_packet(modified_val_1, modified_val_2, 3, 1); // ID 1 and Destination 2

    while(in_stream.full());
    in_stream.write(modified_packet);
    std::cout << "Wrote modified_packet" << std::endl;
    wrote_flag = true;

    std::cout << "Got data " << received_val_1 << " and " << received_val_2 << std::endl;
    
    example_acc_thread.join();




// #endif
   return 0;
}