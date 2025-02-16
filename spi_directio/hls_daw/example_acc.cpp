#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include <iostream>
#include "GIM_comm.h"



int example_acc(int w1, int w2){

	stream my_stream;
    pkt example_pkt;
    miso miso;

    #pragma HLS interface ap_hs port=miso
    #pragma HLS interface mode=axis port=my_stream

    for (int i = 0; i< NUM_RUNS; i++) {
        w1 +=1;
        w2 +=2;
        std::cout << "W1 to buffer" << "\n";
        example_pkt.data = w1;
        my_stream.write(example_pkt);
        std::cout << "W2 to buffer" << "\n";
        example_pkt.data = w2;
        my_stream.write(example_pkt);
        send_data(miso, my_stream);
    }

    return 0;
    


}