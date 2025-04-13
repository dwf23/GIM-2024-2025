
#include <cmath>
#include <iostream>
#include "ap_fixed.h"
#include <xiltimer.h>
#include <bitset>

#include "xsend_data.h"
#include "xreceive_data.h"
#include "xexample_acc.h"


XSend_data Send_data;
XReceive_data Receive_data;
XExample_acc Example_acc;


using namespace std;

typedef ap_fixed<16, 7> fixed_16;
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
        std::cout << "Data: " << data[0].to_float() << ", " << data[1].to_float() << std::endl;
        std::cout << "ID: " << id << std::endl;
        std::cout << "Destination: " << dest << std::endl;
    }
};


int main()
{
	cout << "--- Start of the Program ---" << endl;

	// values for simulation and testing using C++ format with integers
    bool send_flag = false;
    bool send_flag_vld = false;
    bool send_data_sent_flag = false;
    bool send_data_sent_flag_vld = false;
    bool send_data_1_vld = false;
    int send_data_1 = 0;
    bool send_data_2_vld = false;
    int send_data_2 = 0;
    bool receive_flag = false;
    bool receive_flag_vld = false;
    bool loop = true;
    bool example_wrote_flag = false;
    bool example_wrote_flag_vld = false;
    bool example_receive_flag = false;
    bool example_receive_flag_vld = false;
    bool example_received_val_1_vld = false;
    int example_received_val_1 = 0;
    bool example_received_val_2_vld = false;
    int example_received_val_2 = 0;
    volatile bool dest = 1;

	unsigned long long tt;
	int tt_print;
	double tt_seconds, pl_time, ps_time, speedup;
	XTime start_time_co;
	XTime stop_time_co;
	
	
	// cout is c++ version of printf and needs the iostream.h and namespace std declared above

	// Get the starting time in cycle counts
	XTime_GetTime(&start_time_co);
    XReceive_data_Initialize(&Receive_data, 0);
    XSend_data_Initialize(&Send_data, 0);
    XExample_acc_Initialize(&Example_acc, 0);

    XExample_acc_Set_loop_r(&Example_acc, loop);
    XSend_data_Set_loop_r(&Send_data, loop);
    XReceive_data_Set_loop_r(&Receive_data, loop);
    // XReceive_data_Set_data_1(&Receive_data, 0.38);
    // XReceive_data_Set_data_2(&Receive_data, 2.79);
    // XReceive_data_Set_destination(&Receive_data, dest);

	// Trigger the accelerator to start
    XSend_data_Start(&Send_data);
    XReceive_data_Start(&Receive_data);
    XExample_acc_Start(&Example_acc);
    do{
        
        example_wrote_flag_vld = XExample_acc_Get_wrote_flag_vld(&Example_acc);
        if(example_wrote_flag_vld){
            example_wrote_flag = XExample_acc_Get_wrote_flag(&Example_acc);
            if(example_wrote_flag){
                cout << "Example_acc wrote data to send" << endl;
            }
            example_wrote_flag_vld = false;

        }
        send_flag_vld = XSend_data_Get_flag_vld(&Send_data);
        if(send_flag_vld){
            send_flag = XSend_data_Get_flag(&Send_data);
            if(send_flag){
                cout << "Data received by send data" << endl;
                send_data_1_vld = XSend_data_Get_received_val_1_vld(&Send_data);
                if(send_data_1_vld){
                    send_data_1 = XSend_data_Get_received_val_1(&Send_data);
                    cout << "Send data val 1: " << send_data_1 << endl;

                    send_data_1_vld = false;
                }
                send_data_2_vld = XSend_data_Get_received_val_2_vld(&Send_data);
                if(send_data_2_vld){
                    send_data_2 = XSend_data_Get_received_val_2(&Send_data);

                    cout << "Send data val 2: " << send_data_2 << endl;
                    send_data_2_vld = false;
                }
                
            }
        }
        send_data_sent_flag_vld = XSend_data_Get_send_sent_flag_vld(&Send_data);
        if(send_data_sent_flag_vld){
            send_data_sent_flag = XSend_data_Get_send_sent_flag(&Send_data);
            if(send_data_sent_flag){
                cout << "Data sent out of send data" << endl;
            }
        }
        receive_flag_vld = XReceive_data_Get_flag_vld(&Receive_data);
        if(receive_flag_vld){
            receive_flag = XReceive_data_Get_flag(&Receive_data);
            if(receive_flag){
                cout << "Receive send data back to example_acc" << endl; 
                dest = 0;            
            }
            receive_flag_vld = false;
        }
        example_receive_flag_vld = XExample_acc_Get_received_flag_vld(&Example_acc);
        if(example_receive_flag_vld){
            example_receive_flag = XExample_acc_Get_received_flag(&Example_acc);
            if(example_receive_flag){
                cout << "Example_acc received data from receive" << endl;
                example_received_val_1_vld = XExample_acc_Get_received_val_1_vld(&Example_acc);
                if(example_received_val_1_vld){
                    example_received_val_1 = XExample_acc_Get_received_val_1(&Example_acc);
                    cout << "Example acc received data 1: " << example_received_val_1 << endl;
                }
                example_received_val_2_vld = XExample_acc_Get_received_val_2_vld(&Example_acc);
                if(example_received_val_2_vld){
                    example_received_val_2 = XExample_acc_Get_received_val_2(&Example_acc);
                    cout << "Example acc received data 2: " << example_received_val_2 << endl;
                }
            }
            example_receive_flag_vld = false;
        }

        
    } while (!XReceive_data_IsReady(&Receive_data) or !XSend_data_IsReady(&Send_data));

    cout << "--- End of the Program ---" << endl;
	return 0;
}