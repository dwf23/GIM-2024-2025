#include <cmath>
#include <iostream>
#include "hls_stream.h"
#include "definitions.h"
#include "ap_int.h"
#include <iostream>
#include <unistd.h>
#include <csignal>
#include <atomic>

int main()
{
     std::cout << "Starting Testbench" << "\n";
    
    volatile bool reset = 1;
    volatile bool loop = 1;
    axis<fixed_16, 0, 0, 0> received_val(fixed_16(27.5), fixed_16(0.0));

    // #ifdef HW_COSIM
        packet_line in_stream;
        bool flag = false;

        std::cout << "Starting thread" << std::endl;
        std::thread receive_thread(receive, std::ref(in_stream), std::ref(flag), std::ref(loop), std::ref(received_val));
        
        axis<fixed_16, 0, 0, 0> myAxis(fixed_16(2.5), fixed_16(3.8));
        myAxis.display();

        in_stream.write(myAxis);
        
        while(!flag);

        std::cout << "Receive output" << std::endl;
        loop = 0;
        receive_thread.join();
        received_val.display();

        std::cout << "Running with loop false" << std::endl;

        receive(in_stream, flag, loop, received_val);

    
    //#endif
    return 0;
}