// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_1 (
  alpha_transmit_line_ap_ack_0,
  alpha_transmit_line_ap_vld_0,
  alpha_transmit_line_0
);

  (* X_INTERFACE_IGNORE = "true" *)
  input alpha_transmit_line_ap_ack_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output alpha_transmit_line_ap_vld_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ALPHA_TRANSMIT_LINE_0 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.ALPHA_TRANSMIT_LINE_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ALPHA_TRANSMIT_LINE_0, LAYERED_METADATA undef" *)
  output [0:0]alpha_transmit_line_0;

  // stub module has no contents

endmodule
