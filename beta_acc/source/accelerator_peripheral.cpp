#include "gim_model_peripheral.h"
#include <iostream>
#include <fstream>
using namespace std;

// now, we actually run the full model
Inference accelerator_peripheral(fixed_16 w2[ARRAY_SIZE][ARRAY_SIZE],
                                fixed_16 bias_2[ARRAY_SIZE],
                                fixed_16 training,
                                packet_line &rx_stream, 
                                packet_line &tx_stream, 
                                bool expecting_input, 
                                bool &initialized, 
                                bool self_test,
                                int &epoch) {


    //initialization packet
    axis<fixed_16, 0, 1, 1> in_val;
    axis<fixed_16, 0, 1, 1> initialization_packet(fixed_16(2), fixed_16(1), 1, 2);
    axis<fixed_16, 0, 1, 1> alpha_packet(fixed_16(4), fixed_16(3), 1, 2);
    axis<fixed_16, 0, 1, 1> goofy_ahh_packet(fixed_16(.420), fixed_16(4.20), 1, 2);

    if (self_test){
        while(tx_stream.full());
        std::cout << "Self-Initializing" << std::endl;
        tx_stream.write(alpha_packet);
    }
    //Initialization sequence
    while(!initialized){
        while(rx_stream.empty()); //wait to pull something off the fifo
        std::cout << "Packet off the FIFO" << std::endl;
        in_val = rx_stream.read();
        if(in_val.dest == 1){ //delete this after test bench
            in_val.display();
        }
        if(in_val.dest == 1 && in_val.data[0] == fixed_16(4) && in_val.data[1] == fixed_16(3)){
            while(tx_stream.full());
            tx_stream.write(initialization_packet);
            std::cout << "Beta Received Initialization Packet" << std::endl;
            std::cout << "Beta Sent Initialization Packet" << std::endl;
            initialization_packet.display();
            initialized = true;
        }
        if (in_val.dest == 1 && in_val.data[0] == fixed_16(2) && in_val.data[1] == fixed_16(1)){
            while(tx_stream.full());
            tx_stream.write(initialization_packet);
            std::cout << "Beta Received Initialization Packet" << std::endl;
            std::cout << "Beta Sent Initialization Packet" << std::endl;
            initialization_packet.display();
            initialized = true;  
        }
    }
    
    // array for the final output
    Inference output_array;

    // initializing the data for the XOR problem
    fixed_16 x1[4] = {0, 0, 1, 1};
    fixed_16 x2[4] = {0, 1, 0, 1};
    fixed_16 y[4] = {0, 1, 1, 0};

    // setting up initial values for signals between layers
    fixed_16 output_1[ARRAY_SIZE] = {0, 0};
    fixed_16 output_2[ARRAY_SIZE] = {0, 0};
    fixed_16 delta_1[ARRAY_SIZE] = {0, 0};
    fixed_16 delta_2[ARRAY_SIZE] = {0, 0};

    // make local versions of the weights/biases
    fixed_16 w1_local[ARRAY_SIZE][ARRAY_SIZE] = {{0, 0}, {0, 0}};
    fixed_16 w2_local[ARRAY_SIZE][ARRAY_SIZE] = {{0, 0}, {0, 0}};
    fixed_16 bias_1_local[ARRAY_SIZE] = {0, 0};
    fixed_16 bias_2_local[ARRAY_SIZE] = {0, 0};

    for (int n = 0; n<ARRAY_SIZE; n++) {
        bias_2_local[n] = bias_2[n];
        for (int m = 0;m<ARRAY_SIZE; m++) {
            w2_local[n][m] = w2[n][m];
        }
    }


    #pragma HLS INTERFACE mode=s_axilite port=expecting_input
    #pragma HLS INTERFACE mode=s_axilite port=initialized
    #pragma HLS INTERFACE axis port=tx_stream
    #pragma HLS INTERFACE axis port=rx_stream
    #pragma HLS INTERFACE mode=s_axilite port=w2
    #pragma HLS INTERFACE mode=s_axilite port=bias_2
    #pragma HLS INTERFACE mode=s_axilite port=training
    #pragma HLS INTERFACE mode=s_axilite port=return

    #pragma HLS array_partition variable=w2

    // store actual and predicted difference in vector, set other params
    char model = 'l'; // s = sigmoid, r = relu, l = leaky relu NOTE: SIGMOID CANNOT BE USED ON HARDWARE
    fixed_16 alpha = 0.1; // for leaky relu
    fixed_16 lr = 0.1; // learning rate

    // iterate through the alloted epochs
    int i;
    if(self_test){
        while(tx_stream.full());
        tx_stream.write(goofy_ahh_packet);
        std::cout << "Alpha writing some goofy ahh shit wtf" << std::endl;
    }
    for (i = 0; i < NUM_ITERATIONS; i++) {
        // iterate through all the data points
        int j;
        epoch = i;
        for (j = 0; j < 4; j++) {
            #pragma HLS PIPELINE
            // initialize the error backpropagationcout
            delta_1[0] = 0;
            delta_1[1] = 0; 
            delta_2[0] = 0; 
            delta_2[1] = 0;


            // receive output_1 from alpha
            axis<fixed_16, 0, 1, 1> read_output_1_packet;
            while(expecting_input){
                while(rx_stream.empty());
                std::cout << "Packet off the FIFO" << std::endl;
                read_output_1_packet = rx_stream.read();
                if (read_output_1_packet.dest == 1){
                    output_1[0] = read_output_1_packet.data[0];
                    output_1[1] = read_output_1_packet.data[1];
                    std::cout << "Beta got output 1 packet" << std::endl;
                    read_output_1_packet.display();
                    expecting_input = false;
                }
            }
            //ready to read off the fifo
            expecting_input = true;

            // then layer two
            Array array_out2 = model_array(w2_local, bias_2_local, output_1, delta_2, lr, model, alpha, training);
            output_2[0] = array_out2.output_k[0];
            output_2[1] = array_out2.output_k[1];

            // make inferences for the return array if training has completed
            if (output_2[0] > 0.5) {
                output_array.inference[j] = 1;
            }
            else if (output_2[0] <= 0.5) {
                output_array.inference[j] = 0;
            }
            
            // lastly calculate the final error with the derivative of mse after the last output
            if (model == 's') {
                delta_2[0] = -(y[j] - output_2[0]) * output_2[0] * (1 - output_2[0]);
            }
            else if (model == 'r') {
                if (output_2[0] > 0)
                    delta_2[0] = -(y[j] - output_2[0]);
                else
                    delta_2[0] = 0;
            }
            else if (model == 'l') {
                if (output_2[0] > 0)
                    delta_2[0] = -(y[j] - output_2[0]);
                else
                    delta_2[0] = -(y[j] - output_2[0]) * alpha;
            }
            else {
                // std::cout << "model invalid" << std::endl;
                break;
            }

            // run the backpropagation and update the array
            // start with layer 2
            Array array_back2 = model_array(w2_local, bias_2_local, output_1, delta_2, lr, model, alpha, training);
            delta_1[0] = array_back2.delta_kmin1[0];
            delta_1[1] = array_back2.delta_kmin1[1];

            // update the weights and biases
            for (int n = 0; n<ARRAY_SIZE; n++) {
                bias_2_local[n] = array_back2.bias_change[n];
                for (int m = 0;m<ARRAY_SIZE; m++) {
                    w2_local[n][m] = array_back2.weight_changes[n][m];
                }
            }

            // send updated delta_1 to alpha
            axis<fixed_16, 0, 1, 1> write_delta_1_packet;
            write_delta_1_packet.id = 4;
            write_delta_1_packet.data[0] = delta_1[0];
            write_delta_1_packet.data[1] = delta_1[1];
            while(tx_stream.full());
            tx_stream.write(write_delta_1_packet);
            //std::cout << "Beta Wrote Delta 1 Packet: " << delta_1[0].to_float() <<
            //" , " << delta_1[1].to_float() << std::endl;

            
            // only run this for all 4 data points once if infering
            if ((training == 0) && (j == 3)) {
                break; 
            }
        }

        // store inaccuracy for model training reference
        float inaccuracy;
        inaccuracy = y[j] - output_2[0];
        //cout  << inaccuracy << endl;

        // only run this once if we are inferring
        if (training == 0) {
            break; 
        }
    }
    

    // epoch = int(501);
    // // receive bias_1_local from alpha 
    // axis<fixed_16, 0, 1, 1> read_bias_1_local_packet;
    // //for self-test this should receive the last bias backprop
    // while(expecting_input){
    //     while(rx_stream.empty());
    //     read_bias_1_local_packet = rx_stream.read();
    //     if (read_bias_1_local_packet.dest == 1){
    //         bias_1_local[0] = read_bias_1_local_packet.data[0];
    //         bias_1_local[1] = read_bias_1_local_packet.data[1];
    //         expecting_input = false;
    //         std::cout << "Output Bias 1" << std::endl;
    //         read_bias_1_local_packet.display();
    //     }
    // }
    // expecting_input = true;
    // epoch = int(502);

    // //for self test purposes
    // if(self_test){
    //     while(tx_stream.full());
    //     tx_stream.write(goofy_ahh_packet);
    //     std::cout << "Alpha writing some goofy ahh shit wtf" << std::endl;
    // }

    // // receive w1_local_packet1 (w1_local[0][0], w1_local[0][1]) from alpha 
    // axis<fixed_16, 0, 1, 1> read_w1_local_packet1;
    // while(expecting_input){
    //     while(rx_stream.empty());
    //     read_w1_local_packet1 = rx_stream.read();
    //     if (read_bias_1_local_packet.dest == 1){
    //         w1_local[0][0] = read_w1_local_packet1.data[0];
    //         w1_local[0][1] = read_w1_local_packet1.data[1];
    //         expecting_input = false;
    //         read_w1_local_packet1.display();
    //     }
    // }
    // expecting_input = true;
    // epoch = int(503);

    // //for self test purposes
    // if(self_test){
    //     while(tx_stream.full());
    //     tx_stream.write(goofy_ahh_packet);
    //     std::cout << "Alpha writing some goofy ahh shit wtf" << std::endl;
    // }

    // // receive w1_local_packet2 (w1_local[1][0], w1_local[1][1]) from alpha 
    // axis<fixed_16, 0, 1, 1> read_w1_local_packet2;
    // while(expecting_input){
    //     while(rx_stream.empty());
    //     read_w1_local_packet2 = rx_stream.read();
    //     if (read_bias_1_local_packet.dest == 1){
    //         w1_local[1][0] = read_w1_local_packet2.data[0];
    //         w1_local[1][1] = read_w1_local_packet2.data[1];
    //         expecting_input = false;
    //         read_w1_local_packet2.display();
    //     }
    // }
    // expecting_input = true;
    // epoch = int(504);
    // // produce the final weights to be used in inference
    // for (int n = 0; n<ARRAY_SIZE; n++) {
    //     output_array.new_b1[n] = bias_1_local[n];
    //     output_array.new_b2[n] = bias_2_local[n];
    //     for (int m = 0;m<ARRAY_SIZE; m++) {
    //         output_array.new_w1[n][m] = w1_local[n][m];
    //         std::cout << "W1 output n:" << n << " m: " << m << " : " << w1_local[n][m].to_float() << std::endl;
    //         output_array.new_w2[n][m] = w2_local[n][m];
    //         std::cout << "W2 output n:" << n << " m: " << m << " : " << w2_local[n][m].to_float() << std::endl;
    //     }
    // }

    // std::cout << "Output Bias 2" << std::endl;
    // std::cout << bias_2_local[0].to_float() << std::endl;
    // std::cout << bias_2_local[1].to_float() << std::endl;

    // std::cout << "Output Bias 1" << std::endl;
    // std::cout << bias_1_local[0].to_float() << std::endl;
    // std::cout << bias_1_local[1].to_float() << std::endl;




    return output_array;
}