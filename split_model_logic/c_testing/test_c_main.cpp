/*
This is the test bench file for the GIM@Rice accelerator 
C sim of distributed learning

Natalia Mendiola, 2/6/2025
test_c_main.cpp: Acts as the main client that connects to the server and 
runs the neural network calculations, handling data transfer, and updates.

*/
#include <iostream>
#include <string>
#include <memory>
#include <cstring>
#include <winsock2.h>
#include <ws2tcpip.h>
#include "gim_model.h"

constexpr int PORT = 12345;
constexpr int BUFFER_SIZE = 1024;

using namespace std;


int main() {
    Inference output_array;

    //inputs to function from cpp_accelerator_generic/accelerator.cpp
    //------values from prahalad_xor_bringup/gim_cpp_final/main.cpp
    fixed_16 bias_1[ARRAY_SIZE] = {0.50524609, 0.0652865};
    fixed_16 w1[ARRAY_SIZE][ARRAY_SIZE] = {{0.13457995, 0.51357812}, {0.18443987, 0.78533515}};

    //Communication
    //------------------------
    // Initialize Winsock
    WSADATA wsaData;
    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        cerr << "WSAStartup failed" << endl;
        return 1;
    }
    // Create TCP server
    SOCKET server_fd, new_socket;
    struct sockaddr_in address;
    int opt = 1;
    int addrlen = sizeof(address);
    char buffer[BUFFER_SIZE];
    // Creating socket file descriptor
    if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == INVALID_SOCKET) {
        cerr << "Socket creation failed" << endl;
        WSACleanup();
        return 1;
    }
    // Forcefully attaching socket to port 12345
    if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR, (const char*)&opt, sizeof(opt)) == SOCKET_ERROR) {
        cerr << "setsockopt failed" << endl;
        closesocket(server_fd);
        WSACleanup();
        return 1;
    }
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons(PORT);
    // Bind the socket to the network address and port
    if (bind(server_fd, (struct sockaddr*)&address, sizeof(address)) == SOCKET_ERROR) {
        cerr << "Bind failed" << endl;
        closesocket(server_fd);
        WSACleanup();
        return 1;
    }
    // Start listening for incoming connections
    if (listen(server_fd, 3) == SOCKET_ERROR) {
        cerr << "Listen failed" << endl;
        closesocket(server_fd);
        WSACleanup();
        return 1;
    }
    //------------------------
    cout << "Main Board listening on port " << PORT << endl;

    // Accept incoming connection
    if ((new_socket = accept(server_fd, (struct sockaddr*)&address, &addrlen)) == INVALID_SOCKET) {
        cerr << "Accept failed" << endl;
        closesocket(server_fd);
        WSACleanup();
        return 1;
    }

    //based on values from prahalad_xor_bringup/gim_cpp_final/accelerator.cpp
    /*
    */
    //Initialize variables needed
    fixed_16 data[2][4] = {{0, 0, 1, 1}, {0, 1, 0, 1}};
    fixed_16 output_0[ARRAY_SIZE] = {};
    fixed_16 output_1[ARRAY_SIZE] = {};
    fixed_16 delta_1[ARRAY_SIZE] = {};

    Array array_out2;
    Array array_back2;

    // make local versions of the weights/biases
    fixed_16 w1_local[ARRAY_SIZE][ARRAY_SIZE] = {};
    fixed_16 bias_1_local[ARRAY_SIZE] = {};
    for (int n = 0; n < ARRAY_SIZE; n++) {
        bias_1_local[n] = bias_1[n];
        for (int m = 0; m < ARRAY_SIZE; m++) {
            w1_local[n][m] = w1[n][m];
        }
    }

    // number of iterations defined in the header file
    // store actual and predicted difference in vector, set other params
    char model = 'r';
    fixed_16 alpha = 0.1; // for leaky relu
    fixed_16 lr = 0.1; // learning rate

    for (int i=0; i<NUM_ITERATIONS;i++){
        for(int j=0; j<DATA_SIZE; j++){ //go through each data point
            //Set up initial input
            for (int p = 0; p < ARRAY_SIZE; p++) {
                // setup the initial data input
                output_0[p] = data[p][j];
                // initialize the error backpropagation
                delta_1[p] = 0;
            }
            //FORWARD PASS ----- Layer 1
            Array array_out1 = model_array(w1_local, bias_1_local, output_0, delta_1, lr, model, alpha, TRAINING);
            for (int o = 0; o < ARRAY_SIZE; o++){
                output_1[o] = array_out1.output_k[o];
            }

            // send output_1 to sub board
            int bytesSent;
            bytesSent = send(new_socket, reinterpret_cast<char*>(output_1), sizeof(output_1), 0);
            if (bytesSent == SOCKET_ERROR) {
                cerr << "Error sending output_1: " << WSAGetLastError() << endl;
            }
            // Receive output_2 from sub board
            ssize_t bytesReceived;
            bytesReceived = recv(new_socket, reinterpret_cast<char*>(&array_out2), sizeof(array_out2), 0);
            if (bytesReceived == SOCKET_ERROR) {
                cerr << "Error receiving forward propogation array_out2." << endl;
            } else {
                cout << "Received array_out2 from client. " << endl;
            }

            
            bytesReceived = recv(new_socket, reinterpret_cast<char*>(&array_back2), sizeof(array_back2), 0);
            if (bytesReceived == SOCKET_ERROR) {
                cerr << "Error receiving backpropagation array_back2." << endl;
            } else {
                cout << "Received array_back2 from client." << endl;
            }

            for (int e = 0; e < ARRAY_SIZE; e++) {
                delta_1[e] = array_back2.delta_kmin1[e];
            }


            //BACKPROPOGATION ---
            Array array_back1 = model_array(w1_local, bias_1_local, output_0, delta_1, lr, model, alpha, TRAINING);
 
            //update local w1, bias_1
            for (int n = 0; n < ARRAY_SIZE; n++) {
                bias_1_local[n] = array_back1.bias_change[n];
                for (int m = 0; m < ARRAY_SIZE; m++) {
                    w1_local[n][m] = array_back1.weight_changes[n][m];
                }
            }
            if ((TRAINING==0)&&(j == (DATA_SIZE-1))){
                break;// only run this for all data points once if infering
            }
        }
        if (TRAINING == 0){
            break; // only run this once if we are infering
        }
    }
    
    fixed_16 bias_2_local[ARRAY_SIZE] = {};
    fixed_16 w2_local[ARRAY_SIZE][ARRAY_SIZE] = {};
    // update the weights and biases
    for (int n = 0; n < ARRAY_SIZE; n++) {
        bias_2_local[n] = array_back2.bias_change[n];
        for (int m = 0; m < ARRAY_SIZE; m++) {
            w2_local[n][m] = array_back2.weight_changes[n][m];
        }
    }

    // produce the final weights to be used in inference
    for (int n = 0; n<ARRAY_SIZE; n++) {
        output_array.new_b1[n] = bias_1_local[n];
        output_array.new_b2[n] = bias_2_local[n];
        for (int m = 0;m<ARRAY_SIZE; m++) {
            output_array.new_w1[n][m] = w1_local[n][m];
            output_array.new_w2[n][m] = w2_local[n][m];
        }
    }

    // Close the sockets
    closesocket(new_socket);
    closesocket(server_fd);
    WSACleanup();
    //----------check resultls if they make sense
    // Print new_w1
    cout<<"-----" << endl;
    cout << "new_w1:" << endl;
    for (int i = 0; i < ARRAY_SIZE; i++) {
        for (int j = 0; j < ARRAY_SIZE; j++) {
            cout << output_array.new_w1[i][j] << " ";
        }
        cout << endl;
    }

    // Print new_w2
    cout << "new_w2:" << endl;
    for (int i = 0; i < ARRAY_SIZE; i++) {
        for (int j = 0; j < ARRAY_SIZE; j++) {
            cout << output_array.new_w2[i][j] << " ";
        }
        cout << endl;
    }

    // Print new_b1
    cout << "new_b1: ";
    for (int i = 0; i < ARRAY_SIZE; i++) {
        cout << output_array.new_b1[i] << " ";
    }
    cout << endl;

    // Print new_b2
    cout << "new_b2: ";
    for (int i = 0; i < ARRAY_SIZE; i++) {
        cout << output_array.new_b2[i] << " ";
    }
    cout << endl;

    return 0;
}
