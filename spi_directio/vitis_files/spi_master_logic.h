#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "hls_directio.h"
#include <iostream>

void spi_master_logic(
    hls::ap_vld<int> &data_out,
    hls::ap_vld<int> &data_in
);