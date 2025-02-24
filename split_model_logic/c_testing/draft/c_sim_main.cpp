/*
This is the test bench file for the GIM@Rice accelerator 
C sim of distributed learning

Natalia Mendiola, 2/20/2025

c_sim_main.cpp: Acts as the main client that connects to the server and 
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


constexpr int PORT = 12345;
constexpr int BUFFER_SIZE = 1024;

using namespace std;


int main() {
    // Inference output_array; kept track on sub

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
    cout << "Main Board listening on port " << PORT << endl;
    //------------------------
    // Accept incoming connection
    if ((new_socket = accept(server_fd, (struct sockaddr*)&address, &addrlen)) == INVALID_SOCKET) {
        cerr << "Accept failed" << endl;
        closesocket(server_fd);
        WSACleanup();
        return 1;
    }

    
    //------values from prahalad_xor_bringup/gim_cpp_final/main.cpp
    // --- known to converge
    fixed_16 w1[ARRAY_SIZE][ARRAY_SIZE] = {{0.13457995, 0.51357812}, {0.18443987, 0.78533515}};
    fixed_16 bias_1[ARRAY_SIZE] = {0.50524609, 0.0652865};

    //based on values from prahalad_xor_bringup/gim_cpp_final/accelerator.cpp
    //Initialize variables needed on main board
    fixed_16 output_0[ARRAY_SIZE] = {0, 0};
    fixed_16 output_1[ARRAY_SIZE] = {0, 0};

    fixed_16 delta_1[ARRAY_SIZE] = {0, 0};
    fixed_16 received_delta_1[ARRAY_SIZE];

    // make local versions of the weights/biases
    fixed_16 w1_local[ARRAY_SIZE][ARRAY_SIZE] = {{0, 0}, {0, 0}};
    fixed_16 bias_1_local[ARRAY_SIZE] = {0, 0};
    for (int n = 0; n < ARRAY_SIZE; n++) {
        bias_1_local[n] = bias_1[n];
        for (int m = 0; m < ARRAY_SIZE; m++) {
            w1_local[n][m] = w1[n][m];
        }
    }

    // initializing the data for the XOR problem
    fixed_16 x1[4] = {0, 0, 1, 1};
    fixed_16 x2[4] = {0, 1, 0, 1};
    // number of iterations defined in the header file

    // store actual and predicted difference in vector, set other params
    char model = 'r';
    fixed_16 alpha = 0.1; // for leaky relu
    fixed_16 lr = 0.1; // learning rate
    // Send header first
    const char* header = "DATA";  // Use "END" when you want to terminate
    const char*  end_signal = "END";

    cout << "Training for: " << NUM_ITERATIONS << " Iterations" << endl;

    //training loop
    for (int i=0; i<NUM_ITERATIONS; i++){
        for (int j=0; j<DATA_SIZE; j++){//go through each data point

        //Set up initial data input 
        for (int m = 0; m < ARRAY_SIZE; m++) {
            output_0[m] = x1[j];
            delta_1[m] = 0;
        }
        
        //FORWARD PASS -- Layer 1
        Array array_out1 = model_array(w1_local, bias_1_local, output_0, delta_1, lr, model, alpha, TRAINING);
        for (int l = 0; l < ARRAY_SIZE; l++) {
            output_1[l] = array_out1.output_k[l];
        }       

        //send header, output1, cur_iter_j TO RECEIVER
        int bytesSent;
        bytesSent = send(new_socket, header, 4, 0);  // Send a 4-byte header
        // cout << "Sending DATA header" << endl;
        if (bytesSent == SOCKET_ERROR) {
            cerr << "Error sending header: " << WSAGetLastError() << endl;
            return -1;
        }
        bytesSent = send(new_socket, reinterpret_cast<char*>(output_1), sizeof(output_1), 0); //send fixed_16 output_1
        // cout << "Sent output_1 bytes: " << bytesSent << " / " << sizeof(output_1) << endl;
        if (bytesSent == SOCKET_ERROR) {
            cerr << "Error sending output_1: " << WSAGetLastError() << endl;
        } 
        bytesSent = send(new_socket, reinterpret_cast<char*>(&j), sizeof(j), 0); //send j to receiver 
        // cout << "Sent j bytes: " << bytesSent << " / " << sizeof(j) << endl;
        if (bytesSent == SOCKET_ERROR) {
            cerr << "Error sending j: " << WSAGetLastError() << endl;
        }  
        //---------------------------------
        //Receive and update delta_1
        int bytesReceived;
        bytesReceived = recv(new_socket, reinterpret_cast<char*>(&received_delta_1), sizeof(received_delta_1), 0);
        if (bytesReceived == SOCKET_ERROR) {
            cerr << "Error receiving backpropagation array_back2 delta1." << endl;
        } 
        for (int e = 0; e < ARRAY_SIZE; e++) {
            delta_1[e] = received_delta_1[e];
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

        }//end of data points
        if (TRAINING == 0){
            break; // only run this once if we are infering
        }
    }//end of epochs

    cout << "Sending END header" << endl;
    int endSent = send(new_socket, "END", 4, 0);  // Send a 4-byte header
    if (endSent == SOCKET_ERROR) {
        cerr << "Error sending header: " << WSAGetLastError() << endl;
        return -1;
    }
    int bytesSent_end;
    bytesSent_end = send(new_socket, reinterpret_cast<char*>(bias_1_local), sizeof(bias_1_local), 0);
    // cout << "Sent bias_1_local bytes: " << bytesSent_end << " / " << sizeof(bias_1_local) << endl;
    if (bytesSent_end == SOCKET_ERROR) {
        cerr << "Error sending bias_1_local: " << WSAGetLastError() << endl;
    }
    bytesSent_end= send(new_socket, reinterpret_cast<char*>(w1_local), sizeof(w1_local), 0);
    // cout << "Sent w1_local bytes: " << bytesSent_end << " / " << sizeof(w1_local) << endl;
    if (bytesSent_end == SOCKET_ERROR) {
        cerr << "Error sending w1_local: " << WSAGetLastError() << endl;
    }
    const char* sub_end_signal = "";
    cout << "End of training. Closing server." << endl;
    // Check for END signal from sub
    char sub_end_header[17] = {0};  // 6 bytes + null terminator
    int bytesReceived = recv(new_socket, sub_end_header, 17, 0);
    // cout << "Received header: [" << header << "]" << endl;
    if (bytesReceived > 0) {
        sub_end_header[bytesReceived] = '\0';  // Null terminate the header string
        if (strcmp(sub_end_header, "Successful Run") == 0) {
            cout << "Received termination signal from sub." << endl;
        }
    } else if (bytesReceived == SOCKET_ERROR) {
        if (WSAGetLastError() == WSAETIMEDOUT) {
            cerr << "Receive operation timed out." << endl;
        } else {
            cerr << "Error receiving data." << endl;
        }
    }
    // Close the sockets
    closesocket(new_socket);
    closesocket(server_fd);
    WSACleanup();

    return 0;
}

