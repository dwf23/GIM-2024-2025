#include "definitions.h"
#include <cstdint>

 void example_acc(packet_line& rx_stream, bool &wrote_flag, volatile bool &loop, packet_line& tx_stream,
  bool &received_flag, int &received_val_1, int &received_val_2, int &test, bool &probe) {
    /*
    Something heading to example_acc has destination 1
    Something heading to send_data has destination 2
    */
    #pragma HLS INTERFACE mode=s_axilite port=wrote_flag
    #pragma HLS interface s_axilite port=return
    #pragma HLS INTERFACE axis port=rx_stream
    #pragma HLS INTERFACE mode=s_axilite port=received_flag
    #pragma HLS INTERFACE mode=s_axilite port=loop
    #pragma HLS INTERFACE mode=s_axilite port=received_val_1
    #pragma HLS INTERFACE mode=s_axilite port=received_val_2
    #pragma HLS INTERFACE mode=s_axilite port=test
    #pragma HLS INTERFACE mode=s_axilite port=probe
    #pragma HLS interface s_axilite port=return
    #pragma HLS pipeline II=2
    #pragma HLS INTERFACE axis port=tx_stream

    //axis<fixed_16, 0, 1, 1> packet(fixed_16(8.5332), fixed_16(8.5332), 1, 2); // ID 1 and Destination 2
    axis<int, 0, 1, 1> in_val;


    axis<int, 0, 1, 1> packet1(int (2), int (5), 1, 2);
    axis<int, 0, 1, 1> packet2(int (17),int (1), 1, 2);
    int tx1;
    int tx2;

    int id = 0;
    

    // wrote_flag = false;
    // while(rx_stream.full()); // wait until the stream is not full
    // rx_stream.write(packet);
    // std::cout << "Wrote data" << std::endl;
    // wrote_flag = true;
    if (test== 0){
        for(int i =0; i<2; i++){
            //writing block
            wrote_flag = false;
            while(tx_stream.full());
            if (i == 0){
                tx_stream.write(packet1);
                std::cout << "Wrote Data: " << std::endl;
                packet1.display();
            }
            else{
                tx_stream.write(packet2);
                std::cout << "Wrote Data: " << std::endl;
                packet2.display();
            }
            wrote_flag = true;

            //reading block
            while(!received_flag){
                while(rx_stream.empty());
                std::cout << "Packet off the FIFO" << std::endl;
                in_val = rx_stream.read();
                if (in_val.dest == 1){
                    in_val.display();
                    received_flag = true;
                    received_val_1 = in_val.data[0];
                    received_val_2 = in_val.data[1];
                }
                else{
                    std::cout << "Data not valid" << std::endl;
                }
            }

            while(!probe);
            wrote_flag = false;
            received_flag = false;
            probe = wrote_flag;
        }
    }
    else if (test ==1){
        while(loop){
            while(!received_flag){
                while(rx_stream.empty()); //wait until there is something to read
                std::cout << "Packet off the FIFO" << std::endl;
                in_val = rx_stream.read(); //blocking read
                if(in_val.dest == 1){
                    in_val.display();
                    received_flag = true;
                    received_val_1 = in_val.data[0];
                    received_val_2 = in_val.data[1];
                }
                else{
                    std::cout << "Data Not Valid" << std::endl;
                }
            }
            //Modify the values
            tx1 = received_val_1 * 2;
            tx2 = received_val_2 + 20;
            

            //Write them off the packet
            id++;
            axis<int, 0, 1, 1> packet(int(tx1), int(tx2), id, 2); //dest 2;
            while(tx_stream.full());
            tx_stream.write(packet);
            wrote_flag = true;
            received_flag = false;
            

        }
    }

}

 