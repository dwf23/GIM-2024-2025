#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "hls_directio.h"
#include <iostream>

#define NUM_RUNS 20
#define BITS 32

typedef hls::ap_hs<ap_uint<32>> mosi;
typedef hls::ap_hs<ap_uint<32>> miso;
typedef ap_axis<BITS, 0, 0, 0> pkt;
typedef hls::stream<pkt> stream;


void send_data(
    miso &data_out, 
    pkt &example_pkt
);

void recv_data(
    mosi &data_in,
    hls::stream<pkt>&in

);

int example_acc(
    ap_uint<32> w1,
    ap_uint<32> w2,
    miso &data_out,
    bool start
);