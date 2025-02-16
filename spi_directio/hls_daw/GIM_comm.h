#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "hls_directio.h"
#include <iostream>

typedef hls::ap_hs<int> mosi;
typedef hls::ap_hs<int> miso;
const int BITS = 32;
typedef ap_axis<BITS, 0, 0, 0> pkt;
typedef hls::stream<pkt> stream;

#define NUM_RUNS 4

void send_data(
    miso &data_out, 
    hls::stream<pkt>&out
);

void recv_data(
    mosi &data_in,
    hls::stream<pkt>&in

);

int example_acc(
    int w1,
    int w2
);