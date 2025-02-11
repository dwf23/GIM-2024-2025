#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "hls_directio.h"

#include <iostream>
// #define DWIDTH 32

// typedef ap_axiu<DWIDTH, 2, 5, 6> pkt;
// typedef ap_axiu<DWIDTH, 2, 5, 6> packet;

// #define threshold 5000
// #define DATA 12000
void spi_master_logic(
    hls::ap_vld<int> data_out,
    hls::ap_vld<int> data_in
);