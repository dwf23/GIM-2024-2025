#ifndef STREAM_H
#define STREAM_H

#include <mutex>                 // Needed for std::mutex
#include <condition_variable>    // Needed for std::condition_variable
#include <hls_stream.h>
#include <ap_axi_sdata.h>

typedef ap_axis<32, 2, 5, 6> intSdCh;

void doGain(hls::stream<intSdCh> &inStream, hls::stream<intSdCh> &outStream, int gain);
#endif