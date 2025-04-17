#include "GIM_comm.h"
#include <iostream>

bool pulse_gen(bool start){
    #pragma HLS INTERFACE mode=s_axilite port=start


    return true;
}