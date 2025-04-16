// This is the test bench file for the GIM@Rice accelerator in HLS
#include "gim_model_peripheral.h"
using namespace std;

int main() {
    std::cout << "Starting Testbench" << "\n";
    // matrices initialized with random values from Python, known to converge
    fixed_16 w2[ARRAY_SIZE][ARRAY_SIZE] = {{0.13457995, 0.51357812}, {0.18443987, 0.78533515}};
    fixed_16 bias_2[ARRAY_SIZE] = {0.50524609, 0.0652865};
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
    bool self_test = true;
    int epoch = 0;
    bool complete = false;
    int test = 9;

#ifdef HW_COSIM
    // Run the Vitis HLS block and pass pointer to r_hw to allow writing of variable
    std::cout << "Beginning HLS Func" << "\n";
    // training the array
    //std::thread accelerator_thread(accelerator_peripheral, std::ref(w2), std::ref(bias_2), std::ref(training), std::ref(data_in), std::ref(data_out), std::ref(initialized), std::ref(self_test), std::ref(epoch), std::ref(complete), std::ref(test));

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
    for(int i = 1; i < 10; i++){
        test = i;
        std::thread accelerator_thread(acc_beta, std::ref(w2), std::ref(bias_2), std::ref(training), std::ref(data_in), std::ref(data_out), std::ref(initialized), std::ref(self_test), std::ref(epoch), std::ref(complete), std::ref(test));
        while(!complete){
            if(!data_out.empty()){
                data_out.read(result);
                std::cout << "received from beta board" << std::endl;
                while(data_in.full());
                result.dest = 1;
                data_in.write(result);
                std::cout << "wrote back on iteration " << epoch << result.data[0] << ", " << result.data[1] << std::endl;
            }
        }
        std::cout << "Passed test " << i << std::endl;
        accelerator_thread.join();
        complete = false;

    }

    
    std::cout << "End of Testbench" << std::endl;
    

#endif
    // inference output will be shwon on beta
    return 0;
}