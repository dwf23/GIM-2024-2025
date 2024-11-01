// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
module accelerator_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 7,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle,
    input  wire [255:0]                  ap_return,
    input  wire [0:0]                    w1_0_address0,
    input  wire                          w1_0_ce0,
    output wire [15:0]                   w1_0_q0,
    input  wire [0:0]                    w1_1_address0,
    input  wire                          w1_1_ce0,
    output wire [15:0]                   w1_1_q0,
    input  wire [0:0]                    w2_0_address0,
    input  wire                          w2_0_ce0,
    output wire [15:0]                   w2_0_q0,
    input  wire [0:0]                    w2_1_address0,
    input  wire                          w2_1_ce0,
    output wire [15:0]                   w2_1_q0,
    input  wire [0:0]                    bias_1_address0,
    input  wire                          bias_1_ce0,
    output wire [15:0]                   bias_1_q0,
    input  wire [0:0]                    bias_2_address0,
    input  wire                          bias_2_ce0,
    output wire [15:0]                   bias_2_q0,
    output wire [15:0]                   training
);
//------------------------Address Info-------------------
// Protocol Used: ap_ctrl_hs
//
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of ap_return
//        bit 31~0 - ap_return[31:0] (Read)
// 0x14 : Data signal of ap_return
//        bit 31~0 - ap_return[63:32] (Read)
// 0x18 : Data signal of ap_return
//        bit 31~0 - ap_return[95:64] (Read)
// 0x1c : Data signal of ap_return
//        bit 31~0 - ap_return[127:96] (Read)
// 0x20 : Data signal of ap_return
//        bit 31~0 - ap_return[159:128] (Read)
// 0x24 : Data signal of ap_return
//        bit 31~0 - ap_return[191:160] (Read)
// 0x28 : Data signal of ap_return
//        bit 31~0 - ap_return[223:192] (Read)
// 0x2c : Data signal of ap_return
//        bit 31~0 - ap_return[255:224] (Read)
// 0x68 : Data signal of training
//        bit 15~0 - training[15:0] (Read/Write)
//        others   - reserved
// 0x6c : reserved
// 0x38 ~
// 0x3f : Memory 'w1_0' (2 * 16b)
//        Word n : bit [15: 0] - w1_0[2n]
//                 bit [31:16] - w1_0[2n+1]
// 0x40 ~
// 0x47 : Memory 'w1_1' (2 * 16b)
//        Word n : bit [15: 0] - w1_1[2n]
//                 bit [31:16] - w1_1[2n+1]
// 0x48 ~
// 0x4f : Memory 'w2_0' (2 * 16b)
//        Word n : bit [15: 0] - w2_0[2n]
//                 bit [31:16] - w2_0[2n+1]
// 0x50 ~
// 0x57 : Memory 'w2_1' (2 * 16b)
//        Word n : bit [15: 0] - w2_1[2n]
//                 bit [31:16] - w2_1[2n+1]
// 0x58 ~
// 0x5f : Memory 'bias_1' (2 * 16b)
//        Word n : bit [15: 0] - bias_1[2n]
//                 bit [31:16] - bias_1[2n+1]
// 0x60 ~
// 0x67 : Memory 'bias_2' (2 * 16b)
//        Word n : bit [15: 0] - bias_2[2n]
//                 bit [31:16] - bias_2[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL         = 7'h00,
    ADDR_GIE             = 7'h04,
    ADDR_IER             = 7'h08,
    ADDR_ISR             = 7'h0c,
    ADDR_AP_RETURN_0     = 7'h10,
    ADDR_AP_RETURN_1     = 7'h14,
    ADDR_AP_RETURN_2     = 7'h18,
    ADDR_AP_RETURN_3     = 7'h1c,
    ADDR_AP_RETURN_4     = 7'h20,
    ADDR_AP_RETURN_5     = 7'h24,
    ADDR_AP_RETURN_6     = 7'h28,
    ADDR_AP_RETURN_7     = 7'h2c,
    ADDR_TRAINING_DATA_0 = 7'h68,
    ADDR_TRAINING_CTRL   = 7'h6c,
    ADDR_W1_0_BASE       = 7'h38,
    ADDR_W1_0_HIGH       = 7'h3f,
    ADDR_W1_1_BASE       = 7'h40,
    ADDR_W1_1_HIGH       = 7'h47,
    ADDR_W2_0_BASE       = 7'h48,
    ADDR_W2_0_HIGH       = 7'h4f,
    ADDR_W2_1_BASE       = 7'h50,
    ADDR_W2_1_HIGH       = 7'h57,
    ADDR_BIAS_1_BASE     = 7'h58,
    ADDR_BIAS_1_HIGH     = 7'h5f,
    ADDR_BIAS_2_BASE     = 7'h60,
    ADDR_BIAS_2_HIGH     = 7'h67,
    WRIDLE               = 2'd0,
    WRDATA               = 2'd1,
    WRRESP               = 2'd2,
    WRRESET              = 2'd3,
    RDIDLE               = 2'd0,
    RDDATA               = 2'd1,
    RDRESET              = 2'd2,
    ADDR_BITS                = 7;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle = 1'b0;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [255:0]                  int_ap_return;
    reg  [15:0]                   int_training = 'b0;
    // memory signals
    wire [0:0]                    int_w1_0_address0;
    wire                          int_w1_0_ce0;
    wire [31:0]                   int_w1_0_q0;
    wire [0:0]                    int_w1_0_address1;
    wire                          int_w1_0_ce1;
    wire                          int_w1_0_we1;
    wire [3:0]                    int_w1_0_be1;
    wire [31:0]                   int_w1_0_d1;
    wire [31:0]                   int_w1_0_q1;
    reg                           int_w1_0_read;
    reg                           int_w1_0_write;
    reg  [0:0]                    int_w1_0_shift0;
    wire [0:0]                    int_w1_1_address0;
    wire                          int_w1_1_ce0;
    wire [31:0]                   int_w1_1_q0;
    wire [0:0]                    int_w1_1_address1;
    wire                          int_w1_1_ce1;
    wire                          int_w1_1_we1;
    wire [3:0]                    int_w1_1_be1;
    wire [31:0]                   int_w1_1_d1;
    wire [31:0]                   int_w1_1_q1;
    reg                           int_w1_1_read;
    reg                           int_w1_1_write;
    reg  [0:0]                    int_w1_1_shift0;
    wire [0:0]                    int_w2_0_address0;
    wire                          int_w2_0_ce0;
    wire [31:0]                   int_w2_0_q0;
    wire [0:0]                    int_w2_0_address1;
    wire                          int_w2_0_ce1;
    wire                          int_w2_0_we1;
    wire [3:0]                    int_w2_0_be1;
    wire [31:0]                   int_w2_0_d1;
    wire [31:0]                   int_w2_0_q1;
    reg                           int_w2_0_read;
    reg                           int_w2_0_write;
    reg  [0:0]                    int_w2_0_shift0;
    wire [0:0]                    int_w2_1_address0;
    wire                          int_w2_1_ce0;
    wire [31:0]                   int_w2_1_q0;
    wire [0:0]                    int_w2_1_address1;
    wire                          int_w2_1_ce1;
    wire                          int_w2_1_we1;
    wire [3:0]                    int_w2_1_be1;
    wire [31:0]                   int_w2_1_d1;
    wire [31:0]                   int_w2_1_q1;
    reg                           int_w2_1_read;
    reg                           int_w2_1_write;
    reg  [0:0]                    int_w2_1_shift0;
    wire [0:0]                    int_bias_1_address0;
    wire                          int_bias_1_ce0;
    wire [31:0]                   int_bias_1_q0;
    wire [0:0]                    int_bias_1_address1;
    wire                          int_bias_1_ce1;
    wire                          int_bias_1_we1;
    wire [3:0]                    int_bias_1_be1;
    wire [31:0]                   int_bias_1_d1;
    wire [31:0]                   int_bias_1_q1;
    reg                           int_bias_1_read;
    reg                           int_bias_1_write;
    reg  [0:0]                    int_bias_1_shift0;
    wire [0:0]                    int_bias_2_address0;
    wire                          int_bias_2_ce0;
    wire [31:0]                   int_bias_2_q0;
    wire [0:0]                    int_bias_2_address1;
    wire                          int_bias_2_ce1;
    wire                          int_bias_2_we1;
    wire [3:0]                    int_bias_2_be1;
    wire [31:0]                   int_bias_2_d1;
    wire [31:0]                   int_bias_2_q1;
    reg                           int_bias_2_read;
    reg                           int_bias_2_write;
    reg  [0:0]                    int_bias_2_shift0;

