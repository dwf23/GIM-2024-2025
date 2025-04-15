#ifndef GIM_MODEL_PERIPHERAL
#define GIM_MODEL_PERIPHERAL

#include "ap_fixed.h"
#include <cmath>
#include <algorithm>
#include <vector>
#include <iostream>
#include <hls_stream.h>

#define ARRAY_SIZE 2
#define NUM_ITERATIONS 500

typedef ap_fixed<16,4> fixed_16;
using namespace std;

//Comm stuff
template <typename T, size_t WUser, size_t WId, size_t WDest>
struct axis {
    T data[2];
    int user;
    int id;
    int dest;
    
    // Default constructor
    axis() : user(0), id(0), dest(0) {
        data[0] = 0;
        data[1] = 0;
        id = 0;
        dest = 0;
    }

    // Constructor
    axis(T d1, T d2, int i, int dest_in) {
        data[0] = d1;
        data[1] = d2;
        id = i;
        dest = dest_in;
    }
    
    // Function to display the values
    void display() {
        std::cout << "Data: " << data[0].to_float() << ", " << data[1].to_float() << std::endl;
        std::cout << "ID: " << id << std::endl;
        std::cout << "Destination: " << dest << std::endl;
    }
};
typedef hls::stream<axis<fixed_16, 0, 1, 1>> packet_line;


// these structs are used to hold return values/arrays for simplicity
// of return statements (i.e. no pointers used)
struct Weight{
	// members     
	fixed_16 sum_delta_out;         
	fixed_16 sum_output_out;
	fixed_16 weight_change;
	// constructor
	Weight(){}
}; 

struct Bias {
	// members
	fixed_16 net_sum;
	fixed_16 bias_change;
	// constructor
	Bias(){}
};

struct Array {
	// members
    fixed_16 output_k[ARRAY_SIZE];
    fixed_16 delta_kmin1[ARRAY_SIZE];
    fixed_16 weight_changes[ARRAY_SIZE][ARRAY_SIZE];
    fixed_16 bias_change[ARRAY_SIZE];
	// constructor
	Array(){}
};

struct Inference {
	// members
	fixed_16 inference[4];
	fixed_16 new_w1[ARRAY_SIZE][ARRAY_SIZE];
	fixed_16 new_w2[ARRAY_SIZE][ARRAY_SIZE];
	fixed_16 new_b1[ARRAY_SIZE];
	fixed_16 new_b2[ARRAY_SIZE];
	// constructor
	Inference(){}
};

// processing elements, array, and accelerator function prototypes
Weight weights_pe(fixed_16 delta_k, fixed_16 output_kmin1, fixed_16 partial_sum_out_k,
				fixed_16 partial_sum_delta_k, fixed_16 init_weight,
				fixed_16 eta, fixed_16 training);

Bias bias_pe(fixed_16 delta_k,
				fixed_16 sum_in,
				fixed_16 init_bias,
				fixed_16 eta,
				fixed_16 training);

fixed_16 act_pe(fixed_16 net_in, char model, fixed_16 alpha);

fixed_16 error_pe(fixed_16 output_kmin1, fixed_16 partial_sum_delta_k,
				char model, fixed_16 alpha);

Array model_array(fixed_16 weights[ARRAY_SIZE][ARRAY_SIZE],
			fixed_16 biases[ARRAY_SIZE],
			fixed_16 output_kmin1[ARRAY_SIZE],
			fixed_16 delta_k[ARRAY_SIZE], fixed_16 eta,
			char model, fixed_16 alpha, fixed_16 training);

Inference accelerator_peripheral(fixed_16 w2[ARRAY_SIZE][ARRAY_SIZE],
				fixed_16 bias_2[ARRAY_SIZE], fixed_16 training,
                packet_line &rx_stream, packet_line &tx_stream,
                bool expecting_input, bool &initialized,
			bool self_test, int &epoch);

#endif // GIM_MODEL_