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
    comm_line &alpha_tx,
    packet_line &data_out,
    volatile bool &flag,
    int interval
);


void example_acc(
    fixed_16 out_w1, 
    fixed_16 out_w2, 
    fixed_16 in_w1,
    fixed_16 in_w2, 
    packet_line &data_out, 
    packet_line &data_in, 
    bool expecting_input
);

pkt receive_data(
    packet_line &data_in, 
    comm_line &alpha_tx,
    volatile bool &flag);