#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "hls_directio.h"
#include <iostream>

#define NUM_RUNS 20
#define BITS 16
#define ARRAY_SIZE 2

typedef ap_fixed<16,7> fixed_16;
typedef hls::ap_hs<ap_uint<1>> comm_line;
typedef ap_uint<1> test_line;
struct pkt {fixed_16 data[ARRAY_SIZE]; int ID;};
typedef hls::stream<pkt> packet_line;



pkt receive_data(
    packet_line &data_out, comm_line &alpha_tx,
    volatile bool &flag, volatile fixed_16 rx1,
    volatile fixed_16 rx2

);

pkt example_acc(
    packet_line &data_in,
    packet_line &data_out
);

void send_data(
    comm_line &alpha_tx,
    packet_line &data_out,
    volatile bool &flag,
    int interval
);

void simple_test(test_line &alpha_tx, volatile bool &flag);