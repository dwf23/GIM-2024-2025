/* This is the test bench file for the GIM@Rice accelerator 
C sim of distributed learning

Natalia Mendiola, 2/20/2025

c_sim_sub.cpp: Handles the core neural network computation logic 
(forward propagation, backpropagation, error calculation) and communicates 
results back to the server.
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
    cout << "Connected to server." << endl;
    //------------------------
    //inputs to function from cpp_accelerator_generic/accelerator.cpp
    //------values from prahalad_xor_bringup/gim_cpp_final/main.cpp
    Inference output_array;
    fixed_16 y[4] = {0, 1, 1, 0};

    //Initialize needed variables
    fixed_16 w2[ARRAY_SIZE][ARRAY_SIZE] = {{0.85397529, 0.49423684}, {0, 0}};
    fixed_16 bias_2[ARRAY_SIZE] = {0.42812233, 0};
    int cur_iter_j; //keeps track of j for y[j] and output_array.inference[j]

    fixed_16 delta_2[ARRAY_SIZE] = {};
    fixed_16 delta_1[ARRAY_SIZE] = {}; //for backpropogation
    // initializing internal arrays with zeros
    fixed_16 output_1[ARRAY_SIZE] = {0, 0};
    fixed_16 output_2[ARRAY_SIZE] = {0, 0};

    // make local versions of the weights/biases
    // make local versions of the weights/biases
    fixed_16 w1_local[ARRAY_SIZE][ARRAY_SIZE] = {{0, 0}, {0, 0}};
    fixed_16 bias_1_local[ARRAY_SIZE] = {0, 0};
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
    while(true){ //runs while training
        // Check for END signal first
        int bytesReceived = recv(sock, header, 4, 0);
        // cout << "Received header: [" << header << "]" << endl;
        if (bytesReceived > 0) {
            header[bytesReceived] = '\0';  // Null terminate the header string
            if (strcmp(header, "END") == 0) {
                cout << "Received termination signal." << endl;
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
        bytesReceived = recv(sock, reinterpret_cast<char*>(&cur_iter_j), sizeof(cur_iter_j), 0);
        if (bytesReceived == SOCKET_ERROR) {
            if (WSAGetLastError() == WSAETIMEDOUT) {
                cerr << "Receive operation timed out." << endl;
            } else {
                cerr << "Error receiving j." << endl;
            }
            break;
        }
        //----------------------------

        //FORWARD PROPOGATION -- Layer 2
        Array array_out2 = model_array(w2_local, bias_2_local, output_1, delta_2, lr, model, alpha, TRAINING);
        for (int l = 0; l < ARRAY_SIZE; l++) {
            output_2[l] = array_out2.output_k[l];
        }          

        if (output_2[0] > 0.5) {
            output_array.inference[cur_iter_j] = 1;
        }
        else if (output_2[0] <= 0.5) {
            output_array.inference[cur_iter_j] = 0;
        }

        // lastly calculate the final error with the derivative of mse after the last output
        if (model == 's') {
            delta_2[0] = -(y[cur_iter_j] - output_2[0]) * output_2[0] * (1 - output_2[0]);
        }
        else if (model == 'r') {
            if (output_2[0] > 0)
                delta_2[0] = -(y[cur_iter_j] - output_2[0]);
            else
                delta_2[0] = 0;
        }
        else if (model == 'l') {
            if (output_2[0] > 0)
                delta_2[0] = -(y[cur_iter_j] - output_2[0]);
            else
                delta_2[0] = -(y[cur_iter_j]- output_2[0]) * alpha;
        }
        else {
            // std::cout << "model invalid" << std::endl;
            break;
        }


        //BACK PROPOGATION LAYER 2 
        Array array_back2 = model_array(w2_local, bias_2_local, output_1, delta_2, lr, model, alpha, TRAINING);
        for (int l = 0; l < ARRAY_SIZE; l++) {
            delta_1[l] = array_back2.output_k[l];
        }   
        // update the weights and biases
        for (int n = 0; n<ARRAY_SIZE; n++) {
            bias_2_local[n] = array_back2.bias_change[n];
            for (int m = 0;m<ARRAY_SIZE; m++) {
                w2_local[n][m] = array_back2.weight_changes[n][m];
            }
        }


        //send back delta_1
        int bytesSent;
        bytesSent= send(sock, reinterpret_cast<char*>(delta_1), sizeof(delta_1), 0);
        // cout << "Sent array_out2 delta_1 bytes: " << bytesSent << " / " << sizeof(delta_1) << endl;
        if (bytesSent == SOCKET_ERROR) {
            cerr << "Error sending array_out2 delta_1: " << WSAGetLastError() << endl;
        } 


        if((TRAINING==0)&& (cur_iter_j==3)){
            break;//only run this for all 4 data points if infering
        }
    }



    //From main, receiving bias_1_local and w1_local
    int bytesReceived_final;
    bytesReceived_final = recv(sock, reinterpret_cast<char*>(bias_1_local), sizeof(bias_1_local), 0); //bias_1_local;
    if (bytesReceived_final == SOCKET_ERROR) {
        if (WSAGetLastError() == WSAETIMEDOUT) {
            cerr << "Receive operation timed out." << endl;
        } else {
            cerr << "Error receiving bias_1_local." << endl;
            return -1;
        }
    }
    bytesReceived_final = recv(sock, reinterpret_cast<char*>(w1_local), sizeof(w1_local), 0); //w1_local;
    if (bytesReceived_final == SOCKET_ERROR) {
        if (WSAGetLastError() == WSAETIMEDOUT) {
            cerr << "Receive operation timed out." << endl;
        } else {
            cerr << "Error receiving w1_local." << endl;
            return -1;
        }
    }
    const char* end_sub_signal = "Successful Run";
    cout << "successful run!" << endl;
    bytesReceived_final= send(sock, end_sub_signal, sizeof(end_sub_signal)+1, 0);
    // cout << "Sent array_out2 w2_local bytes: " << bytesSent << " / " << sizeof(w2_local) << endl;
    if (bytesReceived_final == SOCKET_ERROR) {
        cerr << "Error sending 'successful run!: " << WSAGetLastError() << endl;
    }

    // Close the socket
    closesocket(sock);
    // Cleanup Winsock
    WSACleanup();
    cout << "Server disconnected. Closing client." << endl;

    //produce the final weights to be used in inference
    cout << "Producing final weights and bias." << endl;
    // produce the final weights to be used in inference
    for (int n = 0; n<ARRAY_SIZE; n++) {
        output_array.new_b1[n] = bias_1_local[n];
        output_array.new_b2[n] = bias_2_local[n];
        for (int m = 0;m<ARRAY_SIZE; m++) {
            output_array.new_w1[n][m] = w1_local[n][m];
            output_array.new_w2[n][m] = w2_local[n][m];
        }
    }

    //store learned weights and bias for validation
    ofstream outfile("final_w_b.txt", ios::trunc); // Open file in truncate mode
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
    outfile << "new_b1: "<< endl;
    for (int i = 0; i < ARRAY_SIZE; i++) {
        outfile << output_array.new_b1[i] << " ";
    }
    outfile << endl;

    // Print new_b2
    outfile << "new_b2: "<< endl;
    for (int i = 0; i < ARRAY_SIZE; i++) {
        outfile << output_array.new_b2[i] << " ";
    }
    outfile << endl;

    outfile.close(); // Close the file
    cout << "File overwritten: final_w_b.txt" << endl;

    return 0; //output_array;
}
