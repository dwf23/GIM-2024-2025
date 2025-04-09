
#include <cmath>
#include <iostream>
#include "ap_fixed.h"
#include <xiltimer.h>


#include "xreceive.h"
#include "xtransmit.h"


XTransmit Transmit;
XReceive Receive;


using namespace std;

typedef ap_fixed<16, 7> fixed_16;
template <typename T, size_t WUser, size_t WId, size_t WDest>
struct axis {
    T data[2];
    T user;
    T id;
    T dest;
    
    // Default constructor
    axis() : user(0), id(0), dest(0) {
        data[0] = 0;
        data[1] = 0;
    }

    // Constructor
    axis(T d1, T d2) {
        data[0] = d1;
        data[1] = d2;
    }
    
    // Function to display the values
    void display() {
        std::cout << "Data: " << data[0].to_float() << ", " << data[1].to_float() << std::endl;
    }
};


int main()
{
	cout << "--- Start of the Program ---" << endl;

	// values for simulation and testing using C++ format with integers
    axis<fixed_16, 0, 0, 0> packet(fixed_16(2.5), fixed_16(3.8));
    bool transmit_flag = false;
    bool transmit_flag_vld = false;
    bool receive_flag = false;
    bool receive_flag_vld = false;
    bool loop = true;
    bool return_value_vld = false;
    XReceive_Received_val return_value;

    XTransmit_Packet transmit_packet;
    transmit_packet.word_0 = packet.data[0].range(15, 0).to_int();
    transmit_packet.word_1 = packet.data[1].range(15, 0).to_int();
    transmit_packet.word_2 = 0;

    cout << "Sending data: " << transmit_packet.word_0 << ", " << transmit_packet.word_1 << endl;

	unsigned long long tt;
	int tt_print;
	double tt_seconds, pl_time, ps_time, speedup;
	XTime start_time_co;
	XTime stop_time_co;
	
	
	// cout is c++ version of printf and needs the iostream.h and namespace std declared above

	// Get the starting time in cycle counts
	XTime_GetTime(&start_time_co);
    XReceive_Initialize(&Receive, 0);
    XTransmit_Initialize(&Transmit, 0);

    XTransmit_Set_packet(&Transmit, transmit_packet);
    XReceive_Set_loop_r(&Receive, loop);

	// Trigger the accelerator to start
    XReceive_Start(&Receive);
    XTransmit_Start(&Transmit);

    do{
        receive_flag_vld = XReceive_Get_flag_vld(&Receive);
        if(receive_flag_vld){
            cout << "Receive flag vld high" << endl;
            receive_flag = XReceive_Get_flag(&Receive);
        }
        transmit_flag_vld = XTransmit_Get_flag_vld(&Transmit);
        if(transmit_flag_vld){
            cout << "Transmit flag vld high" << endl;
            transmit_flag = XTransmit_Get_flag(&Transmit);
        }
        if(transmit_flag){
            cout << "Data Sent" << endl;
            transmit_flag = false;
        }
        return_value_vld = XReceive_Get_received_val_vld(&Receive);
        if(receive_flag & return_value_vld){
            cout << "Data Received" << endl;
            return_value = XReceive_Get_received_val(&Receive);
            cout << "Return value: " << return_value.word_0 << ", " << return_value.word_1 << ", " << return_value.word_2 << endl;
            cout << "Return value Converted: " << fixed_16(return_value.word_0) << ", " << fixed_16(return_value.word_1) << ", " << return_value.word_2 << endl;
            receive_flag = false;
        }
        
    } while (!XReceive_IsReady(&Receive) or !XTransmit_IsReady(&Transmit));

    cout << "--- End of the Program ---" << endl;
	return 0;
}