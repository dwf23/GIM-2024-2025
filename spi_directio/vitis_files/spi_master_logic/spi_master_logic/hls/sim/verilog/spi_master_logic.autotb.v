// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      spi_master_logic
`define AUTOTB_DUT_INST AESL_inst_spi_master_logic
`define AUTOTB_TOP      apatb_spi_master_logic_top
`define AUTOTB_LAT_RESULT_FILE "spi_master_logic.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "spi_master_logic.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_spi_master_logic_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00
`define AUTOTB_II 1
`define AUTOTB_LATENCY 0

`define AESL_FIFO_data_out AESL_autofifo_data_out
`define AESL_FIFO_INST_data_out AESL_autofifo_inst_data_out
`define AESL_FIFO_data_in AESL_autofifo_data_in
`define AESL_FIFO_INST_data_in AESL_autofifo_inst_data_in
`define AUTOTB_TVIN_data_in  "../tv/cdatafile/c.spi_master_logic.autotvin_data_in.dat"
`define AUTOTB_TVIN_data_in_out_wrapc  "../tv/rtldatafile/rtl.spi_master_logic.autotvin_data_in.dat"
`define AUTOTB_TVOUT_data_out  "../tv/cdatafile/c.spi_master_logic.autotvout_data_out.dat"
`define AUTOTB_TVOUT_data_out_out_wrapc  "../tv/rtldatafile/rtl.spi_master_logic.autotvout_data_out.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 2;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 0;
parameter LENGTH_data_in = 1;
parameter LENGTH_data_out = 1;

task read_token;
    input integer fp;
    output reg [143 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
reg AESL_done = 0;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [31 : 0] data_out;
wire  data_out_ap_vld;
wire [31 : 0] data_in;
wire  data_in_ap_vld;
reg [31:0] ap_c_n_tvin_trans_num_data_in;
reg [31:0] ap_c_n_tvout_trans_num_data_out;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;


wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_out(data_out),
    .data_out_ap_vld(data_out_ap_vld),
    .data_in(data_in),
    .data_in_ap_vld(data_in_ap_vld));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
assign AESL_ready = ready;
//instantiate directIO port
//------------------------Fifodata_out Instantiation--------------

// The input and output of fifodata_out
wire  fifodata_out_wr;
wire  [31 : 0] fifodata_out_din;
wire  fifodata_out_full_n;
wire  fifodata_out_ready;
wire  fifodata_out_done;
// Internal signals
wire data_out_write;
wire data_out_full_n;

`AESL_FIFO_data_out `AESL_FIFO_INST_data_out(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifodata_out_wr),
    .if_din       (fifodata_out_din),
    .if_full_n    (fifodata_out_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifodata_out_ready),
    .done         (fifodata_out_done)
);

// Assignment between dut and fifodata_out

// Assign input of fifodata_out
assign      data_out_write        =    data_out_ap_vld;
assign      fifodata_out_wr        =   data_out_write & data_out_full_n;
assign      fifodata_out_din        =   data_out;
assign    fifodata_out_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifodata_out_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifodata_out_full_n;
initial begin : gen_reg_fifodata_out_full_n_process
    integer proc_rand;
    reg_fifodata_out_full_n = fifodata_out_full_n;
    while (1) begin
        @ (fifodata_out_full_n);
        reg_fifodata_out_full_n = fifodata_out_full_n;
    end
end

assign      data_out_full_n    =   reg_fifodata_out_full_n;

// Directly connect the internal ap_ack signal from dut
initial begin
    force      `AUTOTB_DUT_INST.data_out_ap_ack    =   data_out_full_n;
end


//instantiate directIO port
// Fifo Instantiation data_in

wire fifodata_in_rd;
wire [31 : 0] fifodata_in_dout;
wire fifodata_in_empty_n;
wire fifodata_in_ready;
wire fifodata_in_done;
// Internal signals
wire data_in_read;
wire data_in_empty_n;

`AESL_FIFO_data_in `AESL_FIFO_INST_data_in (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifodata_in_rd),
    .if_dout      (fifodata_in_dout),
    .if_empty_n   (fifodata_in_empty_n),
    .ready        (fifodata_in_ready),
    .done         (fifodata_in_done)
);

// Assignment between dut and fifodata_in

