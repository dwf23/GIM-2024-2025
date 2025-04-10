#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "GIM_comm.h"
#include "ap_int.h"
#include <bitset>


using namespace std;

int main()
{
    std::cout << "Starting Testbench" << std::endl;;
    comm_line alpha_rx;
    ap_uint<BITS> rx1;
    ap_uint<BITS> rx2;
    volatile bool flag = false;
    uint16_t p_rx1;
    uint16_t p_rx2;
    int debug;
    int interval = 100000;


#ifdef HW_COSIM
   // Run the Vitis HLS block and pass pointer to r_hw to allow writing of variable
    std::cout << "Beginning HLS Func" << std::endl;;
    std::thread receive_data_thread(receive_data, std::ref(alpha_rx), std::ref(flag),
    std::ref(rx1), std::ref(rx2), std::ref(debug));
    for (int i = 0; i < 32; i++){
        alpha_rx.write(i % 2);
        for (int j = 0; j < interval; j++); //delay for interval
    }


    receive_data_thread.join();
    flag = false;
    return 0;


    //for (int j = 0; j < interval; j++); //delay for interval
    //flag = false;
    //receive_data(alpha_rx, flag, rx1, rx2, debug);
    //return 0;



#endif

   return 0;
}