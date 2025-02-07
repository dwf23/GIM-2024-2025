/*
This is the test bench file for the GIM@Rice accelerator 
C sim of distributed learning

Natalia Mendiola, 2/6/2025
test_c_main.cpp: Acts as the main client that connects to the server and 
runs the neural network calculations, handling data transfer, and updates.
*/

#include <iostream>
#include <fstream>
#include <string>
#include <memory>
#include <cstring>
#include <winsock2.h>
#include <ws2tcpip.h>
#include "gim_model.h"

#pragma comment(lib, "ws2_32.lib")

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

    fixed_16 y[4] = {0, 1, 1, 0};
    fixed_16 bias_2_local[ARRAY_SIZE] = {};
    fixed_16 w2_local[ARRAY_SIZE][ARRAY_SIZE] = {};
    fixed_16 delta_2[ARRAY_SIZE] = {};


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
    // Send header first
    const char* header = "DATA";  // Use "END" when you want to terminate
    const char*  end_signal = "END";

    cout << "Training for: " << NUM_ITERATIONS << " Iterations" << endl;
    for (int i=0; i<NUM_ITERATIONS;i++){
        for(int j=0; j<DATA_SIZE; j++){ //go through each data point
            //Set up initial input
            for (int p = 0; p < ARRAY_SIZE; p++) {
                // setup the initial data input
                output_0[p] = data[p][j];
                // initialize the error backpropagation
                delta_1[p] = 0;
                delta_2[p] = 0;
            }
            //FORWARD PASS ----- Layer 1
            Array array_out1 = model_array(w1_local, bias_1_local, output_0, delta_1, lr, model, alpha, TRAINING);
            int o;
            for (o = 0; o < ARRAY_SIZE; o++){
                output_1[o] = array_out1.output_k[o];
            }

            // send output_1 and delta_2 to sub board
            
            int bytesSent;
            //send header expecting DATA
            // cout << "Sending DATA header" << endl;
            bytesSent = send(new_socket, header, 4, 0);  // Send a 4-byte header
            if (bytesSent == SOCKET_ERROR) {
                cerr << "Error sending header: " << WSAGetLastError() << endl;
                return -1;
            }
            //output_1
            // cout << "output_1 before sending: ";
            // for (int i = 0; i < ARRAY_SIZE; i++) {
            //     cout << output_1[i] << " ";
            // }
            // cout << endl;
            bytesSent = send(new_socket, reinterpret_cast<char*>(output_1), sizeof(output_1), 0);
            // cout << "Sent output_1 bytes: " << bytesSent << " / " << sizeof(output_1) << endl;
            if (bytesSent == SOCKET_ERROR) {
                cerr << "Error sending output_1: " << WSAGetLastError() << endl;
            } 
 
            //delta_2
            // cout << "delta_2 before sending: ";
            // for (int i = 0; i < ARRAY_SIZE; i++) {
            //     cout << delta_2[i] << " ";
            // }
            // cout << endl;
            bytesSent = send(new_socket, reinterpret_cast<char*>(delta_2), sizeof(delta_2), 0);
            // cout << "Sent delta_2 bytes: " << bytesSent << " / " << sizeof(delta_2) << endl;
            if (bytesSent == SOCKET_ERROR) {
                cerr << "Error sending delta_2: " << WSAGetLastError() << endl;
            }

            //-----------------------------
            // Receive output_2 from sub board
            int bytesReceived;
            fixed_16 output_2[ARRAY_SIZE];
            bytesReceived = recv(new_socket, reinterpret_cast<char*>(output_2), sizeof(output_2), 0);
            if (bytesReceived == SOCKET_ERROR) {
                cerr << "Error receiving backpropagation array_back2 output_2." << endl;
            } 
            // else {
            //     cout << "Received array_back2 output_2 from client." << endl;
            // }
            //update delta_1
            fixed_16 delta1[ARRAY_SIZE];
            bytesReceived = recv(new_socket, reinterpret_cast<char*>(delta1), sizeof(delta1), 0);
            if (bytesReceived == SOCKET_ERROR) {
                cerr << "Error receiving backpropagation array_back2 delta1." << endl;
            } 
            // else {
            //     cout << "Received array_back2 delta1 from client." << endl;
            // }
            for (int e = 0; e < ARRAY_SIZE; e++) {
                delta_1[e] = delta1[e];
            }
            //bias_2
            bytesReceived = recv(new_socket, reinterpret_cast<char*>(bias_2_local), sizeof(bias_2_local), 0);
            if (bytesReceived == SOCKET_ERROR) {
                cerr << "Error receiving backpropagation bias_2_local delta1." << endl;
            } 
            // else {
            //     cout << "Received array_back2 bias_2_local from client." << endl;
            // }
            //w2_local
            bytesReceived = recv(new_socket, reinterpret_cast<char*>(w2_local), sizeof(w2_local), 0);
            if (bytesReceived == SOCKET_ERROR) {
                cerr << "Error receiving backpropagation w2_local delta1." << endl;
            } 
            // else {
            //     cout << "Received array_back2 w2_local from client." << endl;
            // }
            int e;
            for (e = 0; e < ARRAY_SIZE; e++) {
                if (model == 'r') {
                    if (output_2[e] > 0)
                        delta_2[e] = -(y[j] - output_2[e]);
                    else
                        delta_2[e] = 0;
                    }
                else if (model == 'l') {
                    if (output_2[e] > 0)
                        delta_2[e] = -(y[j] - output_2[e]);
                    else
                        delta_2[e] = -(y[j] - output_2[e]) * alpha;
                }
                else {
                    // std::cout << "model invalid" << std::endl;
                    break;
                }
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

    cout << "Sending END header" << endl;
    int endSent = send(new_socket, header, 4, 0);  // Send a 4-byte header
    if (endSent == SOCKET_ERROR) {
        cerr << "Error sending header: " << WSAGetLastError() << endl;
        return -1;
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

ofstream outfile("learned_weights_bias.txt", ios::trunc); // Open file in truncate mode

    if (!outfile) {
        cerr << "Error opening file!" << endl;
        return 1;
    }

    // Print new_w1
    outfile << "new_w1:" << endl;
    for (int i = 0; i < ARRAY_SIZE; i++) {
        for (int j = 0; j < ARRAY_SIZE; j++) {
            outfile << output_array.new_w1[i][j] << " ";
        }
        outfile << endl;
    }

    // Print new_w2
    outfile << "new_w2:" << endl;
    for (int i = 0; i < ARRAY_SIZE; i++) {
        for (int j = 0; j < ARRAY_SIZE; j++) {
            outfile << output_array.new_w2[i][j] << " ";
        }
        outfile << endl;
    }

    // Print new_b1
    outfile << "new_b1: ";
    for (int i = 0; i < ARRAY_SIZE; i++) {
        outfile << output_array.new_b1[i] << " ";
    }
    outfile << endl;

    // Print new_b2
    outfile << "new_b2: ";
    for (int i = 0; i < ARRAY_SIZE; i++) {
        outfile << output_array.new_b2[i] << " ";
    }
    outfile << endl;

    outfile.close(); // Close the file
    cout << "File overwritten: learned_weights_bias.txt" << endl;



    return 0;
}

