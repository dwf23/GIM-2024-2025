// This is the test bench file for the GIM@Rice accelerator in HLS
#include "gim_model_controller.h"
using namespace std;

int main() {
    std::cout << "Starting Testbench" << "\n";
    // matrices initialized with random values from Python, known to converge
    fixed_16 w1[ARRAY_SIZE][ARRAY_SIZE] = {{0.13457995, 0.51357812}, {0.18443987, 0.78533515}};
    fixed_16 bias_1[ARRAY_SIZE] = {0.50524609, 0.0652865};
    hls::stream<pkt> data_out;
    hls::stream<pkt> data_in;
    int interval_in = 100;
    int interval_out = 100;
    bool expecting_input = true;
    // bool flag = true;

#ifdef HW_COSIM
    // Run the Vitis HLS block and pass pointer to r_hw to allow writing of variable
    std::cout << "Beginning HLS Func" << "\n";
    // training the array
    accelerator_controller(w1, bias_1, 1, data_out, data_in, expecting_input);
#endif

    // running inference using the trained accelerator
    // Inference output = accelerator(training.new_w1, training.new_b1, 0);

    // capture the outputs of the accelerator
    // cout << "The following are the predictions of the DNN:" << endl;
    // cout << output.inference[0] << endl;
    // cout << output.inference[1] << endl;
    // cout << output.inference[2] << endl;
    // cout << output.inference[3] << endl;
    return 0;
}