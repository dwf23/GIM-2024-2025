#include "gim_model.h"
#include <iostream>
#include <fstream>
using namespace std;

// now, we actually run the full model
Inference sub_accelerator(fixed_16 w1[ARRAY_SIZE][ARRAY_SIZE], fixed_16 w2[ARRAY_SIZE][ARRAY_SIZE],
    fixed_16  bias_1[ARRAY_SIZE], fixed_16 bias_2[ARRAY_SIZE],fixed_16 cur_iter_y,
    fixed_16 training) {

    // array for the final output
    Inference output_array;

    #pragma HLS INTERFACE mode=s_axilite port=w1
    #pragma HLS INTERFACE mode=s_axilite port=w2
    #pragma HLS INTERFACE mode=s_axilite port=bias_1
    #pragma HLS INTERFACE mode=s_axilite port=bias_2
    #pragma HLS INTERFACE mode=s_axilite port=training
    #pragma HLS INTERFACE mode=s_axilite port=return

    #pragma HLS array_partition variable=w1
    #pragma HLS array_partition variable=w2

    //Communication
    //******************************************* */

    //keeps track of y[j]

    fixed_16 delta_1[ARRAY_SIZE] = {};
    fixed_16 delta_2[ARRAY_SIZE] = {};

    // initializing internal arrays with zeros
    fixed_16 output_1[ARRAY_SIZE] = {0, 0};
    fixed_16 output_2[ARRAY_SIZE] = {0, 0};

    // make local versions of the weights/biases
    fixed_16 w2_local[ARRAY_SIZE][ARRAY_SIZE] = {{0, 0}, {0, 0}};
    fixed_16 bias_2_local[ARRAY_SIZE] = {0, 0};
    for (int n = 0; n<ARRAY_SIZE; n++) {
        bias_2_local[n] = bias_2[n];
        for (int m = 0;m<ARRAY_SIZE; m++) {
            w2_local[n][m] = w2[n][m];
        }
    }
    // number of iterations defined in the header file
    // store actual and predicted difference in vector, set other params
    char model = 'r';
    fixed_16 alpha = 0.1; // for leaky relu
    fixed_16 lr = 0.1; // learning rate

    //Receive output1, cur_iter_y, delta_2, AS INPUTS!!!
    //Forward propogation of layer 2
    Array array_out2 = model_array(w2_local, bias_2_local, output_1, delta_2, lr, model, alpha, TRAINING);
    int p;
    for (p = 0; p < ARRAY_SIZE; p++) {
        output_2[p] = array_out2.output_k[p];
    }
    // lastly calculate the final error with the derivative of mse after the last output
    if (model == 's') {
        delta_2[0] = -(cur_iter_y - output_2[0]) * output_2[0] * (1 - output_2[0]);
    }
    else if (model == 'r') {
        if (output_2[0] > 0)
            delta_2[0] = -(cur_iter_y - output_2[0]);
        else
            delta_2[0] = 0;
    }
    else if (model == 'l') {
        if (output_2[0] > 0)
            delta_2[0] = -(cur_iter_y - output_2[0]);
        else
            delta_2[0] = -(cur_iter_y- output_2[0]) * alpha;
    }
    else {
        // std::cout << "model invalid" << std::endl;
        break;
    }
    // run the backpropagation and update the array
    // start with layer 2
    Array array_back2 = model_array(w2_local, bias_2_local, output_1, delta_2, lr, model, alpha, TRAINING);
    int b;
    for (b = 0; b < ARRAY_SIZE; b++) {
        delta_1[b] = array_back2.delta_kmin1[b];
    }
    
    // update the weights and biases
    for (int n = 0; n<ARRAY_SIZE; n++) {
        bias_2_local[n] = array_back2.bias_change[n];
        for (int m = 0;m<ARRAY_SIZE; m++) {
            w2_local[n][m] = array_back2.weight_changes[n][m];
        }
    }

    //SEND BACK TO MAIN
    //OUTPUT_2, DELTA_1, BIAS_2_LOCAL, W2_LOCAL


    return output_array
}