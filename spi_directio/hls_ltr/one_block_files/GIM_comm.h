// #include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "hls_directio.h"
#include <iostream>
#include "ap_fixed.h"

#define ARRAY_SIZE 2

typedef hls::ap_hs<bool> comm_line;
typedef ap_fixed<16, 7> fixed_16;

void send_data(
    comm_line &alpha_transmit_line,
    fixed_16 data_out[ARRAY_SIZE]
);

void example_acc(
    fixed_16 w1, 
    fixed_16 w2, 
    comm_line &alpha_transmit_line
);