#include <iostream>
#include <string>
#include <memory>
#include <cstring>
#include <winsock2.h>
#include <ws2tcpip.h>

constexpr int PORT = 12345;
constexpr int BUFFER_SIZE = 1024;
constexpr int NUM_ITERATIONS = 3;
constexpr int ARRAY_SIZE = 2;

using namespace std;

typedef int16_t fixed_16;

int main() {
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

    //Initialize variables to send
    fixed_16 bias_change[ARRAY_SIZE] = {1,0};
    fixed_16 weight_change[ARRAY_SIZE][ARRAY_SIZE] = {{1,0},{1,1}};
    fixed_16 output_k[ARRAY_SIZE][ARRAY_SIZE] = {{0,1},{0,0}};

    for (int n=0; n<NUM_ITERATIONS; n++){
        cout << "Iteration: " << n << endl;
        //Send data from server to client
        send(new_socket, reinterpret_cast<char*>(bias_change), sizeof(bias_change), 0);
        send(new_socket, reinterpret_cast<char*>(weight_change),sizeof(weight_change),0);
        send(new_socket, reinterpret_cast<char*>(output_k),sizeof(output_k), 0);
        cout << "Send bias, weight, and outpu to client." <<endl;

        // Receive acknowledgment from client
        ssize_t valread = recv(new_socket, buffer, BUFFER_SIZE, 0);
        if (valread > 0) {
            buffer[valread] = '\0';
            cout << "Received acknowledgment: " << buffer << endl;
        } else {
            cerr << "Error reading from socket" << endl;
        }
        
        // Increment each element in bias_change, weight_change, and output_k
        for (int i = 0; i < ARRAY_SIZE; i++) {
            bias_change[i] += 1;
            for (int j = 0; j < ARRAY_SIZE; j++) {
                weight_change[i][j] += 1;
                output_k[i][j] += 1;
            }
        }

        }

    cout<<"Ran through all epoch! Sending termination signal"<<endl;
    
    string end_signal = "END";
    send(new_socket, end_signal.c_str(),end_signal.size(),0);
    cout << "Training complete. Sent termination signal to client." << endl;

    // Close the sockets
    closesocket(new_socket);
    closesocket(server_fd);
    WSACleanup();
    return 0;
}