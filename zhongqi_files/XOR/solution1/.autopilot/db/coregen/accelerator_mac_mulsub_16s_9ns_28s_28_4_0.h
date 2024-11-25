// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __accelerator_mac_mulsub_16s_9ns_28s_28_4_0__HH__
#define __accelerator_mac_mulsub_16s_9ns_28s_28_4_0__HH__
#include "accelerator_mac_mulsub_16s_9ns_28s_28_4_0_DSP48_1.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(accelerator_mac_mulsub_16s_9ns_28s_28_4_0) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    accelerator_mac_mulsub_16s_9ns_28s_28_4_0_DSP48_1 accelerator_mac_mulsub_16s_9ns_28s_28_4_0_DSP48_1_U;

    SC_CTOR(accelerator_mac_mulsub_16s_9ns_28s_28_4_0):  accelerator_mac_mulsub_16s_9ns_28s_28_4_0_DSP48_1_U ("accelerator_mac_mulsub_16s_9ns_28s_28_4_0_DSP48_1_U") {
        accelerator_mac_mulsub_16s_9ns_28s_28_4_0_DSP48_1_U.clk(clk);
        accelerator_mac_mulsub_16s_9ns_28s_28_4_0_DSP48_1_U.rst(reset);
        accelerator_mac_mulsub_16s_9ns_28s_28_4_0_DSP48_1_U.ce(ce);
        accelerator_mac_mulsub_16s_9ns_28s_28_4_0_DSP48_1_U.in0(din0);
        accelerator_mac_mulsub_16s_9ns_28s_28_4_0_DSP48_1_U.in1(din1);
        accelerator_mac_mulsub_16s_9ns_28s_28_4_0_DSP48_1_U.in2(din2);
        accelerator_mac_mulsub_16s_9ns_28s_28_4_0_DSP48_1_U.dout(dout);

    }

};

#endif //
