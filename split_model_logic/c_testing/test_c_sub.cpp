/* This is the test bench file for the GIM@Rice accelerator 
C sim of distributed learning

Natalia Mendiola, 2/6/2025

test_c_sub.cpp: Handles the core neural network computation logic 
(forward propagation, backpropagation, error calculation) and communicates 
results back to the server.
*/
#include <iostream>
#include <string>
#include <memory>
#include <cstring>
#include <winsock2.h>
#include <ws2tcpip.h>
#include "gim_model.h"

#pragma comment(lib, "ws2_32.lib")

constexpr int PORT = 12345;
constexpr int BUFFER_SIZE = 1024;
constexpr int TIMEOUT = 5000; //5 sec timeout

using namespace std;

int main() {
    //Communication
    //------------------------
    // Initialize Winsock
    WSADATA wsaData;
    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        cerr << "WSAStartup failed" << endl;
        return -1;
    }
    // Create socket
    SOCKET sock = INVALID_SOCKET;
    struct sockaddr_in serv_addr;
    // char buffer[BUFFER_SIZE] = {0};
    char header[5] = {0};  // 4 bytes + null terminator

    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) == INVALID_SOCKET) {
        cerr << "Socket creation error" << endl;
        WSACleanup();
        return -1;
    }
    //Create a timeout 
    setsockopt(sock, SOL_SOCKET, SO_RCVTIMEO, (const char*)&TIMEOUT, sizeof(TIMEOUT));

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(PORT);
    // Convert IPv4 address from text to binary form
    if (inet_pton(AF_INET, "127.0.0.1", &serv_addr.sin_addr) <= 0) {
        cerr << "Invalid address / Address not supported" << endl;
        closesocket(sock);
        WSACleanup();
        return -1;
    }
    // Connect to server
    if (connect(sock, (struct sockaddr*)&serv_addr, sizeof(serv_addr)) == SOCKET_ERROR) {
        cerr << "Connection failed" << endl;
        closesocket(sock);
        WSACleanup();
        return -1;
    }

    //------------------------
    cout << "Connected to server." << endl;
    //inputs to function from cpp_accelerator_generic/accelerator.cpp
    //------values from prahalad_xor_bringup/gim_cpp_final/main.cpp

    fixed_16 w2[ARRAY_SIZE][ARRAY_SIZE] = {{0.85397529, 0.49423684}, {0, 0}};
    fixed_16 bias_2[ARRAY_SIZE] = {0.42812233, 0};
    fixed_16 cur_iter_y; //keeps track of y[j]

    fixed_16 delta_1[ARRAY_SIZE] = {};
    fixed_16 delta_2[ARRAY_SIZE] = {};

    // initializing internal arrays with zeros
    fixed_16 output_1[ARRAY_SIZE] = {0, 0};
    fixed_16 output_2[ARRAY_SIZE] = {0, 0};

    // make local versions of the weights/biases
    fixed_16 w2_local[ARRAY_SIZE][ARRAY_SIZE] = {{0, 0}, {0, 0}};
    fixed_16 bias_2_local[ARRAY_SIZE] = {0, 0};
    for (int n = 0; n<ARRAY_SIZE; n++) {
        bias_2_local[n] = bias_2[n];
        for (int m = 0;m<ARRAY_SIZE; m++) {
            w2_local[n][m] = w2[n][m];
        }
    }
    // number of iterations defined in the header file
    // store actual and predicted difference in vector, set other params
    char model = 'r';
    fixed_16 alpha = 0.1; // for leaky relu
    fixed_16 lr = 0.1; // learning rate

    // Continuous loop for receiving data 
    cout <<"Waiting for data from main board." << endl;

    while(true){ //this runs for each data point

        // Check for END signal first
        int bytesReceived = recv(sock, header, 4, 0);
        // cout << "Received header: [" << header << "]" << endl;
        if (bytesReceived > 0) {
            header[bytesReceived] = '\0';  // Null terminate the header string
            if (strcmp(header, "END") == 0) {
                cout << "Received termination signal. Stopping client." << endl;
                break;
            }
        } else if (bytesReceived == SOCKET_ERROR) {
            if (WSAGetLastError() == WSAETIMEDOUT) {
                cerr << "Receive operation timed out." << endl;
            } else {
                cerr << "Error receiving data." << endl;
            }
            break;
        }

        //Receive output_1 and y and delta_2 from main
        bytesReceived = recv(sock, reinterpret_cast<char*>(output_1), sizeof(output_1), 0);
        if (bytesReceived == SOCKET_ERROR) {
            if (WSAGetLastError() == WSAETIMEDOUT) {
                cerr << "Receive operation timed out." << endl;
            } else {
                cerr << "Error receiving output_1." << endl;
            }
            break;
        }
        bytesReceived = recv(sock, reinterpret_cast<char*>(&cur_iter_y), sizeof(cur_iter_y), 0);
        if (bytesReceived == SOCKET_ERROR) {
            if (WSAGetLastError() == WSAETIMEDOUT) {
                cerr << "Receive operation timed out." << endl;
            } else {
                cerr << "Error receiving y[j]." << endl;
            }
            break;
        }
        bytesReceived = recv(sock, reinterpret_cast<char*>(delta_2), sizeof(delta_2), 0);
        if (bytesReceived == SOCKET_ERROR) {
            if (WSAGetLastError() == WSAETIMEDOUT) {
                cerr << "Receive operation timed out." << endl;
            } else {
                cerr << "Error receiving data." << endl;
            }
            break;
        }

        //Forward propogation of layer 2
        Array array_out2 = model_array(w2_local, bias_2_local, output_1, delta_2, lr, model, alpha, TRAINING);
        output_2[0] = array_out2.output_k[0];
        output_2[1] = array_out2.output_k[1];

        // lastly calculate the final error with the derivative of mse after the last output
        if (model == 's') {
            delta_2[0] = -(cur_iter_y - output_2[0]) * output_2[0] * (1 - output_2[0]);
        }
        else if (model == 'r') {
            if (output_2[0] > 0)
                delta_2[0] = -(cur_iter_y - output_2[0]);
            else
                delta_2[0] = 0;
        }
        else if (model == 'l') {
            if (output_2[0] > 0)
                delta_2[0] = -(cur_iter_y - output_2[0]);
            else
                delta_2[0] = -(cur_iter_y- output_2[0]) * alpha;
        }
        else {
            // std::cout << "model invalid" << std::endl;
            break;
        }


        // run the backpropagation and update the array
        // start with layer 2
        Array array_back2 = model_array(w2_local, bias_2_local, output_1, delta_2, lr, model, alpha, TRAINING);
        delta_1[0] = array_back2.delta_kmin1[0];
        delta_1[1] = array_back2.delta_kmin1[1];
        // update the weights and biases
        for (int n = 0; n<ARRAY_SIZE; n++) {
            bias_2_local[n] = array_back2.bias_change[n];
            for (int m = 0;m<ARRAY_SIZE; m++) {
                w2_local[n][m] = array_back2.weight_changes[n][m];
            }
        }

        int bytesSent;
        //send output2, delta1, bias_2_local, and w2_local to main board
        bytesSent= send(sock, reinterpret_cast<char*>(output_2), sizeof(output_2), 0);
        // cout << "Sent array_out2 output bytes: " << bytesSent << " / " << sizeof(output_2) << endl;
        if (bytesSent == SOCKET_ERROR) {
            cerr << "Error sending array_out2 output_2: " << WSAGetLastError() << endl;
        }
        bytesSent= send(sock, reinterpret_cast<char*>(delta_1), sizeof(delta_1), 0);
        // cout << "Sent array_out2 delta_1 bytes: " << bytesSent << " / " << sizeof(delta_1) << endl;
        if (bytesSent == SOCKET_ERROR) {
            cerr << "Error sending array_out2 delta_1: " << WSAGetLastError() << endl;
        }    
        bytesSent= send(sock, reinterpret_cast<char*>(bias_2_local), sizeof(bias_2_local), 0);
        // cout << "Sent array_out2 bias_2_local bytes: " << bytesSent << " / " << sizeof(bias_2_local) << endl;
        if (bytesSent == SOCKET_ERROR) {
            cerr << "Error sending array_out2 bias_2_local: " << WSAGetLastError() << endl;
        }
        bytesSent= send(sock, reinterpret_cast<char*>(w2_local), sizeof(w2_local), 0);
        // cout << "Sent array_out2 w2_local bytes: " << bytesSent << " / " << sizeof(w2_local) << endl;
        if (bytesSent == SOCKET_ERROR) {
            cerr << "Error sending array_back2 w2_local: " << WSAGetLastError() << endl;
        }
    }

    cout << "Server disconnected. Closing client." << endl;
    // Close the socket
    closesocket(sock);
    // Cleanup Winsock
    WSACleanup();
    return 0;
}