//------------------------Instantiation------------------
// int_w1_0
accelerator_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_w1_0 (
    .clk0      ( ACLK ),
    .address0  ( int_w1_0_address0 ),
    .ce0       ( int_w1_0_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {16{1'b0}} ),
    .q0        ( int_w1_0_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_w1_0_address1 ),
    .ce1       ( int_w1_0_ce1 ),
    .we1       ( int_w1_0_be1 ),
    .d1        ( int_w1_0_d1 ),
    .q1        ( int_w1_0_q1 )
);
// int_w1_1
accelerator_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_w1_1 (
    .clk0      ( ACLK ),
    .address0  ( int_w1_1_address0 ),
    .ce0       ( int_w1_1_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {16{1'b0}} ),
    .q0        ( int_w1_1_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_w1_1_address1 ),
    .ce1       ( int_w1_1_ce1 ),
    .we1       ( int_w1_1_be1 ),
    .d1        ( int_w1_1_d1 ),
    .q1        ( int_w1_1_q1 )
);
// int_w2_0
accelerator_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_w2_0 (
    .clk0      ( ACLK ),
    .address0  ( int_w2_0_address0 ),
    .ce0       ( int_w2_0_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {16{1'b0}} ),
    .q0        ( int_w2_0_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_w2_0_address1 ),
    .ce1       ( int_w2_0_ce1 ),
    .we1       ( int_w2_0_be1 ),
    .d1        ( int_w2_0_d1 ),
    .q1        ( int_w2_0_q1 )
);
// int_w2_1
accelerator_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_w2_1 (
    .clk0      ( ACLK ),
    .address0  ( int_w2_1_address0 ),
    .ce0       ( int_w2_1_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {16{1'b0}} ),
    .q0        ( int_w2_1_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_w2_1_address1 ),
    .ce1       ( int_w2_1_ce1 ),
    .we1       ( int_w2_1_be1 ),
    .d1        ( int_w2_1_d1 ),
    .q1        ( int_w2_1_q1 )
);
// int_bias_1
accelerator_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_bias_1 (
    .clk0      ( ACLK ),
    .address0  ( int_bias_1_address0 ),
    .ce0       ( int_bias_1_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {16{1'b0}} ),
    .q0        ( int_bias_1_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_bias_1_address1 ),
    .ce1       ( int_bias_1_ce1 ),
    .we1       ( int_bias_1_be1 ),
    .d1        ( int_bias_1_d1 ),
    .q1        ( int_bias_1_q1 )
);
// int_bias_2
accelerator_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_bias_2 (
    .clk0      ( ACLK ),
    .address0  ( int_bias_2_address0 ),
    .ce0       ( int_bias_2_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {16{1'b0}} ),
    .q0        ( int_bias_2_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_bias_2_address1 ),
    .ce1       ( int_bias_2_ce1 ),
    .we1       ( int_bias_2_be1 ),
    .d1        ( int_bias_2_d1 ),
    .q1        ( int_bias_2_q1 )
);


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA) && (!ar_hs);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (w_hs)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= {AWADDR[ADDR_BITS-1:2], {2{1'b0}}};
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA) & !int_w1_0_read & !int_w1_1_read & !int_w2_0_read & !int_w2_1_read & !int_bias_1_read & !int_bias_2_read;
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                    rdata[9] <= int_interrupt;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_AP_RETURN_0: begin
                    rdata <= int_ap_return[31:0];
                end
                ADDR_AP_RETURN_1: begin
                    rdata <= int_ap_return[63:32];
                end
                ADDR_AP_RETURN_2: begin
                    rdata <= int_ap_return[95:64];
                end
                ADDR_AP_RETURN_3: begin
                    rdata <= int_ap_return[127:96];
                end
                ADDR_AP_RETURN_4: begin
                    rdata <= int_ap_return[159:128];
                end
                ADDR_AP_RETURN_5: begin
                    rdata <= int_ap_return[191:160];
                end
                ADDR_AP_RETURN_6: begin
                    rdata <= int_ap_return[223:192];
                end
                ADDR_AP_RETURN_7: begin
                    rdata <= int_ap_return[255:224];
                end
                ADDR_TRAINING_DATA_0: begin
                    rdata <= int_training[15:0];
                end
            endcase
        end
        else if (int_w1_0_read) begin
            rdata <= int_w1_0_q1;
        end
        else if (int_w1_1_read) begin
            rdata <= int_w1_1_q1;
        end
        else if (int_w2_0_read) begin
            rdata <= int_w2_0_q1;
        end
        else if (int_w2_1_read) begin
            rdata <= int_w2_1_q1;
        end
        else if (int_bias_1_read) begin
            rdata <= int_bias_1_q1;
        end
        else if (int_bias_2_read) begin
            rdata <= int_bias_2_q1;
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_interrupt;
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign auto_restart_done = auto_restart_status && (ap_idle && !int_ap_idle);
assign training          = int_training;
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <= WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_ap_return
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_return <= 0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_return <= ap_return;
    end
end

// int_training[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_training[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINING_DATA_0)
            int_training[15:0] <= (WDATA[31:0] & wmask) | (int_training[15:0] & ~wmask);
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------
// w1_0
assign int_w1_0_address0   = w1_0_address0 >> 1;
assign int_w1_0_ce0        = w1_0_ce0;
assign w1_0_q0             = int_w1_0_q0 >> (int_w1_0_shift0 * 16);
assign int_w1_0_address1   = ar_hs? raddr[2:2] : waddr[2:2];
assign int_w1_0_ce1        = ar_hs | (int_w1_0_write & WVALID);
assign int_w1_0_we1        = int_w1_0_write & w_hs;
assign int_w1_0_be1        = int_w1_0_we1 ? WSTRB : 'b0;
assign int_w1_0_d1         = WDATA;
// w1_1
assign int_w1_1_address0   = w1_1_address0 >> 1;
assign int_w1_1_ce0        = w1_1_ce0;
assign w1_1_q0             = int_w1_1_q0 >> (int_w1_1_shift0 * 16);
assign int_w1_1_address1   = ar_hs? raddr[2:2] : waddr[2:2];
assign int_w1_1_ce1        = ar_hs | (int_w1_1_write & WVALID);
assign int_w1_1_we1        = int_w1_1_write & w_hs;
assign int_w1_1_be1        = int_w1_1_we1 ? WSTRB : 'b0;
assign int_w1_1_d1         = WDATA;
// w2_0
assign int_w2_0_address0   = w2_0_address0 >> 1;
assign int_w2_0_ce0        = w2_0_ce0;
assign w2_0_q0             = int_w2_0_q0 >> (int_w2_0_shift0 * 16);
assign int_w2_0_address1   = ar_hs? raddr[2:2] : waddr[2:2];
assign int_w2_0_ce1        = ar_hs | (int_w2_0_write & WVALID);
assign int_w2_0_we1        = int_w2_0_write & w_hs;
assign int_w2_0_be1        = int_w2_0_we1 ? WSTRB : 'b0;
assign int_w2_0_d1         = WDATA;
// w2_1
assign int_w2_1_address0   = w2_1_address0 >> 1;
assign int_w2_1_ce0        = w2_1_ce0;
assign w2_1_q0             = int_w2_1_q0 >> (int_w2_1_shift0 * 16);
assign int_w2_1_address1   = ar_hs? raddr[2:2] : waddr[2:2];
assign int_w2_1_ce1        = ar_hs | (int_w2_1_write & WVALID);
assign int_w2_1_we1        = int_w2_1_write & w_hs;
assign int_w2_1_be1        = int_w2_1_we1 ? WSTRB : 'b0;
assign int_w2_1_d1         = WDATA;
// bias_1
assign int_bias_1_address0 = bias_1_address0 >> 1;
assign int_bias_1_ce0      = bias_1_ce0;
assign bias_1_q0           = int_bias_1_q0 >> (int_bias_1_shift0 * 16);
assign int_bias_1_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_bias_1_ce1      = ar_hs | (int_bias_1_write & WVALID);
assign int_bias_1_we1      = int_bias_1_write & w_hs;
assign int_bias_1_be1      = int_bias_1_we1 ? WSTRB : 'b0;
assign int_bias_1_d1       = WDATA;
// bias_2
assign int_bias_2_address0 = bias_2_address0 >> 1;
assign int_bias_2_ce0      = bias_2_ce0;
assign bias_2_q0           = int_bias_2_q0 >> (int_bias_2_shift0 * 16);
assign int_bias_2_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_bias_2_ce1      = ar_hs | (int_bias_2_write & WVALID);
assign int_bias_2_we1      = int_bias_2_write & w_hs;
assign int_bias_2_be1      = int_bias_2_we1 ? WSTRB : 'b0;
assign int_bias_2_d1       = WDATA;
// int_w1_0_read
always @(posedge ACLK) begin
    if (ARESET)
        int_w1_0_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_W1_0_BASE && raddr <= ADDR_W1_0_HIGH)
            int_w1_0_read <= 1'b1;
        else
            int_w1_0_read <= 1'b0;
    end
end

// int_w1_0_write
always @(posedge ACLK) begin
    if (ARESET)
        int_w1_0_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_W1_0_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_W1_0_HIGH)
            int_w1_0_write <= 1'b1;
        else if (w_hs)
            int_w1_0_write <= 1'b0;
    end
end

// int_w1_0_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_w1_0_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (w1_0_ce0)
            int_w1_0_shift0 <= w1_0_address0[0];
    end
end

// int_w1_1_read
always @(posedge ACLK) begin
    if (ARESET)
        int_w1_1_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_W1_1_BASE && raddr <= ADDR_W1_1_HIGH)
            int_w1_1_read <= 1'b1;
        else
            int_w1_1_read <= 1'b0;
    end
end

// int_w1_1_write
always @(posedge ACLK) begin
    if (ARESET)
        int_w1_1_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_W1_1_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_W1_1_HIGH)
            int_w1_1_write <= 1'b1;
        else if (w_hs)
            int_w1_1_write <= 1'b0;
    end
end

// int_w1_1_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_w1_1_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (w1_1_ce0)
            int_w1_1_shift0 <= w1_1_address0[0];
    end
end

// int_w2_0_read
always @(posedge ACLK) begin
    if (ARESET)
        int_w2_0_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_W2_0_BASE && raddr <= ADDR_W2_0_HIGH)
            int_w2_0_read <= 1'b1;
        else
            int_w2_0_read <= 1'b0;
    end
end

// int_w2_0_write
always @(posedge ACLK) begin
    if (ARESET)
        int_w2_0_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_W2_0_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_W2_0_HIGH)
            int_w2_0_write <= 1'b1;
        else if (w_hs)
            int_w2_0_write <= 1'b0;
    end
end

// int_w2_0_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_w2_0_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (w2_0_ce0)
            int_w2_0_shift0 <= w2_0_address0[0];
    end
end

// int_w2_1_read
always @(posedge ACLK) begin
    if (ARESET)
        int_w2_1_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_W2_1_BASE && raddr <= ADDR_W2_1_HIGH)
            int_w2_1_read <= 1'b1;
        else
            int_w2_1_read <= 1'b0;
    end
end

// int_w2_1_write
always @(posedge ACLK) begin
    if (ARESET)
        int_w2_1_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_W2_1_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_W2_1_HIGH)
            int_w2_1_write <= 1'b1;
        else if (w_hs)
            int_w2_1_write <= 1'b0;
    end
end

// int_w2_1_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_w2_1_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (w2_1_ce0)
            int_w2_1_shift0 <= w2_1_address0[0];
    end
end

// int_bias_1_read
always @(posedge ACLK) begin
    if (ARESET)
        int_bias_1_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_BIAS_1_BASE && raddr <= ADDR_BIAS_1_HIGH)
            int_bias_1_read <= 1'b1;
        else
            int_bias_1_read <= 1'b0;
    end
end

// int_bias_1_write
always @(posedge ACLK) begin
    if (ARESET)
        int_bias_1_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_BIAS_1_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_BIAS_1_HIGH)
            int_bias_1_write <= 1'b1;
        else if (w_hs)
            int_bias_1_write <= 1'b0;
    end
end

// int_bias_1_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_bias_1_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (bias_1_ce0)
            int_bias_1_shift0 <= bias_1_address0[0];
    end
end

// int_bias_2_read
always @(posedge ACLK) begin
    if (ARESET)
        int_bias_2_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_BIAS_2_BASE && raddr <= ADDR_BIAS_2_HIGH)
            int_bias_2_read <= 1'b1;
        else
            int_bias_2_read <= 1'b0;
    end
end

// int_bias_2_write
always @(posedge ACLK) begin
    if (ARESET)
        int_bias_2_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_BIAS_2_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_BIAS_2_HIGH)
            int_bias_2_write <= 1'b1;
        else if (w_hs)
            int_bias_2_write <= 1'b0;
    end
end

// int_bias_2_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_bias_2_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (bias_2_ce0)
            int_bias_2_shift0 <= bias_2_address0[0];
    end
end


endmodule


`timescale 1ns/1ps

module accelerator_control_s_axi_ram
#(parameter
    MEM_STYLE = "auto",
    MEM_TYPE  = "S2P",
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire [BYTES-1:0]   we0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire [BYTES-1:0]   we1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------ Parameters -------------------
localparam
    BYTE_WIDTH = 8,
    PORT0 = (MEM_TYPE == "S2P") ? "WO" : ((MEM_TYPE == "2P") ? "RO" : "RW"),
    PORT1 = (MEM_TYPE == "S2P") ? "RO" : "RW";
//------------------------Local signal-------------------
(* ram_style = MEM_STYLE*)
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
wire re0, re1;
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
generate
    if (MEM_STYLE == "hls_ultra" && PORT0 == "RW") begin
        assign re0 = ce0 & ~|we0;
    end else begin
        assign re0 = ce0;
    end
endgenerate

generate
    if (MEM_STYLE == "hls_ultra" && PORT1 == "RW") begin
        assign re1 = ce1 & ~|we1;
    end else begin
        assign re1 = ce1;
    end
endgenerate

// read port 0
generate if (PORT0 != "WO") begin
    always @(posedge clk0) begin
        if (re0) q0 <= mem[address0];
    end
end
endgenerate

// read port 1
generate if (PORT1 != "WO") begin
    always @(posedge clk1) begin
        if (re1) q1 <= mem[address1];
    end
end
endgenerate

integer i;
// write port 0
generate if (PORT0 != "RO") begin
    always @(posedge clk0) begin
        if (ce0)
        for (i = 0; i < BYTES; i = i + 1)
            if (we0[i])
                mem[address0][i*BYTE_WIDTH +: BYTE_WIDTH] <= d0[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

// write port 1
generate if (PORT1 != "RO") begin
    always @(posedge clk1) begin
        if (ce1)
        for (i = 0; i < BYTES; i = i + 1)
            if (we1[i])
                mem[address1][i*BYTE_WIDTH +: BYTE_WIDTH] <= d1[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

endmodule

