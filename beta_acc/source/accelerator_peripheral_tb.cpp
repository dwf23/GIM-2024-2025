// This is the test bench file for the GIM@Rice accelerator in HLS
#include "gim_model_peripheral.h"
#include "ap_fixed.h"
using namespace std;

typedef ap_fixed<16,4> fixed_16;

void foo(fixed_16 w2[ARRAY_SIZE][ARRAY_SIZE],
        fixed_16 bias_2[ARRAY_SIZE],
        fixed_16 training,
        packet_line &rx_stream, 
        packet_line &tx_stream, 
        bool expecting_input, 
        bool &initialized,
        bool self_test,
        int &epoch) {
    
    Inference output;

    Inference prediciton;

    output = accelerator_peripheral(w2, bias_2, 1, rx_stream, tx_stream, expecting_input, initialized,
    self_test, epoch);

    initialized = true;
    prediciton = accelerator_peripheral(output.new_w2, output.new_b2, 0, rx_stream,
    tx_stream, expecting_input, initialized, self_test, epoch);

    cout << "The following are the predictions of the DNN:" << endl;
    cout << output.inference[0] << endl;
    cout << output.inference[1] << endl;
    cout << output.inference[2] << endl;
    cout << output.inference[3] << endl;
    
}

int main() {
    std::cout << "Starting Testbench" << "\n";
    // matrices initialized with random values from Python, known to converge
    fixed_16 w2[ARRAY_SIZE][ARRAY_SIZE] = {{0.85397529, 0.49423684}, {0, 0}};
    fixed_16 bias_2[ARRAY_SIZE] = {0.42812233, 0};

    packet_line rx_stream;
    packet_line tx_stream;
    int interval_in = 100;
    int interval_out = 100;
    bool expecting_input = true;
    bool initialized = false;
    fixed_16 training = 1;
    bool self_test = false;
    int epoch;
    // bool flag = true;

    //this is the alpha code initialization
    fixed_16 x1[4] = {0, 0, 1, 1};
    fixed_16 x2[4] = {0, 1, 0, 1};
    fixed_16 y[4] = {0, 1, 1, 0};

    // setting up initial values for signals between layers
    fixed_16 output_0[ARRAY_SIZE] = {0, 0};
    fixed_16 output_1[ARRAY_SIZE] = {0, 0};
    fixed_16 delta_1[ARRAY_SIZE] = {0, 0};

    // make local versions of the weights/biases
    fixed_16 w1_local[ARRAY_SIZE][ARRAY_SIZE] = {{0.13457995, 0.51357812}, {0.18443987, 0.78533515}};
    fixed_16 bias_1_local[ARRAY_SIZE] = {0.50524609, 0.0652865};


#ifdef HW_COSIM
    // Run the Vitis HLS block and pass pointer to r_hw to allow writing of variable
    std::cout << "Beginning HLS Func" << "\n";
    // training the array
    std::thread beta_thread(foo, std::ref(w2), std::ref(bias_2),
     std::ref(training), std::ref(rx_stream), std::ref(tx_stream), std::ref(expecting_input)
     , std::ref(initialized), std::ref(self_test), std::ref(epoch));

    //alpha code
    axis<fixed_16, 0, 1, 1> in_val;
    axis<fixed_16, 0, 1, 1> initialization_packet(fixed_16(4), fixed_16(3), 1, 1);
    while(rx_stream.full());
    rx_stream.write(initialization_packet);
    std::cout << "Alpha wrote initialization packet" << std::endl;
    while(tx_stream.empty());
    in_val = tx_stream.read();
    std::cout << "Alpha read initialization packet" << std::endl;

    // store actual and predicted difference in vector, set other params
    char model = 'l'; // s = sigmoid, r = relu, l = leaky relu NOTE: SIGMOID CANNOT BE USED ON HARDWARE
    fixed_16 alpha = 0.1; // for leaky relu
    fixed_16 lr = 0.1; // learning rate

    //iterate through all of the epochs
    int i;
    for (i = 0; i < NUM_ITERATIONS; i++) {
        // iterate through all the data points
        int j;
        for (j = 0; j < 4; j++) {
            #pragma HLS PIPELINE
            std::cout << "iteration " << i << std::endl;
            std::cout << "data point " << j << std::endl;
            // setup the initial data input
            output_0[0] = x1[j];
            output_0[1] = x2[j];

            // initialize the error backpropagationcout
            delta_1[0] = 0;
            delta_1[1] = 0;

            // run the forward propagation
            // start with layer 1
            Array array_out1 = model_array(w1_local, bias_1_local, output_0, delta_1, lr, model, alpha, training);
            output_1[0] = array_out1.output_k[0];
            output_1[1] = array_out1.output_k[1];

            // send output_1 to beta
            axis<fixed_16, 0, 1, 1> write_output_1_packet;
            write_output_1_packet.id = 0;
            write_output_1_packet.dest = 1;
            // std::copy(output_1, output_1 + ARRAY_SIZE, output_1_packet.data);
            write_output_1_packet.data[0] = output_1[0];
            write_output_1_packet.data[1] = output_1[1];
            std::cout << "Alpha Writing output Packet" << std::endl;
            write_output_1_packet.display();
            while(rx_stream.full());
            rx_stream.write(write_output_1_packet);


            // Receive delta_1 from beta
            axis<fixed_16, 0, 1, 1> read_delta_1_packet;
            while(tx_stream.empty());
            read_delta_1_packet = tx_stream.read();
            std::cout << "Alpha reading delta packet" << std::endl;
            read_delta_1_packet.display();
            
            // end with layer 1
            Array array_back1 = model_array(w1_local, bias_1_local, output_0, delta_1, lr, model, alpha, training);
            // update the weights and biases
            for (int n = 0; n<ARRAY_SIZE; n++) {
                bias_1_local[n] = array_back1.bias_change[n];
                for (int m = 0; m<ARRAY_SIZE; m++) {
                    w1_local[n][m] = array_back1.weight_changes[n][m];
                }
            }
            if ((training == 0) && (j == 3)) {
                break; // only run this for all 4 data points once if infering
            }
        }
        if (training == 0) {
            break; // only run this once if we are inferring
        }
    }

    std::cout << "Starting Inference from alpha" << std::endl;
    i = 0;
    training = 0;
    for (i = 0; i < NUM_ITERATIONS; i++) {
        // iterate through all the data points
        int j;
        for (j = 0; j < 4; j++) {
            #pragma HLS PIPELINE
            std::cout << "iteration " << i << std::endl;
            std::cout << "data point " << j << std::endl;
            // setup the initial data input
            output_0[0] = x1[j];
            output_0[1] = x2[j];

            // initialize the error backpropagationcout
            delta_1[0] = 0;
            delta_1[1] = 0;

            // run the forward propagation
            // start with layer 1
            Array array_out1 = model_array(w1_local, bias_1_local, output_0, delta_1, lr, model, alpha, training);
            output_1[0] = array_out1.output_k[0];
            output_1[1] = array_out1.output_k[1];

            // send output_1 to beta
            axis<fixed_16, 0, 1, 1> write_output_1_packet;
            write_output_1_packet.id = 0;
            write_output_1_packet.dest = 1;
            // std::copy(output_1, output_1 + ARRAY_SIZE, output_1_packet.data);
            write_output_1_packet.data[0] = output_1[0];
            write_output_1_packet.data[1] = output_1[1];
            std::cout << "Alpha Writing output Packet" << std::endl;
            write_output_1_packet.display();
            while(rx_stream.full());
            rx_stream.write(write_output_1_packet);


            // Receive delta_1 from beta
            axis<fixed_16, 0, 1, 1> read_delta_1_packet;
            while(tx_stream.empty());
            read_delta_1_packet = tx_stream.read();
            std::cout << "Alpha reading delta packet" << std::endl;
            read_delta_1_packet.display();
            
            // end with layer 1
            Array array_back1 = model_array(w1_local, bias_1_local, output_0, delta_1, lr, model, alpha, training);
            // update the weights and biases
            for (int n = 0; n<ARRAY_SIZE; n++) {
                bias_1_local[n] = array_back1.bias_change[n];
                for (int m = 0; m<ARRAY_SIZE; m++) {
                    w1_local[n][m] = array_back1.weight_changes[n][m];
                }
            }
            if ((training == 0) && (j == 3)) {
                break; // only run this for all 4 data points once if infering
            }
        }
        if (training == 0) {
            break; // only run this once if we are inferring
        }
    }

    // // send bias_1_local to beta
    // axis<fixed_16, 0, 1, 1> write_bias_1_local_packet;
    // write_bias_1_local_packet.id = 1;
    // write_bias_1_local_packet.dest = 1;
    // write_bias_1_local_packet.data[0] = bias_1_local[0];
    // write_bias_1_local_packet.data[1] = bias_1_local[1];
    // while(rx_stream.full());
    // rx_stream.write(write_bias_1_local_packet);
    // std::cout << "Alpha writing bias 1 local packet" << std::endl;
    // write_bias_1_local_packet.display();

    // // send w1_local to beta
    // // First packet: w1_local[0][0], w1_local[0][1]
    // axis<fixed_16, 0, 1, 1> write_w1_local_packet1;
    // write_w1_local_packet1.id = 2;
    // write_w1_local_packet1.dest = 1;  
    // write_w1_local_packet1.data[0] = w1_local[0][0];
    // write_w1_local_packet1.data[1] = w1_local[0][1];
    // while(rx_stream.full());
    // rx_stream.write(write_w1_local_packet1);
    // std::cout << "Alpha writing w1 local packet 1" << std::endl;

    // // Second packet: w1_local[1][0], w1_local[1][1]
    // axis<fixed_16, 0, 1, 1> write_w1_local_packet2;
    // write_w1_local_packet2.id = 3; 
    // write_w1_local_packet2.dest = 1;
    // write_w1_local_packet2.data[0] = w1_local[1][0];
    // write_w1_local_packet2.data[1] = w1_local[1][1];
    // while(rx_stream.full());
    // rx_stream.write(write_w1_local_packet2);
    // std::cout << "Alpha writing w1 local packet 2" << std::endl;

    //end alpha code
    beta_thread.join();



    


#endif
    initialized = true;
    // running inference using the trained accelerator
    //Inference output = accelerator_peripheral(training.new_w2, training.new_b2, 0, rx_stream, tx_stream, expecting_input, initialized);

    // capture the outputs of the accelerator
    //cout << "The following are the predictions of the DNN:" << endl;
    //cout << output.inference[0] << endl;
    //cout << output.inference[1] << endl;
    //cout << output.inference[2] << endl;
    //cout << output.inference[3] << endl;

    return 0;
}