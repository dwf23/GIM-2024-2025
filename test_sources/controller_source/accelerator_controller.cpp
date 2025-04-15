#include "gim_model_controller.h"
#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include <iostream>
#include <memory>
using namespace std;

// now, we actually run the full model
void accelerator_controller(fixed_16 w1[ARRAY_SIZE][ARRAY_SIZE], 
                            fixed_16 bias_1[ARRAY_SIZE], 
                            fixed_16 training, 
                            packet_line &data_out, 
                            packet_line &data_in, 
                            bool expecting_input,
                            bool &initialized,
                            bool &complete_flag,
                            int &method,
                            bool &initialized_1,
                            bool &initialized_2,
                            bool &values_set_up,
                            bool &sent,
                            bool &received,
                            bool &epochs_complete) {

    #pragma HLS INTERFACE mode=s_axilite port=return
    #pragma HLS INTERFACE axis port=data_in
    #pragma HLS INTERFACE axis port=data_out
    #pragma HLS INTERFACE mode=s_axilite port=w1
    #pragma HLS INTERFACE mode=s_axilite port=bias_1
    #pragma HLS INTERFACE mode=s_axilite port=training
    #pragma HLS INTERFACE mode=s_axilite port=expecting_input
    #pragma HLS INTERFACE mode=s_axilite port=initialized
    #pragma HLS INTERFACE mode=s_axilite port=initialized_1
    #pragma HLS INTERFACE mode=s_axilite port=initialized_2
    #pragma HLS INTERFACE mode=s_axilite port=values_set_up
    #pragma HLS INTERFACE mode=s_axilite port=sent
    #pragma HLS INTERFACE mode=s_axilite port=received
    #pragma HLS INTERFACE mode=s_axilite port=epochs_complete
    #pragma HLS INTERFACE mode=s_axilite port=method
    #pragma HLS INTERFACE mode=s_axilite port=complete_flag



    axis<fixed_16, 0, 1, 1> initialization_packet(fixed_16(4), fixed_16(3), 1, 2);
    axis<fixed_16, 0, 1, 1> receive_packet(fixed_16(0), fixed_16(0), 0, 0);

    if(method == 0){ // if method = 0 do this
        while(!initialized){
            while(data_out.full()); // wait for data out to be empty
            data_out.write(initialization_packet);
            initialized_1 = true;
            while(data_in.empty());// wait for data in to not be empty
            data_in.read(receive_packet);
            initialized_2 = true;
            if((receive_packet.dest == 1) & (receive_packet.data[0] == fixed_16(2)) & (receive_packet.data[1] == fixed_16(1))){
                initialized = true;
                std::cout << "Initialized!!" << std::endl;
            }
        }
    }
    else if (method == 1){ // if method is 1 do this
        while(!initialized){
            if(data_out.write_nb(initialization_packet)){
                initialized_1 = true;
            };
            if(data_in.read_nb(receive_packet)){
                initialized_2 = true;
                if((receive_packet.dest == 1) & (receive_packet.data[0] == fixed_16(2)) & (receive_packet.data[1] == fixed_16(1))){
                    initialized = 1;
                    std::cout << "Initialized!!" << std::endl;
                }
            }
        }
    }
    else if (method == 2){ // attempt at a self test
        while(!initialized){
            while(data_out.full()); // wait for data out to be empty
            data_out.write(initialization_packet);
            initialized_1 = true;
            while(data_in.empty());// wait for data in to not be empty
            data_in.read(receive_packet);
            initialized_2 = true;
            if((receive_packet.dest == 1) & (receive_packet.data[0] == fixed_16(4)) & (receive_packet.data[1] == fixed_16(3))){
                initialized = true;
                std::cout << "Initialized!!" << std::endl;
            }   
        }
    }
    else if (method == 3){ // attempt at a self test
        while(!initialized){
            if(data_out.write_nb(initialization_packet)){
                initialized_1 = true;
                std::cout << "Checkpoint 1" << std::endl;
            };
            if(data_in.read_nb(receive_packet)){
                initialized_2 = true;
                std::cout << "Checkpoint 2" << std::endl;
                receive_packet.display();
                if((receive_packet.dest == 1) & (receive_packet.data[0] == fixed_16(4)) & (receive_packet.data[1] == fixed_16(3))){
                    initialized = 1;
                    std::cout << "Initialized!!" << std::endl;
                }
            }
        }  
    }
        
    
    




    // Inference output_array;
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

    values_set_up = true;

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
            axis<fixed_16, 0, 1, 1> write_output_1_packet(0, 0, 0, 0);
            write_output_1_packet.id = 0;
            write_output_1_packet.dest = 2;
            // std::copy(output_1, output_1 + ARRAY_SIZE, output_1_packet.data);
            write_output_1_packet.data[0] = output_1[0];
            write_output_1_packet.data[1] = output_1[1];
            while(data_out.full());
            data_out.write(write_output_1_packet);
            sent = true;
            // if(data_out.write_nb(write_output_1_packet)){
            //     std::cout << "write_output_1_packet " 
            //             << output_1[0].to_float() << ", " 
            //             << output_1[1].to_float() << std::endl;
            // }
            // else{
            //     std::cout << "Failed to write_output_1_packet" << std::endl;
            // }

            // Receive delta_1 from beta
            axis<fixed_16, 0, 1, 1> read_delta_1_packet(0, 0, 0, 0);
            if(expecting_input){
                bool valid_data = false;
                while(!valid_data){
                    while(data_in.empty());
                    data_in.read(read_delta_1_packet);
                    if(read_delta_1_packet.dest == 1){
                        valid_data = true;
                        received = true;
                    }
                }
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

    epochs_complete = true;

    // send bias_1_local to beta
    axis<fixed_16, 0, 1, 1> write_bias_1_local_packet(0, 0, 0, 0);
    write_bias_1_local_packet.id = 1;
    write_bias_1_local_packet.dest = 2;
    write_bias_1_local_packet.data[0] = bias_1_local[0];
    write_bias_1_local_packet.data[1] = bias_1_local[1];
    while(data_out.full());
    data_out.write(write_bias_1_local_packet);
    sent = true;
    // if(data_out.write_nb(write_bias_1_local_packet)){
    //     std::cout << "write_bias_1_local_packet " 
    //             << bias_1_local[0].to_float() << ", " 
    //             << bias_1_local[1].to_float() << std::endl;
    // }
    // else{
    //     std::cout << "Failed to write_bias_1_local_packet" << std::endl;
    // }

    // send w1_local to beta
    // First packet: w1_local[0][0], w1_local[0][1]
    axis<fixed_16, 0, 1, 1> write_w1_local_packet1(0, 0, 0, 0);
    write_w1_local_packet1.id = 2;  
    write_w1_local_packet1.dest = 2;  
    write_w1_local_packet1.data[0] = w1_local[0][0];
    write_w1_local_packet1.data[1] = w1_local[0][1];
    while(data_out.full());
    data_out.write(write_w1_local_packet1);
    sent = true;
    // if (data_out.write_nb(write_w1_local_packet1)) {
    //     std::cout << "write_w1_local_packet1: "
    //             << w1_local[0][0].to_float() << ", "
    //             << w1_local[0][1].to_float() << std::endl;
    // } else {
    //     std::cout << "Failed to write_w1_local_packet1" << std::endl;
    // }

    // Second packet: w1_local[1][0], w1_local[1][1]
    axis<fixed_16, 0, 1, 1> write_w1_local_packet2(0, 0, 0, 0);
    write_w1_local_packet2.id = 3; 
    write_w1_local_packet2.dest = 2; 
    write_w1_local_packet2.data[0] = w1_local[1][0];
    write_w1_local_packet2.data[1] = w1_local[1][1];
    while(data_out.full());
    data_out.write(write_w1_local_packet2);
    sent = true;
    // if (data_out.write_nb(write_w1_local_packet2)) {
    //     std::cout << "write_w1_local_packet2: "
    //             << w1_local[1][0].to_float() << ", "
    //             << w1_local[1][1].to_float() << std::endl;
    // } else {
    //     std::cout << "Failed to write_w1_local_packet2" << std::endl;
    // }

    complete_flag = true;
}