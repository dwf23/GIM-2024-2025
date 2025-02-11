#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("data_out", 32, hls_out, 0, "ap_hs", "out_data", 1),
	Port_Property("data_out_ap_vld", 1, hls_out, 0, "ap_hs", "out_vld", 1),
	Port_Property("data_in", 32, hls_in, 1, "ap_hs", "in_data", 1),
	Port_Property("data_in_ap_vld", 1, hls_in, 1, "ap_hs", "in_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "spi_master_logic";
