// This is the test bench file for the GIM@Rice accelerator in HLS
#include "gim_model_peripheral.h"
using namespace std;

int main() {
    std::cout << "Starting Testbench" << "\n";
    // matrices initialized with random values from Python, known to converge
    fixed_16 w2[ARRAY_SIZE][ARRAY_SIZE] = {{0.85397529, 0.49423684}, {0, 0}};
    fixed_16 bias_2[ARRAY_SIZE] = {0.42812233, 0};

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
    Inference training = accelerator_peripheral(w2, bias_2, 1, data_out, data_in, expecting_input);
#endif
    // running inference using the trained accelerator
    Inference output = accelerator_peripheral(training.new_w2, training.new_b2, 0, data_out, data_in, expecting_input);

    // capture the outputs of the accelerator
    cout << "The following are the predictions of the DNN:" << endl;
    cout << output.inference[0] << endl;
    cout << output.inference[1] << endl;
    cout << output.inference[2] << endl;
    cout << output.inference[3] << endl;

    return 0;
}