#include "GIM_comm.h"
#include <iostream>

bool pulse_gen(bool start){
    #pragma HLS INTERFACE mode=s_axilite port=start
    #pragma HLS INTERFACE mode=s_axilite port=return
    #pragma HLS INTERFACE ap_ctrl_non port=return


    return true;
}
