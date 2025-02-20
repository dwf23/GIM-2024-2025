#include "gim_model.h"
#include "spi_controller.h"
#include <iostream>
#include <thread>
#include <chrono>

// void delay (int cycles){
//     for (volatile int i = 0; i < cycles; i++);
// }

void spi_master_logic(
    hls::ap_vld<int> &data_out,
    hls::ap_vld<int> &data_in
) {
    #pragma HLS INTERFACE mode=ap_ctrl_none port=return
    
    int test_data = 268435455; // Default data to send
    int reading_result;
    
    // If I receive any data, then i change my output to be the input data *2
    if(data_in.read_nb(reading_result)){
        std::cout <<"Received data" << reading_result << std::endl;
        test_data = reading_result *2;
    }

    data_out.write(test_data);

    std::cout << "Sent data" << test_data << std::endl;
}
