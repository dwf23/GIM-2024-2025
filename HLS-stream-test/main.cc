/*
 * Prahalad's Version of Xilinx's stuff
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */
#include <iostream>
#include <stdio.h>
// #include "C:\GIM_XOR\GIM-2024-2025\hls_stream_test\stream.h"
#include <stdlib.h> // Std C functions, e.g. exit()
#include <math.h>   // libm header: sqrt(), cos(), etc
#include "xparameters.h" // System parameter definitions
#include "xaxidma.h" // Device driver API for AXI DMA
#include "xdogain.h"
#include <xiltimer.h>

// Define the length of the (real input) FFT data
#define STREAM_LENGTH  1000


// Helper function forward declarations
int init_dma(XAxiDma *axiDma);
// void generate_waveform(short *signal_buf, int num_samples);
// Declare a XAxiDma object instance
XAxiDma axiDma;
XDogain Dogain;
// Program entry point
int main()
{
    
    // Local variables
    int status;
    int gain = 5;
    //    static short realdata[4*REAL_FFT_LEN];
    unsigned int inStreamData[STREAM_LENGTH];
    unsigned int outStreamData[STREAM_LENGTH];
    // volatile static complex16 realspectrum[REAL_FFT_LEN/2];
    std::cout << "foo" << std::endl;
    std::cout << "---------------------------------------" << std::endl;
    std::cout << "- STREAM PL accelerator test program -" << std::endl;
    std::cout << "---------------------------------------" << std::endl;

    // Initialize the platform
    XDogain_Initialize(&Dogain, (UINTPTR) XPAR_DOGAIN_0_BASEADDR);
    std::cout << "Initialized dogain module" << std::endl;
    while (!XDogain_IsReady(&Dogain));
    std::cout << "Polling complete" << std::endl;
    XDogain_Set_gain(&Dogain, (u32) gain);
    std::cout << "Gain has been set" << std::endl;

    // Initialize the (simple) DMA engine
    status = init_dma(&axiDma);
    if (status != XST_SUCCESS) {
        exit(-1);
    }
    // Generate a waveform to be input to FFT
    for (int i = 0; i < STREAM_LENGTH; i++){
            inStreamData[i] = (u32) (size_t) i;
            outStreamData[i] = (u32) (size_t) 0;
    }
        
    // *IMPORTANT* - flush contents of 'realdata' from data cache to memory
    // before DMA. Otherwise DMA is likely to get stale or uninitialized data
    Xil_DCacheFlushRange((UINTPTR)inStreamData, STREAM_LENGTH * sizeof(int));
    // DMA enough data to push out first result data set completely
    status = XAxiDma_SimpleTransfer(&axiDma, (UINTPTR)inStreamData,
            STREAM_LENGTH * sizeof(int), XAXIDMA_DMA_TO_DEVICE);
    // status = XAxiDma_SimpleTransfer(&axiDma, (UINTPTR)inStreamData,
    //         STREAM_LENGTH * sizeof(int), XAXIDMA_DMA_TO_DEVICE);

    XDogain_Start(&Dogain);

    // Polling Loop for PL to complete
    do {

    } while (!XDogain_IsDone(&Dogain));

    // Setup DMA from PL to PS memory using AXI DMA's 'simple' transfer mode
    status = XAxiDma_SimpleTransfer(&axiDma, (UINTPTR)outStreamData,
            STREAM_LENGTH * sizeof(int), XAXIDMA_DEVICE_TO_DMA);
    // Poll the AXI DMA core
    do {
        status = XAxiDma_Busy(&axiDma, XAXIDMA_DEVICE_TO_DMA);
    } while(status);
    
    // Data cache must be invalidated for 'output' buffer after DMA
    Xil_DCacheInvalidateRange((UINTPTR)outStreamData, STREAM_LENGTH * sizeof(int));

    std::cout << "Frame received: " << std::endl;

    // Read the output buffer
    for (int j = 0; j < 10; j++) {
        printf("%d \n", (int)outStreamData[j]);
    }
    printf("End of frame.\n\r");


   printf("***************\n\r");
   printf("* End of test *\n\r");
   printf("***************\n\r\n\r");
   return 0;
}



