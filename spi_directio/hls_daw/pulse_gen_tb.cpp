#include <iostream>
#include "GIM_comm.h"



int main()
{
    std::cout << "Starting Testbench" << "\n";
    bool pulse = true;

#ifdef HW_COSIM
   // Run the Vitis HLS block and pass pointer to r_hw to allow writing of variable
    std::cout << "Sending Pulse" << "\n";
    pulse_gen(pulse);
#endif

   // Print result r_sw and r_hw
   return 0;
}