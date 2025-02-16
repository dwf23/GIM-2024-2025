#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "hls_directio.h"
#include <iostream>

typedef hls::ap_hs<int> mosi;
typedef hls::ap_hs<int> mosi;
const int BITS = 32;
typedef ap_axis<BITS, 0, 0, 0> pkt;

void send_data(
    miso &data_out, 
    hls::stream<pkt>&out
)

void recv_data(
    mosi &data_in,
    hls::stream<pkt>&in;

)