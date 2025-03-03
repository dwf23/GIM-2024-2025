// #include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_directio.h"
#include <iostream>
#include "ap_fixed.h"
#include <hls_stream.h>
#include <thread>

#define ARRAY_SIZE 2

typedef ap_fixed<16, 7> fixed_16;
typedef hls::ap_hs<bool> comm_line;
struct pkt {fixed_16 data[ARRAY_SIZE]; int ID;};
typedef hls::stream<pkt> packet_line;
const int BITS = 16*ARRAY_SIZE;


void send_data(
    comm_line &alpha_transmit_line,
    hls::stream<pkt> &data_out,
    volatile bool &flag,
    int interval
);


void example_acc(
    fixed_16 out_w1, 
    fixed_16 out_w2, 
    fixed_16 in_w1,
    fixed_16 in_w2,
    hls::stream<pkt> &data_out,
    hls::stream<pkt> &data_in,
    int interval,
    bool expecting_input
);