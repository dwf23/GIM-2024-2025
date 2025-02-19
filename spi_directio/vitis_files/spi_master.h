#ifndef __SPIMASTER_H__
#define __SPIMASTER_H__


#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "hls_directio.h"
#include <iostream>


void spi_master(
    hls::ap_none<bool> &sclk,     // SPI Clock
    hls::ap_none<bool> &cs,       // Chip Select
    hls::ap_none<bool> &mosi,     // Master Out Slave In
    hls::ap_vld<bool> &miso,     // Master In Slave Out
    hls::ap_vld<int> &data_out,  // Output data
    hls::ap_vld<int> &data_in    // Input data
);

#endif // __SPIMASTER_H__ not defined