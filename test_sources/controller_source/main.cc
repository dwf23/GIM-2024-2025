
#include <iomanip>
#include "xaccelerator_controller.h"
#include "xsend_data.h"
#include "xreceive_data.h"
#include <cmath>
#include <iostream>
#include "ap_fixed.h"
#include <xiltimer.h>

XAccelerator_controller Accelerator;
XSend_data Send_data;
XReceive_data Receive_data;

#include "xparameters.h"
#include "xscugic.h"
using namespace std;

typedef ap_fixed<16,4> fixed_16;
int get_int_reinterpret(fixed_16 x) {
	return *(reinterpret_cast<short *>(&x));
}
fixed_16 get_fixed_reinterpret(int x) {
	return *(reinterpret_cast<fixed_16 *>(&x));
}
word_type get_int_reinterpret_concat(fixed_16 x, fixed_16 y) {
	unsigned int xt = get_int_reinterpret(x);
	unsigned int yt = get_int_reinterpret(y);
	yt = yt << 16;
	return xt + yt;
}
fixed_16 get_fixed_reinterpret_upper(int x) {
	unsigned int xtemp = x;
	xtemp = xtemp >> 16;
	return get_fixed_reinterpret(xtemp);
}
fixed_16 get_fixed_reinterpret_lower(int x) {
	unsigned int xtemp = x;
	xtemp &= 0x0000FFFF;
	return get_fixed_reinterpret(xtemp);
}
int main() {
	cout << "--- Start of the Program ---" << endl;

	// Variables for timing and counts used for application cycle counts and timing

	XTime training_start_time; //u64
	XTime training_stop_time;
    bool complete_flag = false;
    bool complete_flag_vld = false;
    bool initialized = false;
    bool initialized_prev = false;
    bool initialized_vld = false;
    bool initialized_1 = false;
    bool initialized_1_prev = false;
    bool initialized_1_vld = false;
    bool initialized_2 = false;
    bool initialized_2_prev = false;
    bool initialized_2_vld = false;
    bool values_set_up = false;
    bool values_set_up_vld = false;
    bool epochs_complete = false;
    bool epochs_complete_vld = false;
    int data_point = 0;
    bool data_point_vld = false;
    int iteration = 0;
    bool iteration_vld = false;
    bool loop = true;

	fixed_16 w1[2][2] = {{0.13457995, 0.51357812}, {0.18443987, 0.78533515}};
	fixed_16 b1[2] = {0.50524609, 0.0652865};
	word_type w1_rein[2];
	word_type b1_rein[1];
	int n = 0;
	for (int i = 0; i < 2; i++) {
		for (int j = 0; j < 2; j += 2) {
			w1_rein[n] = get_int_reinterpret_concat(w1[i][j], w1[i][j + 1]);
			n++;
		}
	}

	b1_rein[0] = get_int_reinterpret_concat(b1[0], b1[1]);


	cout << "Hardware start " << endl;
	XAccelerator_controller_Initialize(&Accelerator, 0);
    XSend_data_Initialize(&Send_data, 0);
    XReceive_data_Initialize(&Receive_data, 0);
    XAccelerator_controller_Write_w1_Words(&Accelerator, 0, w1_rein, 2);
    XAccelerator_controller_Write_bias_1_Words(&Accelerator, 0, b1_rein,1);

    cout << "Values initalized" << endl;
    
    XAccelerator_controller_Set_training(&Accelerator, true);
    XAccelerator_controller_Set_expecting_input(&Accelerator, true);
    // XAccelerator_controller_Set_initialized_i(&Accelerator, false);
    XAccelerator_controller_Set_method(&Accelerator, 2);

    cout << "Values set" << endl;

    XSend_data_Set_loop_r(&Send_data, loop);
    XReceive_data_Set_loop_r(&Receive_data, loop);
    // XSend_data_Set_loop_r(&Send_data, true);
    // XReceive_data_Set_loop_r(&Receive_data, true);

    cout << "Loop set" << endl;


// #################  Training Begins  #############################

	XTime_GetTime(&training_start_time); //timer

    cout << "Timer started" << endl;

    XSend_data_Start(&Send_data);
    cout << "Send data started" << endl;
    XReceive_data_Start(&Receive_data);
    cout << "Receive data started" << endl;
    XAccelerator_controller_Start(&Accelerator);
	do {
        initialized_vld = XAccelerator_controller_Get_initialized_vld(&Accelerator);
        if(initialized_vld){
            initialized = XAccelerator_controller_Get_initialized(&Accelerator);
            if(initialized & !initialized_prev){
                cout << "Initialized" << endl;
                initialized_prev = true;
            }
        }
        initialized_1_vld = XAccelerator_controller_Get_initialized_1_vld(&Accelerator);
        if(initialized_1_vld){
            initialized_1 = XAccelerator_controller_Get_initialized_1(&Accelerator);
            if(initialized_1 & !initialized_1_prev){
                cout << "Initialized 1" << endl;
                initialized_1_prev = true;
            }
        }
        initialized_2_vld = XAccelerator_controller_Get_initialized_2_vld(&Accelerator);
        if(initialized_2_vld){
            initialized_2 = XAccelerator_controller_Get_initialized_2(&Accelerator);
            if(initialized_2 & !initialized_2_prev){
                cout << "Initialized 2" << endl;
                initialized_2_prev = true;
            }
        }
        values_set_up_vld = XAccelerator_controller_Get_values_set_up_vld(&Accelerator);
        if(values_set_up_vld){
            values_set_up = XAccelerator_controller_Get_values_set_up(&Accelerator);
            if(values_set_up){
                cout << "Values set up" << endl;
            }
        }
        epochs_complete_vld = XAccelerator_controller_Get_epochs_complete_vld(&Accelerator);
        if(epochs_complete_vld){
            epochs_complete = XAccelerator_controller_Get_epochs_complete(&Accelerator);
            if(epochs_complete){
                cout << "Epochs complete" << endl;
            }
        }
        data_point_vld = XAccelerator_controller_Get_data_point_vld(&Accelerator);
        if(data_point_vld){
            data_point = XAccelerator_controller_Get_data_point(&Accelerator);
            cout << "Data point: " << data_point << endl;
        }
        iteration_vld = XAccelerator_controller_Get_iteration_vld(&Accelerator);
        if(iteration_vld){
            iteration = XAccelerator_controller_Get_iteration(&Accelerator);
            cout << "Iteration: " << iteration << endl;
        }
        complete_flag_vld = XAccelerator_controller_Get_complete_flag_vld(&Accelerator);
        if(complete_flag_vld){
            complete_flag = XAccelerator_controller_Get_complete_flag(&Accelerator);
            if(complete_flag){
                cout << "Alpha run complete" << endl;                
            }
        }
	} while(!XAccelerator_controller_IsDone(&Accelerator));

    cout << "Left loop" << endl;


    XAccelerator_controller_Return result = XAccelerator_controller_Get_return(&Accelerator);
	XTime_GetTime(&training_stop_time);


	fixed_16 out_w1[2][2];
	fixed_16 out_w2[2][2];
	fixed_16 out_b1[2];
	fixed_16 out_b2[2];
// #################  Training Finishes ############################

    // This is only for printing out the results. Doesn't need to convert back to fixed_16
	for (int i = 0; i < 2; i++) {
			out_w1[0][i]     = get_fixed_reinterpret_lower(result.word_2);
			out_w1[0][i + 1] = get_fixed_reinterpret_upper(result.word_2);
	}
	for (int i = 0; i < 2; i++) {
			out_w1[1][i]     = get_fixed_reinterpret_lower(result.word_3);
			out_w1[1][i + 1] = get_fixed_reinterpret_upper(result.word_3);
	}
	for (int i = 0; i < 2; i++) {
			out_w2[0][i]     = get_fixed_reinterpret_lower(result.word_4);
			out_w2[0][i + 1] = get_fixed_reinterpret_upper(result.word_4);
	}
	for (int i = 0; i < 2; i++) {
			out_w2[0][i]     = get_fixed_reinterpret_lower(result.word_5);
			out_w2[0][i + 1] = get_fixed_reinterpret_upper(result.word_5);
	}
	for (int i = 0; i < 2; i++) {
			out_b1[i]     = get_fixed_reinterpret_lower(result.word_6);
			out_b1[i + 1] = get_fixed_reinterpret_upper(result.word_6);
	}
	for (int i = 0; i < 2; i++) {
			out_b2[i]     = get_fixed_reinterpret_lower(result.word_7);
			out_b2[i + 1] = get_fixed_reinterpret_upper(result.word_7);
	}

    cout << out_w1[0][0].to_float() << endl;
    cout << out_w1[0][1].to_float() << endl;
    cout << out_w1[1][0].to_float() << endl;
    cout << out_w1[1][1].to_float() << endl;


// 	//temporary arrays to pass in struct
// 	XTime inference_start_time;
// 	XTime inference_stop_time;
// 	word_type w1_inference[2];
// 	word_type w2_inference[2];
// 	word_type b1_inference[1];
// 	word_type b2_inference[1];
// 	w1_inference[0] = result.word_2;
// 	w1_inference[1] = result.word_3;
// 	w2_inference[0] = result.word_4;
// 	w2_inference[1] = result.word_5;
// 	b1_inference[0] = result.word_6;
// 	b2_inference[0] = result.word_7;

// 	XAccelerator_Initialize(&Accelerator, 0);
// 	XAccelerator_Write_w1_Words(&Accelerator, 0, w1_inference, 2);
// 	XAccelerator_Write_w2_Words(&Accelerator, 0, w2_inference, 2);
// 	XAccelerator_Write_bias_1_Words(&Accelerator, 0, b1_inference,1);
// 	XAccelerator_Write_bias_2_Words(&Accelerator, 0, b2_inference,1);
// 	XAccelerator_Set_training(&Accelerator, false);

// // #################  Inference Begins  #############################

// 	XTime_GetTime(&inference_start_time);
// 	XAccelerator_Start(&Accelerator);

// 		do {
// 		} while (!XAccelerator_IsDone(&Accelerator));

// 	XAccelerator_Return inference_result = XAccelerator_Get_return(&Accelerator);
// 	XTime_GetTime(&inference_stop_time);

// 	fixed_16 inference[4];
// 	inference[0] = get_fixed_reinterpret_lower(inference_result.word_0);
// 	inference[1] = get_fixed_reinterpret_upper(inference_result.word_0);
// 	inference[2] = get_fixed_reinterpret_lower(inference_result.word_1);
// 	inference[3] = get_fixed_reinterpret_upper(inference_result.word_1);


// // #################  Inference finishes  #############################
// 	unsigned long long training_ticks, inference_ticks;
// 	double training_time, inference_time;
// 	training_ticks = 300*(training_stop_time - training_start_time);
// 	training_time = (double) training_ticks / COUNTS_PER_SECOND;
// 	cout << "training ticks: " <<  std::fixed <<training_ticks << endl;
// 	//cout << "training time(sec): " << std::fixed << training_time << endl;

// 	inference_ticks = 2*(inference_stop_time - inference_start_time);
// 	inference_time = (double) inference_ticks / COUNTS_PER_SECOND;
// 	cout << "inference ticks:" <<  std::fixed <<inference_ticks << endl;
// 	//cout << "inference time(sec):" << std::fixed <<inference_time << endl;


// 	cout << "result = {" << endl;
// 	for (int i = 0; i < 10; i++) {
// 			cout << std::fixed << std::setw(10) << inferencer[i] << "\t\t";
// 		cout << "\n";
// 	}
// 	cout << "}" << endl << endl;
	cout << "--- End of the Program ---" << endl;

	return 0;
}