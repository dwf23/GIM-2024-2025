#include "ap_int.h"
#include "hls_directio.h"
#include <iostream>
#include "ap_fixed.h"
#include <hls_stream.h>
#include "ap_axi_sdata.h"
#include <thread>

#define ARRAY_SIZE 2


typedef ap_fixed<16, 7> fixed_16;
typedef hls::ap_hs<ap_uint<1>> comm_line;
//struct pkt {fixed_16 data[ARRAY_SIZE]; int ID;};
typedef ap_axiu<32, 0, 0, 0> trans_pkt;

//typedef hls::stream<pkt> packet_line;

const int BITS = 16;

template <typename T, size_t WUser, size_t WId, size_t WDest>
struct axis {
    T data[2];
    T user;
    T id;
    T dest;
    
    // Default constructor
    axis() : user(0), id(0), dest(0) {
        data[0] = 0;
        data[1] = 0;
    }

    // Constructor
    axis(T d1, T d2) {
        data[0] = d1;
        data[1] = d2;
    }
    
    // Function to display the values
    void display() {
        std::cout << "Data: " << data[0].to_float() << ", " << data[1].to_float() << std::endl;
    }
};

// struct pkt axis<fixed_16, 0, 0, 0>;
typedef axis<fixed_16, 0,0,0> pkt;
typedef hls::stream<pkt> packet_line;
typedef ap_uint<1> test_line;
struct acc_ret {
    fixed_16  data[4];
};


void transmit(
    packet_line& out_stream, 
    bool &flag, 
    axis<fixed_16, 0, 0, 0> packet
);
void receive(
    packet_line& in_stream, 
    bool &flag, 
    // bool reset, 
    volatile bool &loop, 
    axis<fixed_16, 0, 0, 0> &received_val
);


void receive_data(
    comm_line &alpha_tx,
    volatile bool &flag, ap_uint<BITS> &rx1,
    ap_uint<BITS> &rx2

);


acc_ret example_acc(
    packet_line &data_in,
    packet_line &data_out, 
    int &debug
);

void send_data(
    comm_line &alpha_tx,
    packet_line &data_out,
    volatile bool &flag,
    int interval,
    int &debug
);

void simple_test(test_line &alpha_tx, volatile bool &flag);