// A function that wraps all AXI DMA initialization related API calls
int init_dma(XAxiDma *axiDmaPtr){
   XAxiDma_Config *CfgPtr;
   int status;
   // Get pointer to DMA configuration
   CfgPtr = XAxiDma_LookupConfig(XPAR_AXI_DMA_0_BASEADDR);
   if(!CfgPtr){
      printf("Error looking for AXI DMA config\n\r");
      return XST_FAILURE;
   }
   // Initialize the DMA handle
   status = XAxiDma_CfgInitialize(axiDmaPtr,CfgPtr);
   if(status != XST_SUCCESS){
      printf("Error initializing DMA\n\r");
      return XST_FAILURE;
   }
   //check for scatter gather mode - this example must have simple mode only
   if(XAxiDma_HasSg(axiDmaPtr)){
      printf("Error DMA configured in SG mode\n\r");
      return XST_FAILURE;
   }
   //disable the interrupts
   XAxiDma_IntrDisable(axiDmaPtr, XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DEVICE_TO_DMA);
   XAxiDma_IntrDisable(axiDmaPtr, XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DMA_TO_DEVICE);

   return XST_SUCCESS;
}




// #include <cmath>
// #include <iostream>
// #include <unistd.h>
// #include <xparameters.h>
// #include <stdlib.h>
// #include "xdogain.h"
// #include "xaxidma.h"
// using namespace std;

// // IP config pointers and the such
// XDogain doGain;
// XDogain_Config *doGain_cfg;

// XAxiDma axiDMA;
// XAxiDma_Config *axiDMA_cfg;

// // DMA Addresses
// #define MEM_BASE_ADDR 0x01000000
// #define TX_BUFFER_BASE (MEM_BASE_ADDR + 0x00100000)
// #define RX_BUFFER_BASE (MEM_BASE_ADDR + 0x00300000)

// #define SIZE_ARR 1000
// int inStreamData[SIZE_ARR];

// void initPeripherals() {

//     // Initialize dogain core
//     printf("Initializing doGain \n");
//     doGain_cfg = XDogain_LookupConfig(XPAR_DOGAIN_0_BASEADDR);
//     if (doGain_cfg) {
//         int status = XDogain_CfgInitialize(&doGain, doGain_cfg);
//         if (status != XST_SUCCESS) {
//             printf("Error initializing doGain core \n");
//         }
//     }

//     // Initialize AxiDMA core
//     printf("Initializing AXIDMA \n");
//     axiDMA_cfg = XAxiDma_LookupConfig(XPAR_AXI_DMA_0_BASEADDR);
//     if (axiDMA_cfg) {
//         int status = XAxiDma_CfgInitialize(&axiDMA, axiDMA_cfg);
//         if (status != XST_SUCCESS) {
//             printf("Error initializing DMA \n");
//         }
//     }

//     // Disable interrupts
//     XAxiDma_IntrDisable(&axiDMA, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
//     XAxiDma_IntrDisable(&axiDMA, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

// }

// int main() {

//     // Pointers to DMA TX/RX addresses
//     int *m_dma_buffer_TX = (int*) TX_BUFFER_BASE;
//     int *m_dma_buffer_RX = (int*) RX_BUFFER_BASE;

//     initPeripherals();

//     // Do the stream calculation
//     for (int i = 0; i < SIZE_ARR; i++) {
//         inStreamData[i] = i;
//     }

//     // Set gain to 5 and start core
//     while (true) {
//         int gain;
//         gain = 5;

//         XDogain_Set_gain(&doGain, gain);
//         XDogain_Start(&doGain);

//         // Flushing cache of buffers
//         Xil_DCacheFlushRange((u32)inStreamData, SIZE_ARR*sizeof(int));
//         Xil_DCacheFlushRange((u32)m_dma_buffer_RX, SIZE_ARR*sizeof(int));

//         printf("Sending data to IP core sub \n");
//         XAxiDma_SimpleTransfer(&axiDMA, (u32)inStreamData, SIZE_ARR*sizeof(int), XAXIDMA_DMA_TO_DEVICE);

//         printf("Get data \n");
//         XAxiDma_SimpleTransfer(&axiDMA, (u32)m_dma_buffer_RX, SIZE_ARR*sizeof(int), XAXIDMA_DEVICE_TO_DMA);

//         while(XAxiDma_Busy(&axiDMA, XAXIDMA_DEVICE_TO_DMA));

//         // Invalidating chache to avoid reading garbage
//         Xil_DCacheInvalidateRange((u32)m_dma_buffer_RX, SIZE_ARR*sizeof(int));

//         while (!XDogain_IsDone(&doGain));
//         printf("Calculation complete \n");

//         // Display data
//         for (int i = 0; i < SIZE_ARR; i++) {
//             printf("Recv[%d]=%d\n", i, m_dma_buffer_RX[i]);
//         }
//     }

//     return 0;
    
// }
