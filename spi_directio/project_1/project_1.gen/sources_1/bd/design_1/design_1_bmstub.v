// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_1 (
  miso_ap_vld_0,
  miso_0,
  sclk_0,
  cs_0,
  mosi_0
);

  (* X_INTERFACE_IGNORE = "true" *)
  input miso_ap_vld_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MISO_0 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.MISO_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MISO_0, LAYERED_METADATA undef" *)
  input [0:0]miso_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SCLK_0 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.SCLK_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SCLK_0, LAYERED_METADATA undef" *)
  output [0:0]sclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.CS_0 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.CS_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.CS_0, LAYERED_METADATA undef" *)
  output [0:0]cs_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MOSI_0 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.MOSI_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MOSI_0, LAYERED_METADATA undef" *)
  output [0:0]mosi_0;

  // stub module has no contents

endmodule
