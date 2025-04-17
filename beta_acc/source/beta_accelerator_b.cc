
#include <iomanip>
#include "xaccelerator_peripheral.h"
#include "xsend_data.h"
#include "xreceive_data.h"
#include <cmath>
#include <iostream>
#include "ap_fixed.h"
#include <xiltimer.h>

XAccelerator_peripheral Accelerator;
XSend_data Send_data;
XReceive_data Receive_data;

#include "xparameters.h"
//#include "xtime_l.h"
#include "xscugic.h"
using namespace std;

typedef ap_fixed<16,4> fixed_16;
//typedef ap_fixed<16, 4, AP_RND, AP_SAT> fixed_16;
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
	fixed_16 w2[2][2] = {{0.85397529, 0.49423684}, {0.0001, 0.001}};
	fixed_16 b2[2] = {0.42812233, 0.001};
	word_type w2_rein[2];
	word_type b2_rein[1];
    bool initialized;
    int epoch;
    bool complete;
    bool epoch_vld;
    bool initialized_vld;
    bool complete_vld;
    bool init_stop = false;


	int n = 0;
	for (int i = 0; i < 2; i++) {
		for (int j = 0; j < 2; j += 2) {
			w2_rein[n] = get_int_reinterpret_concat(w2[i][j], w2[i][j + 1]);
			n++;
		}
	}
	b2_rein[0] = get_int_reinterpret_concat(b2[0], b2[1]);


	cout << "Hardware start " << endl;
	XAccelerator_peripheral_Initialize(&Accelerator, 0);
    XSend_data_Initialize(&Send_data, 0);
    XReceive_data_Initialize(&Receive_data, 0);
    XAccelerator_peripheral_Write_w2_Words(&Accelerator, 0, w2_rein, 2);
    XAccelerator_peripheral_Write_bias_2_Words(&Accelerator, 0, b2_rein,1);
    XAccelerator_peripheral_Set_training(&Accelerator, 0);
    XAccelerator_peripheral_Set_test(&Accelerator, 1);
    XAccelerator_peripheral_Set_self_test(&Accelerator, true);

    XSend_data_Set_loop_r(&Send_data, true);
    XReceive_data_Set_loop_r(&Receive_data, true);

// #################  Training Begins  #############################

	XTime_GetTime(&training_start_time); //timer

    XSend_data_Start(&Send_data);
    XReceive_data_Start(&Receive_data);
    cout << "Check" << endl;
    XAccelerator_peripheral_Start(&Accelerator);
    do{
        epoch_vld = XAccelerator_peripheral_Get_epoch_vld(&Accelerator);
        if (epoch_vld){
            epoch = XAccelerator_peripheral_Get_epoch(&Accelerator);
            std::cout << "Epoch: " << epoch << std::endl;
        }
        
        initialized_vld = XAccelerator_peripheral_Get_initialized_flag_vld(&Accelerator);
        if (initialized_vld){
            initialized = XAccelerator_peripheral_Get_initialized_flag(&Accelerator);
            if (initialized && !init_stop){
                std::cout << "Beta Initialized" << std::endl;
                init_stop = true;
            }
        }

        complete_vld = XAccelerator_peripheral_Get_complete_vld(&Accelerator);
        if(complete_vld){
            complete = XAccelerator_peripheral_Get_complete(&Accelerator);
            if (complete){
                std::cout << "Beta has finished training" << std::endl;
            }
        }

    } while(!XAccelerator_peripheral_IsDone(&Accelerator));

    XAccelerator_peripheral_Return inference_result = XAccelerator_peripheral_Get_return(&Accelerator);
    fixed_16 inference[4];
	inference[0] = get_fixed_reinterpret_lower(inference_result.word_0);
	inference[1] = get_fixed_reinterpret_upper(inference_result.word_0);
	inference[2] = get_fixed_reinterpret_lower(inference_result.word_1);
	inference[3] = get_fixed_reinterpret_upper(inference_result.word_1);

    std::cout << "Inference Output: " << inference[0] << " , " << inference[1] << " , " <<
    inference[2] << " , " << inference[3] << std::endl;

	// XAccelerator_peripheral_Return result = XAccelerator_peripheral_Get_return(&Accelerator);
	XTime_GetTime(&training_stop_time);


	// fixed_16 out_w1[2][2];
	// fixed_16 out_w2[2][2];
	// fixed_16 out_b1[2];
	// fixed_16 out_b2[2];
// #################  Training Finishes ############################

    // This is only for printing out the results. Doesn't need to convert back to fixed_16
	// for (int i = 0; i < 2; i++) {
	// 		out_w1[0][i]     = get_fixed_reinterpret_lower(result.word_2);
	// 		out_w1[0][i + 1] = get_fixed_reinterpret_upper(result.word_2);
	// }
	// for (int i = 0; i < 2; i++) {
	// 		out_w1[1][i]     = get_fixed_reinterpret_lower(result.word_3);
	// 		out_w1[1][i + 1] = get_fixed_reinterpret_upper(result.word_3);
	// }
	// for (int i = 0; i < 2; i++) {
	// 		out_w2[0][i]     = get_fixed_reinterpret_lower(result.word_4);
	// 		out_w2[0][i + 1] = get_fixed_reinterpret_upper(result.word_4);
	// }
	// for (int i = 0; i < 2; i++) {
	// 		out_w2[0][i]     = get_fixed_reinterpret_lower(result.word_5);
	// 		out_w2[0][i + 1] = get_fixed_reinterpret_upper(result.word_5);
	// }
	// for (int i = 0; i < 2; i++) {
	// 		out_b1[i]     = get_fixed_reinterpret_lower(result.word_6);
	// 		out_b1[i + 1] = get_fixed_reinterpret_upper(result.word_6);
	// }
	// for (int i = 0; i < 2; i++) {
	// 		out_b2[i]     = get_fixed_reinterpret_lower(result.word_7);
	// 		out_b2[i + 1] = get_fixed_reinterpret_upper(result.word_7);
	// }


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