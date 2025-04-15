#include "gim_model_controller.h"
#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include <iostream>
#include <memory>
using namespace std;

// now, we actually run the full model
Inference accelerator_controller(fixed_16 w1[ARRAY_SIZE][ARRAY_SIZE], 
                            fixed_16 bias_1[ARRAY_SIZE], 
                            fixed_16 training, 
                            packet_line &data_out, 
                            packet_line &data_in, 
                            bool expecting_input) {
    Inference output_array_controller;

    // initializing the data for the XOR problem
    fixed_16 x1[4] = {0, 0, 1, 1};
    fixed_16 x2[4] = {0, 1, 0, 1};
    fixed_16 y[4] = {0, 1, 1, 0};

    // setting up initial values for signals between layers
    fixed_16 output_0[ARRAY_SIZE] = {0, 0};
    fixed_16 output_1[ARRAY_SIZE] = {0, 0};
    fixed_16 delta_1[ARRAY_SIZE] = {0, 0};

    // make local versions of the weights/biases
    fixed_16 w1_local[ARRAY_SIZE][ARRAY_SIZE] = {{0, 0}, {0, 0}};
    fixed_16 bias_1_local[ARRAY_SIZE] = {0, 0};
    
    for (int n = 0; n<ARRAY_SIZE; n++) {
        bias_1_local[n] = bias_1[n];
        for (int m = 0;m<ARRAY_SIZE; m++) {
            w1_local[n][m] = w1[n][m];
        }
    }

    #pragma HLS INTERFACE mode=s_axilite port=output_1[0]
    #pragma HLS INTERFACE mode=s_axilite port=output_1[1]
    #pragma HLS INTERFACE mode=s_axilite port=delta_1[0]
    #pragma HLS INTERFACE mode=s_axilite port=delta_1[1]
    // #pragma HLS INTERFACE mode=s_axilite port=bias_1_local[0]
    // #pragma HLS INTERFACE mode=s_axilite port=bias_1_local[1]
    // #pragma HLS INTERFACE mode=s_axilite port=w1_local[0][0]
    // #pragma HLS INTERFACE mode=s_axilite port=w1_local[0][1]
    // #pragma HLS INTERFACE mode=s_axilite port=w1_local[1][0]
    // #pragma HLS INTERFACE mode=s_axilite port=w1_local[1][1]
    #pragma HLS INTERFACE mode=s_axilite port=expecting_input
    #pragma HLS INTERFACE mode=s_axilite port=return
    #pragma HLS INTERFACE ap_fifo port=data_out
    #pragma HLS INTERFACE ap_fifo port=data_in
    #pragma HLS RESOURCE variable=data_out core=AXIS
    #pragma HLS RESOURCE variable=data_in core=AXIS

    // store actual and predicted difference in vector, set other params
    char model = 'l'; // s = sigmoid, r = relu, l = leaky relu NOTE: SIGMOID CANNOT BE USED ON HARDWARE
    fixed_16 alpha = 0.1; // for leaky relu
    fixed_16 lr = 0.1; // learning rate
    // iterate through the alloted epochs
    int i;
    for (i = 0; i < NUM_ITERATIONS; i++) {
        // iterate through all the data points
        int j;
        for (j = 0; j < 4; j++) {
            #pragma HLS PIPELINE
            std::cout << "iteration " << i << std::endl;
            std::cout << "data point " << j << std::endl;
            // setup the initial data input
            output_0[0] = x1[j];
            output_0[1] = x2[j];

            // initialize the error backpropagationcout
            delta_1[0] = 0;
            delta_1[1] = 0;

            // run the forward propagation
            // start with layer 1
            Array array_out1 = model_array(w1_local, bias_1_local, output_0, delta_1, lr, model, alpha, training);
            output_1[0] = array_out1.output_k[0];
            output_1[1] = array_out1.output_k[1];

            // send output_1 to beta
            pkt write_output_1_packet;
            write_output_1_packet.ID = 0;
            // std::copy(output_1, output_1 + ARRAY_SIZE, output_1_packet.data);
            write_output_1_packet.data[0] = output_1[0];
            write_output_1_packet.data[1] = output_1[1];
            if(data_out.write_nb(write_output_1_packet)){
                std::cout << "write_output_1_packet " 
                        << output_1[0].to_float() << ", " 
                        << output_1[1].to_float() << std::endl;
            }
            else{
                std::cout << "Failed to write_output_1_packet" << std::endl;
            }

            // Receive delta_1 from beta
            pkt read_delta_1_packet;
            if(expecting_input){
                while(data_in.empty());
                data_in.read(read_delta_1_packet);
                delta_1[0] = read_delta_1_packet.data[0];
                delta_1[1] = read_delta_1_packet.data[1];
                std::cout << "read_delta_1_packet: " 
                        << delta_1[0].to_float() << ", " 
                        << delta_1[1].to_float() << std::endl;
            } else {
                std::cout << "Failed to read_delta_1_packet" << std::endl;
            }
            
            // end with layer 1
            Array array_back1 = model_array(w1_local, bias_1_local, output_0, delta_1, lr, model, alpha, training);
            // update the weights and biases
            for (int n = 0; n<ARRAY_SIZE; n++) {
                bias_1_local[n] = array_back1.bias_change[n];
                for (int m = 0; m<ARRAY_SIZE; m++) {
                    w1_local[n][m] = array_back1.weight_changes[n][m];
                }
            }
            if ((training == 0) && (j == 3)) {
                break; // only run this for all 4 data points once if infering
            }
        }
        if (training == 0) {
            break; // only run this once if we are inferring
        }
    }

    // produce the final w_1 and b_1 to be used in inference
    for (int n = 0; n<ARRAY_SIZE; n++) {
        output_array_controller.new_b1[n] = bias_1_local[n];
        // output_array.new_b2[n] = bias_2_local[n];
        for (int m = 0;m<ARRAY_SIZE; m++) {
            output_array_controller.new_w1[n][m] = w1_local[n][m];
            // output_array.new_w2[n][m] = w2_local[n][m];
        }
    }

    return output_array_controller;

    // // send bias_1_local to beta
    // pkt write_bias_1_local_packet;
    // write_bias_1_local_packet.ID = 1;
    // write_bias_1_local_packet.data[0] = bias_1_local[0];
    // write_bias_1_local_packet.data[1] = bias_1_local[1];
    // if(data_out.write_nb(write_delta_1_local_packet)){
    //     std::cout << "write_bias_1_local_packet " 
    //             << bias_1_local[0].to_float() << ", " 
    //             << bias_1_local[1].to_float() << std::endl;
    // }
    // else{
    //     std::cout << "Failed to write_bias_1_local_packet" << std::endl;
    // }

    // // send w1_local to beta
    // // First packet: w1_local[0][0], w1_local[0][1]
    // pkt write_w1_local_packet1;
    // write_w1_local_packet1.ID = 2;  
    // write_w1_local_packet1.data[0] = w1_local[0][0];
    // write_w1_local_packet1.data[1] = w1_local[0][1];
    // if (data_out.write_nb(write_w1_local_packet1)) {
    //     std::cout << "write_w1_local_packet1: "
    //             << w1_local[0][0].to_float() << ", "
    //             << w1_local[0][1].to_float() << std::endl;
    // } else {
    //     std::cout << "Failed to write_w1_local_packet1" << std::endl;
    // }

    // // Second packet: w1_local[1][0], w1_local[1][1]
    // pkt write_w1_local_packet2;
    // write_w1_local_packet2.ID = 3; 
    // write_w1_local_packet2.data[0] = w1_local[1][0];
    // write_w1_local_packet2.data[1] = w1_local[1][1];
    // if (data_out.write_nb(write_w1_local_packet2)) {
    //     std::cout << "write_w1_local_packet2: "
    //             << w1_local[1][0].to_float() << ", "
    //             << w1_local[1][1].to_float() << std::endl;
    // } else {
    //     std::cout << "Failed to write_w1_local_packet2" << std::endl;
    // }
}