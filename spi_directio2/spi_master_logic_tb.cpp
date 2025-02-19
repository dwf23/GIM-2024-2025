#include "spi_master_logic.h"
#include <hls_stream.h>
#include <iostream>
#include <thread>

using namespace std;

int main() {
    hls::ap_vld<int> master_data_out;
    hls::ap_vld<int> master_data_in;

    spi_master_logic(master_data_out, master_data_in);
    int output_data = master_data_out.read();

    if(output_data == 268435455){
        std::cout << "Test 1 passed" << std::endl;
    } else{
        std::cout << "Test 1 failed" << std::endl;
        return 1;
    }

    master_data_in.write(1);

    spi_master_logic(master_data_out, master_data_in);
    
    output_data = master_data_out.read();
    if(output_data == 2){
        std::cout << "Test 2 passed" << std::endl;
        return 0;
    } else{
        std::cout << "Test 2 failed" << std::endl;
        return 1;
    }

    return 0;
}