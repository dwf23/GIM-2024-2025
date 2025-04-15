// This is the test bench file for the GIM@Rice accelerator in HLS
#include "gim_model_controller.h"
using namespace std;

int main() {
    std::cout << "Starting Testbench" << "\n";
    // matrices initialized with random values from Python, known to converge
    fixed_16 w1[ARRAY_SIZE][ARRAY_SIZE] = {{0.13457995, 0.51357812}, {0.18443987, 0.78533515}};
    fixed_16 bias_1[ARRAY_SIZE] = {0.50524609, 0.0652865};
    packet_line data_out;
    packet_line data_in;
    axis<fixed_16, 0, 1, 1> result(0, 0, 0, 0);
    axis<fixed_16, 0, 1, 1> initialization_packet(2, 1, 0, 1);
    //axis<fixed_16, 0, 1, 1> initialization_packet(4, 3, 0, 1);
    int interval_in = 100;
    int interval_out = 100;
    bool expecting_input = true;
    bool initialized = false;
    fixed_16 training = true;
    bool complete_flag = false;
    bool initialized_1 = false;
    bool initialized_2 = false;
    bool values_set_up = false;
    bool sent = false;
    bool received = false;
    bool epochs_complete = false;
    int method = 3;
    int iteration = 0;
    int data_point = 0;
    // bool flag = true;

#ifdef HW_COSIM
    // Run the Vitis HLS block and pass pointer to r_hw to allow writing of variable
    std::cout << "Beginning HLS Func" << "\n";
    // training the array
    std::thread accelerator_thread(accelerator_controller, std::ref(w1), std::ref(bias_1), std::ref(training), std::ref(data_out), std::ref(data_in), std::ref(expecting_input), std::ref(initialized), std::ref(complete_flag), std::ref(method), std::ref(initialized_1), std::ref(initialized_2), std::ref(values_set_up), std::ref(sent), std::ref(received), std::ref(epochs_complete), std::ref(iteration), std::ref(data_point));

    // comment this out for self test
    // while(!initialized){
    //     if(!data_out.empty()){
    //         data_out.read(result);
    //         while(data_in.full());
    //         result.dest = 1;
    //         data_in.write(initialization_packet);
    //         // std::cout << "wrote back on iteration " << iteration << " and data point " << data_point << std::endl;
    //     }
    // }
    // keep this in for either test
    while(!complete_flag){
        if(!data_out.empty()){
            data_out.read(result);
            while(data_in.full());
            result.dest = 1;
            data_in.write(result);
            //std::cout << "wrote back on iteration " << iteration << " and data point " << data_point << std::endl;
        }
    }
    

    accelerator_thread.join();

#endif
    // inference output will be shwon on beta
    return 0;
}