// Assign input of fifodata_in
// Directly connect the internal ap_ack signal from dut
assign      data_in_read        =   `AUTOTB_DUT_INST.data_in_ap_ack;
assign      fifodata_in_rd        =   data_in_read & data_in_empty_n;
assign    fifodata_in_ready   =   ready;
assign    fifodata_in_done    =   0;
// Assign input of dut
assign      data_in       =   fifodata_in_dout;
reg   reg_fifodata_in_empty_n;
initial begin : gen_reg_fifodata_in_empty_n_process
    integer proc_rand;
    reg_fifodata_in_empty_n = fifodata_in_empty_n;
    while (1) begin
        @ (fifodata_in_empty_n);
        reg_fifodata_in_empty_n = fifodata_in_empty_n;
    end
end

assign      data_in_empty_n    =   reg_fifodata_in_empty_n;
assign      data_in_ap_vld    =   data_in_empty_n;

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_data_in;
reg [31:0] size_data_in;
reg [31:0] size_data_in_backup;
reg end_data_out;
reg [31:0] size_data_out;
reg [31:0] size_data_out_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    # 0.1;
    rst = 0;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    # 0.1;
    dut_rst = 0;
end
    // data_in : pointer
    reg ready_data_in;
    
    always @ (*) begin
        if (end_data_in) begin
            ready_data_in <= 1;
        end else if (ap_c_n_tvin_trans_num_data_in > ready_cnt) begin
            ready_data_in <= 1;
        end else begin
            ready_data_in <= 0;
        end
    end
    
    // start
    always @ (*) begin
        if (AESL_reset) begin
            start <= 0;
        end else begin
            start <= ready_data_in;
        end
    end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait(AESL_reset === 0);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

assign ready = AESL_start;
assign ready_wire = ready;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
    // data_out : pointer
    reg done_data_out;
    
    always @ (*) begin
        if (end_data_out) begin
            done_data_out <= 1;
        end else if (ap_c_n_tvout_trans_num_data_out > done_cnt + 1) begin
            done_data_out <= 1;
        end else if (size_data_out > 1) begin
            done_data_out <= 0;
        end else if (data_out_ap_vld == 1) begin
            done_data_out <= 1;
        end else begin
            done_data_out <= 0;
        end
    end
    
    // AESL_done
    always @ (*) begin
        if (AESL_reset) begin
            AESL_done <= 0;
        end else begin
            AESL_done <= done_data_out;
        end
    end
    
    `define STREAM_SIZE_IN_data_in "../tv/stream_size/stream_size_in_data_in.dat"
    `define DIRECTIO_SIZE_IN_data_in "../tv/directio_size/directio_size_in_data_in.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_data_in
        integer fp_data_in;
        reg [127:0] token_data_in;
        integer ret;
        
        ap_c_n_tvin_trans_num_data_in = 0;
        end_data_in = 0;
        wait (AESL_reset === 0);
        
        fp_data_in = $fopen(`DIRECTIO_SIZE_IN_data_in, "r");
        if(fp_data_in == 0) begin
            $display("Failed to open file \"%s\"!", `DIRECTIO_SIZE_IN_data_in);
            $finish;
        end
        read_token(fp_data_in, token_data_in); // should be [[[runtime]]]
        if (token_data_in != "[[[runtime]]]") begin
            $display("ERROR: token_data_in != \"[[[runtime]]]\"");
            $finish;
        end
        size_data_in = 0;
        size_data_in_backup = 0;
        while (size_data_in == 0 && end_data_in == 0) begin
            ap_c_n_tvin_trans_num_data_in = ap_c_n_tvin_trans_num_data_in + 1;
            read_token(fp_data_in, token_data_in); // should be [[transaction]] or [[[/runtime]]]
            if (token_data_in == "[[transaction]]") begin
                read_token(fp_data_in, token_data_in); // should be transaction number
                read_token(fp_data_in, token_data_in); // should be size for hls::ap_hs
                ret = $sscanf(token_data_in, "%d", size_data_in);
                if (size_data_in > 0) begin
                    size_data_in_backup = size_data_in;
                end
                read_token(fp_data_in, token_data_in); // should be [[/transaction]]
            end else if (token_data_in == "[[[/runtime]]]") begin
                $fclose(fp_data_in);
                end_data_in = 1;
            end else begin
                $display("ERROR: unknown token_data_in");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_data_in == 0) begin
                if (data_in_read == 1 && data_in_empty_n == 1) begin
                    if (size_data_in > 0) begin
                        size_data_in = size_data_in - 1;
                        while (size_data_in == 0 && end_data_in == 0) begin
                            ap_c_n_tvin_trans_num_data_in = ap_c_n_tvin_trans_num_data_in + 1;
                            read_token(fp_data_in, token_data_in); // should be [[transaction]] or [[[/runtime]]]
                            if (token_data_in == "[[transaction]]") begin
                                read_token(fp_data_in, token_data_in); // should be transaction number
                                read_token(fp_data_in, token_data_in); // should be size for hls::ap_hs
                                ret = $sscanf(token_data_in, "%d", size_data_in);
                                if (size_data_in > 0) begin
                                    size_data_in_backup = size_data_in;
                                end
                                read_token(fp_data_in, token_data_in); // should be [[/transaction]]
                            end else if (token_data_in == "[[[/runtime]]]") begin
                                size_data_in = size_data_in_backup;
                                $fclose(fp_data_in);
                                end_data_in = 1;
                            end else begin
                                $display("ERROR: unknown token_data_in");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (data_in_read == 1 && data_in_empty_n == 1) begin
                    if (size_data_in > 0) begin
                        size_data_in = size_data_in - 1;
                        if (size_data_in == 0) begin
                            ap_c_n_tvin_trans_num_data_in = ap_c_n_tvin_trans_num_data_in + 1;
                            size_data_in = size_data_in_backup;
                        end
                    end
                end
            end
        end
    end
    
    `define STREAM_SIZE_OUT_data_out "../tv/stream_size/stream_size_out_data_out.dat"
    `define DIRECTIO_SIZE_OUT_data_out "../tv/directio_size/directio_size_out_data_out.dat"
    
    initial begin : proc_ap_c_n_tvout_trans_num_data_out
        integer fp_data_out;
        reg [127:0] token_data_out;
        integer ret;
        
        ap_c_n_tvout_trans_num_data_out = 0;
        end_data_out = 0;
        wait (AESL_reset === 0);
        
        fp_data_out = $fopen(`DIRECTIO_SIZE_OUT_data_out, "r");
        if (fp_data_out == 0) begin // Failed to open file
            $display("Failed to open size file for \"%s\"!", `DIRECTIO_SIZE_OUT_data_out);
            $finish;
        end
        read_token(fp_data_out, token_data_out);
        if (token_data_out != "[[[runtime]]]") begin
            $display("ERROR: token_data_out != \"[[[runtime]]]\"");
            $finish;
        end
        
        size_data_out = 0;
        while (size_data_out == 0 && end_data_out == 0) begin
            ap_c_n_tvout_trans_num_data_out = ap_c_n_tvout_trans_num_data_out + 1;
            read_token(fp_data_out, token_data_out); // should be [[transaction]] or [[[/runtime]]]
            if (token_data_out == "[[transaction]]") begin
                read_token(fp_data_out, token_data_out); // should be transaction number
                read_token(fp_data_out, token_data_out); // should be size for hls::ap_hs
                ret = $sscanf(token_data_out, "%d", size_data_out);
                read_token(fp_data_out, token_data_out); // should be [[/transaction]]
            end else if (token_data_out == "[[[/runtime]]]") begin
                $fclose(fp_data_out);
                end_data_out = 1;
            end else begin
                $display("ERROR: unknown token_data_out");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_data_out == 0) begin 
                if (data_out_write == 1) begin 
                    if (size_data_out > 0) begin
                        size_data_out = size_data_out - 1;
                        while (size_data_out == 0 && end_data_out == 0) begin
                            ap_c_n_tvout_trans_num_data_out = ap_c_n_tvout_trans_num_data_out + 1;
                            read_token(fp_data_out, token_data_out); // should be [[transaction]] or [[[/runtime]]]
                            if (token_data_out == "[[transaction]]") begin
                                read_token(fp_data_out, token_data_out); // should be transaction number
                                read_token(fp_data_out, token_data_out); // should be size for hls::ap_hs
                                ret = $sscanf(token_data_out, "%d", size_data_out);
                                read_token(fp_data_out, token_data_out); // should be [[/transaction]]
                            end else if (token_data_out == "[[[/runtime]]]") begin
                                $fclose(fp_data_out);
                                end_data_out = 1;
                            end else begin
                                $display("ERROR: unknown token_data_out");
                                $finish;
                            end
                        end
                    end
                end
            end
        end
    end
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_data_out;

initial begin : dump_tvout_runtime_sign_data_out
    integer fp;
    dump_tvout_finish_data_out = 0;
    fp = $fopen(`AUTOTB_TVOUT_data_out_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data_out_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_data_out_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data_out_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_data_out = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 1) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    integer real_cnt;
    integer valid_cnt;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;
        real_cnt = (start_cnt < finish_cnt) ? start_cnt : AUTOTB_TRANSACTION_NUM;
        valid_cnt = 0;

        for (i = 0; i < real_cnt; i = i + 1) begin
            // calculate latency
            if (finish_timestamp[i] >= start_timestamp[i]) begin
                latency[i] = finish_timestamp[i] - start_timestamp[i];
                if (latency[i] > latency_max) latency_max = latency[i];
                if (latency[i] < latency_min) latency_min = latency[i];
                latency_total = latency_total + latency[i];
                valid_cnt = valid_cnt + 1;
            end else begin
                latency[i] = 0;
            end
            // calculate interval
            if (real_cnt == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < real_cnt - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        if (valid_cnt > 0)
            latency_average = latency_total / valid_cnt;
        else
            latency_average = latency_total;
        if (real_cnt == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (real_cnt - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (real_cnt == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < real_cnt; i = i + 1) begin
                if (i < real_cnt - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
        if (start_cnt < finish_cnt)
            $display("Note: for this 'ap_ctrl_none' design the last %0d transactions have no output. In order to save runtime, cosim will end eariler after getting all needed output. So performance report only covers the first %0d transactions.",(finish_cnt - start_cnt), start_cnt);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
