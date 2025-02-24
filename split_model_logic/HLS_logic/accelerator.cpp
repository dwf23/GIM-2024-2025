#include "gim_model.h"
#include <iostream>
#include <fstream>
using namespace std;

// now, we actually run the full model
Inference accelerator(fixed_16 w1[ARRAY_SIZE][ARRAY_SIZE], fixed_16 w2[ARRAY_SIZE][ARRAY_SIZE],
    fixed_16  bias_1[ARRAY_SIZE], fixed_16 bias_2[ARRAY_SIZE], fixed_16 output_inference[DATA_SIZE],
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

    //SET UP COMM

    //------------------------
    std::cout << "Main Board listening on COM" << endl;

    //Initialize variables needed
    fixed_16 data[2][4] = {{0, 0, 1, 1}, {0, 1, 0, 1}};
    
    // initializing internal arrays with zeros
    fixed_16 output_0[ARRAY_SIZE] = {0, 0};
    fixed_16 output_1[ARRAY_SIZE] = {0, 0};
    fixed_16 output_2[ARRAY_SIZE] = {0, 0};

    fixed_16 delta_1[ARRAY_SIZE] = {0, 0};
    fixed_16 delta_2[ARRAY_SIZE] = {0, 0};

    fixed_16 bias_2_local[ARRAY_SIZE]  = {0, 0};
    fixed_16 w2_local[ARRAY_SIZE][ARRAY_SIZE] = {{0, 0}, {0, 0}};

    // make local versions of the weights/biases
    fixed_16 w1_local[ARRAY_SIZE][ARRAY_SIZE] = {{0, 0}, {0, 0}};
    fixed_16 bias_1_local[ARRAY_SIZE] = {0, 0};
    for (int n = 0; n < ARRAY_SIZE; n++) {
        bias_1_local[n] = bias_1[n];
        for (int m = 0; m < ARRAY_SIZE; m++) {
            w1_local[n][m] = w1[n][m];
        }
    }

    // initializing the data for the XOR problem
    fixed_16 x1[4] = {0, 0, 1, 1};
    fixed_16 x2[4] = {0, 1, 0, 1};
    fixed_16 y[4] = {0, 1, 1, 0};

    char model = 'r';
    fixed_16 alpha = 0.1; // for leaky relu
    fixed_16 lr = 0.1; // learning rate
    // Send header first
    const char* header = "DATA";  // Use "DATA" during training
    const char*  end_signal = "END";// Use "END" when you want to terminate


    //Iterate through the alloted epochs
    cout << "Training for: " << NUM_ITERATIONS << " Iterations" << endl;
    int i;
    for (i=0; i<NUM_ITERATIONS;i++){
        #pragma HLS PIPELINE II=200
        int j;
        for(int j=0; j<DATA_SIZE; j++){ //go through each data point
        
        //Set up initial data
        int p;
        for (p = 0; p < ARRAY_SIZE; p++) {
            // setup the initial data input
            output_0[p] = data[p][j];
            // initialize the error backpropagation
            delta_1[p] = 0;
            delta_2[p] = 0;
        }

        // send header, output_1, y[j] and delta_2 to sub board
        //************************************************ */

        //WAIT TO RECEIVE FROM SUBBOARD
        //output_2, delta_1, bias_2_local, w2_local

        // make inferences for the return array if training has completed
        // this part is hard to generalize depending on the dataset.
        if (output_2[0] > 0.5) {
            output_array.inference[j] = 1;
        }
        else if (output_2[0] <= 0.5) {
            output_array.inference[j] = 0;
        }        

        //BACKPROPOGATION ---
        Array array_back1 = model_array(w1_local, bias_1_local, output_0, delta_1, lr, model, alpha, TRAINING);
        //update local w1, bias_1
        for (int n = 0; n < ARRAY_SIZE; n++) {
            bias_1_local[n] = array_back1.bias_change[n];
            for (int m = 0; m < ARRAY_SIZE; m++) {
                w1_local[n][m] = array_back1.weight_changes[n][m];
            }
        }


        if ((TRAINING==0)&&(j == (DATA_SIZE-1))){
            break;// only run this for all data points once if infering
        }
        }
    if (TRAINING == 0){
        break; // only run this once if we are infering
    }
    }//end of training iterations

    //send END to sub

    // produce the final weights to be used in inference
    for (int n = 0; n<ARRAY_SIZE; n++) {
        output_array.new_b1[n] = bias_1_local[n];
        output_array.new_b2[n] = bias_2_local[n];
        for (int m = 0;m<ARRAY_SIZE; m++) {
            output_array.new_w1[n][m] = w1_local[n][m];
            output_array.new_w2[n][m] = w2_local[n][m];
        }
    }

    output_array.inference = output_inference;

    return output_array;
}