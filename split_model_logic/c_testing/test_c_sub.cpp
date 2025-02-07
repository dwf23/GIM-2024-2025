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

constexpr int PORT = 12345;
constexpr int BUFFER_SIZE = 1024;
// constexpr int ARRAY_SIZE = 2;
constexpr int TIMEOUT = 5000; //5 sec timeout

using namespace std;

// typedef fixed_16 fixed_16;

int main() {
    //inputs to function from cpp_accelerator_generic/accelerator.cpp
    //------values from prahalad_xor_bringup/gim_cpp_final/main.cpp
    fixed_16 bias_2[ARRAY_SIZE] = {0.42812233, 0};
    fixed_16 w2[ARRAY_SIZE][ARRAY_SIZE] = {{0.85397529, 0.49423684}, {0, 0}};

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
    char buffer[BUFFER_SIZE] = {0};

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
    cout << "Connected to server. Waiting for data..." << endl;

    //based  on from cpp_accelerator_generic/accelerator.cpp
    fixed_16 y[4] = {0, 1, 1, 0};

    // initializing internal arrays with zeros
    fixed_16 output_2[ARRAY_SIZE] = {0, 0};
    fixed_16 delta_2[ARRAY_SIZE] = {};

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

    while(true){ //this runs for each data point

        // Check for END signal first
        int bytesReceived = recv(sock, buffer, BUFFER_SIZE, 0);
        if (bytesReceived > 0) {
            buffer[bytesReceived] = '\0';  // Null terminate the buffer
            if (strcmp(buffer, "END") == 0) {
                cout << "Received termination signal.  Stopping client." << endl;// Making inferences and calculating final error." << endl;
                // cout << "sending back return array and stopping client." << endl;
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
        // Receive output_1 from main board
        fixed_16 output_1[ARRAY_SIZE];
        bytesReceived = recv(sock, reinterpret_cast<char*>(output_1), sizeof(output_1), 0);
        if (bytesReceived == SOCKET_ERROR) {
            if (WSAGetLastError() == WSAETIMEDOUT) {
                cerr << "Receive operation timed out." << endl;
            } else {
                cerr << "Error receiving data." << endl;
            }
            break;
        }
        // Echo received data
        cout << "Output 1 received: " << endl;
        for (int row = 0; row < ARRAY_SIZE; row++) {
            cout << output_1[row] << " ";  // Print the element at position 'row' in the 1D array
        }
        cout << endl;

        //initialize the error backpropogation count
        delta_2[0] = 0; 
        delta_2[1] = 0;

        //Forward propogation of layer 2
        Array array_out2 = model_array(w2_local, bias_2_local, output_1, delta_2, lr, model, alpha, TRAINING);

        // run the backpropagation and update the array
        // start with layer 2
        Array array_back2 = model_array(w2_local, bias_2_local, output_1, delta_2, lr, model, alpha, TRAINING);
        // update the weights and biases
        for (int n = 0; n < ARRAY_SIZE; n++) {
            bias_2_local[n] = array_back2.bias_change[n];
            for (int m = 0; m < ARRAY_SIZE; m++) {
                w2_local[n][m] = array_back2.weight_changes[n][m];
            }
        }
        cout << "Size of array_out2: " << sizeof(array_out2) << endl;
        cout << "Size of array_back2: " << sizeof(array_back2) << endl;

        int bytesSent;
        //send w2_local and bias_2_local to main board
        bytesSent= send(sock, reinterpret_cast<char*>(&array_out2), sizeof(array_out2), 0);
        if (bytesSent == SOCKET_ERROR) {
            cerr << "Error sending array_out2: " << WSAGetLastError() << endl;
        }
        bytesSent= send(sock, reinterpret_cast<char*>(&array_back2), sizeof(array_back2), 0);
        if (bytesSent == SOCKET_ERROR) {
            cerr << "Error sending array_back2: " << WSAGetLastError() << endl;
        }
    }

    cout << "Server disconnected. Closing client." << endl;
    // Close the socket
    closesocket(sock);
    // Cleanup Winsock
    WSACleanup();
    return 0;
}
