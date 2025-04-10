#include "gim_model_peripheral.h"
#include <iostream>
#include <fstream>
using namespace std;

// now, we actually run the full model
Inference accelerator_peripheral(fixed_16 w2[ARRAY_SIZE][ARRAY_SIZE],
                                fixed_16 bias_2[ARRAY_SIZE],
                                fixed_16 training
                                packet_line &data_out, 
                                packet_line &data_in, 
                                bool expecting_input) {
    
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
    
    #pragma HLS INTERFACE mode=s_axilite port=output_1[0]
    #pragma HLS INTERFACE mode=s_axilite port=output_1[1]
    #pragma HLS INTERFACE mode=s_axilite port=delta_1[0]
    #pragma HLS INTERFACE mode=s_axilite port=delta_1[1]
    #pragma HLS INTERFACE mode=s_axilite port=bias_1_local[0]
    #pragma HLS INTERFACE mode=s_axilite port=bias_1_local[1]
    #pragma HLS INTERFACE mode=s_axilite port=w1_local[0][0]
    #pragma HLS INTERFACE mode=s_axilite port=w1_local[0][1]
    #pragma HLS INTERFACE mode=s_axilite port=w1_local[1][0]
    #pragma HLS INTERFACE mode=s_axilite port=w1_local[1][1]
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
            // initialize the error backpropagationcout
            delta_1[0] = 0;
            delta_1[1] = 0; 
            delta_2[0] = 0; 
            delta_2[1] = 0;

            // receive output_1 from alpha
            pkt read_output_1_packet;
            if(expecting_input){
                while(data_in.empty());
                data_in.read(read_output_1_packet);
                output_1[0] = read_output_1_packet.data[0];
                output_1[1] = read_output_1_packet.data[1];
                std::cout << "read_output_1_packet: " 
                        << output_1[0].to_float() << ", " 
                        << output_1[1].to_float() << std::endl;
            } else {
                std::cout << "Failed to read_output_1_packet" << std::endl;
            }

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
            pkt write_delta_1_packet;
            write_delta_1_packet.ID = 4;
            write_delta_1_packet.data[0] = delta_1[0];
            write_delta_1_packet.data[1] = delta_1[1];
            if(data_out.write_nb(write_delta_1_packet)){
                std::cout << "write_delta_1_packet " 
                        << delta_1[0].to_float() << ", " 
                        << delta_1[1].to_float() << std::endl;
            }
            else{
                std::cout << "Failed to write_delta_1_packet" << std::endl;
            }
            
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

    // receive bias_1_local from alpha 
    pkt read_bias_1_local_packet;
    if(expecting_input){
        while(data_in.empty());
        data_in.read(read_bias_1_local_packet);
        bias_1_local[0] = read_bias_1_local_packet.data[0];
        bias_1_local[1] = read_bias_1_local_packet.data[1];
        std::cout << "read_bias_1_local_packet: " 
                << bias_1_local[0].to_float() << ", " 
                << bias_1_local[1].to_float() << std::endl;
    } else {
        std::cout << "Failed to read_bias_1_local_packet" << std::endl;
    }

    // receive w1_local_packet1 (w1_local[0][0], w1_local[0][1]) from alpha 
    pkt read_w1_local_packet1;
    if(expecting_input){
        while(data_in.empty());
        data_in.read(read_w1_local_packet1);
        w1_local[0][0] = read_w1_local_packet1.data[0];
        w1_local[0][1] = read_w1_local_packet1.data[1];
        std::cout << "read_w1_local_packet1: " 
                << w1_local[0][0].to_float() << ", " 
                << w1_local[0][1].to_float() << std::endl;
    } else {
        std::cout << "Failed to read_w1_local_packet1" << std::endl;
    }

    // receive w1_local_packet2 (w1_local[1][0], w1_local[1][1]) from alpha 
    pkt read_w1_local_packet2;
    if(expecting_input){
        while(data_in.empty());
        data_in.read(read_w1_local_packet2);
        w1_local[1][0] = read_w1_local_packet2.data[0];
        w1_local[1][1] = read_w1_local_packet2.data[1];
        std::cout << "read_w1_local_packet2: " 
                << w1_local[1][0].to_float() << ", " 
                << w1_local[1][1].to_float() << std::endl;
    } else {
        std::cout << "Failed to read_w1_local_packet2" << std::endl;
    }

    // produce the final weights to be used in inference
    for (int n = 0; n<ARRAY_SIZE; n++) {
        output_array.new_b1[n] = bias_1_local[n];
        output_array.new_b2[n] = bias_2_local[n];
        for (int m = 0;m<ARRAY_SIZE; m++) {
            output_array.new_w1[n][m] = w1_local[n][m];
            output_array.new_w2[n][m] = w2_local[n][m];
        }
    }

    return output_array;
}