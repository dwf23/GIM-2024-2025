#include "spi_master.h"
#include <hls_stream.h>
#include <iostream>
#include <unistd.h>
#include <csignal>
#include <atomic>
#include <ap_fixed.h>

using namespace std;
// We are sending fixed16 from gim_model.h
// 2 element arrays of fixed_16 data points
// LSB first


int main() 
{
    hls::ap_none<bool> sclk;
    hls::ap_none<bool> cs;
    hls::ap_none<bool> mosi;
    hls::ap_vld<bool> miso;
    hls::ap_vld<int> data_out;
    hls::ap_vld<int> data_in;
    hls::ap_vld<int> master_data_out;
    hls::ap_vld<int> master_data_in;

    volatile bool flag = true;

    // Start the spi_master function in a separate thread or process
    std::thread spi_master_thread(spi_master, std::ref(sclk), std::ref(cs), std::ref(mosi), std::ref(miso), std::ref(master_data_out), std::ref(master_data_in), std::ref(flag));


    // // Assign data to data_out when ready to transfer
    int test_data = 0x123456789ABCDEF0; // Example 64-bit data to send
    master_data_out.write(test_data);

    // Wait for the transfer to complete
    std::this_thread::sleep_for(std::chrono::milliseconds(100));

    // Check the result
    int received_data = master_data_in.read();
    std::cout << "Received data: " << std::hex << received_data << std::endl;

    // Verify the result
    if (received_data == test_data) {
        std::cout << "Test passed!" << std::endl;
        flag = false;
        spi_master_thread.join();
        return 0;
    } else {
        std::cout << "Test failed!" << std::endl;
        flag = false;
        spi_master_thread.join();
        return 0;
    }

    // Join the thread
    spi_master_thread.join();

    return 0;
}