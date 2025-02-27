#include "GIM_comm.h"
#include <iostream>
#include <memory>

bool pulse_gen(bool start){
    #pragma HLS INTERFACE ap_ctrl_none port=return
    #pragma HLS INTERFACE s_axilite port=start 
    #pragma HLS INTERFACE ap_none port=return 

    return true;
    
}
