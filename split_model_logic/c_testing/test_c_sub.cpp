#include <iostream>
#include <string>
#include <memory>
#include <cstring>
#include <winsock2.h>
#include <ws2tcpip.h>

constexpr int PORT = 12345;
constexpr int BUFFER_SIZE = 1024;
constexpr int ARRAY_SIZE = 2;
constexpr int TIMEOUT = 5000; //5 sec timeout
using namespace std;

typedef int16_t fixed_16;

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
    // Continuous loop for receiving data
    while(true){     
        // Initialize variables to receive
        fixed_16 bias_change[ARRAY_SIZE];
        fixed_16 weight_change[ARRAY_SIZE][ARRAY_SIZE];
        fixed_16 output_k[ARRAY_SIZE][ARRAY_SIZE];

        // Check for END signal first
        int bytesReceived = recv(sock, buffer, BUFFER_SIZE, 0);
        if (bytesReceived > 0) {
            buffer[bytesReceived] = '\0';  // Null terminate the buffer
            if (strcmp(buffer, "END") == 0) {
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

        // Receive bias_change
        bytesReceived = recv(sock, reinterpret_cast<char*>(bias_change), sizeof(bias_change), 0);
        if (bytesReceived == SOCKET_ERROR) {
            if (WSAGetLastError() == WSAETIMEDOUT) {
                cerr << "Receive operation timed out." << endl;
            } else {
                cerr << "Error receiving data." << endl;
            }
            break;
        }

        // Receive weight_change
        bytesReceived = recv(sock, reinterpret_cast<char*>(weight_change), sizeof(weight_change), 0);
        if (bytesReceived == SOCKET_ERROR) {
            if (WSAGetLastError() == WSAETIMEDOUT) {
                cerr << "Receive operation timed out." << endl;
            } else {
                cerr << "Error receiving data." << endl;
            }
            break;
        }

        // Receive output_k
        bytesReceived = recv(sock, reinterpret_cast<char*>(output_k), sizeof(output_k), 0);
        if (bytesReceived == SOCKET_ERROR) {
            if (WSAGetLastError() == WSAETIMEDOUT) {
                cerr << "Receive operation timed out." << endl;
            } else {
                cerr << "Error receiving data." << endl;
            }
            break;
        }

        cout << "Received data and labels from server." << endl;
        // Echo received data
        cout << "Bias: "<<endl;
        for (int row = 0; row < ARRAY_SIZE; row++){
            cout << bias_change[row] << " ";
        }
        cout << endl;
        
        cout << "Weights: "<<endl;
        for (int row = 0; row < ARRAY_SIZE; row++){
            for(int col = 0; col < ARRAY_SIZE; col++){
                cout << weight_change[row][col] << " ";
            }
            cout << endl;
        }

        cout << "Output k received: "<<endl;
        for (int row = 0; row < ARRAY_SIZE; row++){
            for(int col = 0; col < ARRAY_SIZE; col++){
                cout << output_k[row][col] << " ";
            }
            cout << endl;
        }

        // Update data before sending back?
        string ack = "Data received!";
        send(sock, ack.c_str(), ack.size(), 0);
    }

    cout << "Server disconnected. Closing client." << endl;
    // Close the socket
    closesocket(sock);
    // Cleanup Winsock
    WSACleanup();
    return 0;
}
