#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "hls_directio.h"
#include <iostream>

#define NUM_RUNS 20
#define BITS 16

typedef ap_axis<BITS, 0, 0, 0> pkt;
typedef hls::stream<pkt> stream;
typedef ap_fixed<16,7> fixed_16;
typedef hls::ap_hs<ap_uint<1>> dataline;


bool pulse_gen(bool start);

fixed_16 receive_data(
    dataline &data_in

);

int example_acc(
    dataline &data_in,
    bool start
);