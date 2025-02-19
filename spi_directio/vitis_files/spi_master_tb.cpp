#include "spi_master.h"
#include <hls_stream.h>
#include <iostream>

using namespace std;

// void spi_receiever(
//     hls::ap_hs<bool> &sclk,
//     hls::ap_hs<bool> &cs,
//     hls::ap_hs<bool> &mosi,
//     hls::ap_hs<bool> &miso,
//     hls::ap_hs<int> &data_out,
//     hls::ap_hs<int> &data_in
// ) {
//     const int BITS = 64;
//     int received_data = 0;
//     bool prev_sclk = 0;

//     cout << "test 1" << endl;

//     while(!cs.valid());

//     cout << "test 3" << endl;
//     // cout << "CS:" << cs.read() << endl;
//     if (!cs.read()) {
//         cout << "test 2" << endl;
//         for (int i = 0; i < BITS; i++) {
//             cout << "Testing 4" << endl;
//             while (!sclk.valid() || sclk.read() == prev_sclk);
//             prev_sclk = !prev_sclk;

//             received_data = (received_data << 1) | mosi.read(); // Read bit from MOSI
//             cout << "Testing Point" << received_data << endl;
//             while (!sclk.valid() || sclk.read() == prev_sclk); // Wait for clock low
//             cout << "Testing 2" << endl;
//             if (data_in.valid()) {
//                 miso.write((data_in.read() >> (BITS - 1 - i)) & 1); // Send bit to MISO
//             }
//             prev_sclk = !prev_sclk;
//             cout << "Testing 3 " << endl;
//         }
//         data_out.write(received_data); // Store received data
//     }
// }

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

    // Start the spi_master function in a separate thread or process
    std::thread spi_master_thread(spi_master, std::ref(sclk), std::ref(cs), std::ref(mosi), std::ref(miso), std::ref(master_data_out), std::ref(master_data_in));


    // Assign data to data_out when ready to transfer
    int test_data = 0x123456789ABCDEF0; // Example 64-bit data to send
    master_data_out.write(test_data);

    // Wait for the transfer to complete
    std::this_thread::sleep_for(std::chrono::milliseconds(100));

    // Check the result
    int received_data = master_data_in.read();
    std::cout << "Received data: " << std::hex << received_data << std::endl;

    // Join the thread
    spi_master_thread.join();

    return 0;
}