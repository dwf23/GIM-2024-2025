#include "GIM_comm.h"
#include <iostream>

bool pulse_gen(){
    #pragma HLS INTERFACE mode=s_axilite port=return
    #pragma HLS INTERFACE ap_ctrl_none port=return

    return true;
    
}
