#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include "stream.h"

typedef ap_axis<32, 2, 5, 6> intSdCh;

int main() {
    
    // defining the streams for I/O
    hls::stream<intSdCh> inputStream;
    hls::stream<intSdCh> outputStream;

    // Putting values into the input stream
    for (int i = 0; i < 1000; i++) {
        intSdCh valIn;
        valIn.set_data(i);
        valIn.set_keep(1);
        valIn.set_strb(1);
        valIn.set_user(1);
        valIn.set_id(0);
        valIn.set_dest(0);
        inputStream.write(valIn);
    }

    doGain(inputStream, outputStream, 5);

    for (int i = 0; i < 1000; i++) {
        intSdCh valOut;
        outputStream.read(valOut);
        printf("Value is %d\n", (int)valOut.data);
    }

    return 0;

}