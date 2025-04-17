#include "ap_int.h"
#include "hls_directio.h"
#include <cstdint>
#include <iostream>
#include "ap_fixed.h"
#include <hls_stream.h>
#include "ap_axi_sdata.h"
#include <thread>
#include <bitset>

#define ARRAY_SIZE 2


typedef ap_fixed<16, 7> fixed_16;
typedef hls::ap_hs<bool> comm_line;
//struct pkt {fixed_16 data[ARRAY_SIZE]; int ID;};
typedef ap_axiu<32, 0, 0, 0> trans_pkt;

//typedef hls::stream<pkt> packet_line;

const int BITS = 16;

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
        std::cout << "Data: " << data[0] << ", " << data[1] << std::endl;
        std::cout << "ID: " << id << std::endl;
        std::cout << "Destination: " << dest << std::endl;
    }
};

// struct pkt axis<fixed_16, 0, 0, 0>;
typedef hls::stream<axis<int, 0, 1, 1>> packet_line;

void example_acc(
    packet_line& rx_stream, 
    bool &wrote_flag, 
    volatile bool &loop, 
    packet_line& tx_stream, 
    bool &received_flag, 
    int &received_val_1,
    int &received_val_2,
    int &test,
    bool &probe
);

void send_data(
    packet_line& tx_stream, 
    bool &flag, 
    volatile bool &loop, 
    int &received_val_1,
    int &received_val_2,
    comm_line &alpha_tx,
    bool &send_sent_flag
);

void receive_data(
    packet_line& rx_stream, 
    bool &flag, 
    volatile bool &loop,
    comm_line &alpha_rx
); 