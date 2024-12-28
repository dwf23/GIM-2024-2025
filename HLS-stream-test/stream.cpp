// Enforcing good coding practices through these headers
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include "stream.h"

// Declare 32 bit integer with side channel
// we use side channel because HLS will infer TKEEP, TUSR, TLAST, TID, which are signals used to interface with other Axi stream cores like DMA
// TLast indicates that the stream is over
typedef ap_axis<32, 2, 5, 6> intSdCh;
// 32: Wdata -- width of data that we are trying to transmit
// 2: Wuser -- from my understanding, this is width of userdefined metadata for custom use
// side channel signals ae considered data signals
// 5: WID: width of the id signal used to define the data
// 6: WDest: width of destination ID? i think?

void doGain(hls::stream<intSdCh> &inStream, hls::stream<intSdCh> &outStream, int gain) {

    #pragma HLS INTERFACE axis port=outStream
    #pragma HLS INTERFACE axis port=inStream
    #pragma HLS INTERFACE s_axilite port=gain bundle = CRTL_BUS
    #pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS

    // the length of the stream will be 1000
    for (int i = 0; i < 1000; i++) {
        #pragma HLS PIPELINE

        // read is blocking, data is cached into local variable
        intSdCh valIn = inStream.read();
        intSdCh valOut;

        valOut.set_data(valIn.get_data() * gain);

        // copying over the other side channel data -- not a rule, can add anything depending on what your goal is
        valOut.set_keep(valIn.get_keep());
        valOut.set_strb(valIn.get_strb());
        valOut.set_user(valIn.get_user());
        valOut.set_last(valIn.get_last());
        valOut.set_id(valIn.get_id());
        valOut.set_dest(valIn.get_dest());

        // Send to the stream (Blocking if FIFO receiver is full)
        outStream.write(valOut);

    }
}
