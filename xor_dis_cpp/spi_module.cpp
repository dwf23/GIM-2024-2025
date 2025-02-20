#include "gim_model.h"
#include "dut.h"
#include <hls_stream.h>
#include <iostream>

void spi_master(
    hls::ap_none<bool> &sclk,
    hls::ap_none<bool> &cs,
    hls::ap_none<bool> &mosi,
    hls::ap_vld<bool> &miso,
    hls::ap_vld<int> &data_out,
    hls::ap_vld<int> &data_in
) {
    #pragma HLS INTERFACE mode=ap_ctrl_none port=return
    #pragma HLS INTERFACE mode=set_in
    const int BITS = 64;
    int received_data = 0;
    int send_data = 0;
    bool transfer_active = false;

    while (true) {
        if (data_out.valid() && !transfer_active) {
            send_data = data_out.read();
            transfer_active = true;
            cs.write(0);  // Activate chip select
            std::cout << "Chip Select Activated" << std::endl;
        }

        if (transfer_active) {
            for (int i = 0; i < BITS; i++) {
                #pragma HLS UNROLL

                // while (!sclk.valid() || sclk.read() == 1); // Wait for clock low
                sclk.write(0);

                mosi.write((send_data >> (BITS - 1 - i)) & 1); // Send bit
                std::cout << "Writing bit" << ((send_data >> (BITS - 1 - i)) & 1) << std::endl;

                // while (!sclk.valid() || sclk.read() == 0); // Wait for clock high
                sclk.write(1);

                if (miso.valid()) {
                    received_data = (received_data << 1) | miso.read(); // Read bit
                    std::cout << "Reading data" << received_data << std::endl;
                }
            }

            cs.write(1);  // Deactivate chip select
            data_in.write(received_data);  // Store received data
            transfer_active = false;
        } else {
            // Continuously monitor MISO line for incoming data
            if (miso.valid()) {
                received_data = (received_data << 1) | miso.read(); // Read bit
                data_in.write(received_data);  // Store received data
                std::cout << "Continuous Reading data" << received_data << std::endl;
            }
        }
    }
}