
`include "dump_file_agent.svh"
`include "csv_file_dump.svh"
`include "sample_agent.svh"
`include "loop_sample_agent.svh"
`include "sample_manager.svh"
`include "nodf_module_interface.svh"
`include "nodf_module_monitor.svh"
`include "upc_loop_interface.svh"
`include "upc_loop_monitor.svh"
`timescale 1ns/1ps

// top module for dataflow related monitors
module dataflow_monitor(
input logic clock,
input logic reset,
input logic finish
);




    nodf_module_intf module_intf_1(clock,reset);
    assign module_intf_1.ap_start = AESL_inst_example_acc.ap_start;
    assign module_intf_1.ap_ready = AESL_inst_example_acc.ap_ready;
    assign module_intf_1.ap_done = AESL_inst_example_acc.ap_done;
    assign module_intf_1.ap_continue = 1'b1;
    assign module_intf_1.finish = finish;
    csv_file_dump mstatus_csv_dumper_1;
    nodf_module_monitor module_monitor_1;

    upc_loop_intf#(3) upc_loop_intf_1(clock,reset);
    assign upc_loop_intf_1.cur_state = AESL_inst_example_acc.ap_CS_fsm;
    assign upc_loop_intf_1.iter_start_state = AESL_inst_example_acc.ap_ST_fsm_state1;
    assign upc_loop_intf_1.iter_end_state = AESL_inst_example_acc.ap_ST_fsm_state3;
    assign upc_loop_intf_1.quit_state = AESL_inst_example_acc.ap_ST_fsm_state3;
    assign upc_loop_intf_1.iter_start_block = AESL_inst_example_acc.ap_ST_fsm_state1_blk;
    assign upc_loop_intf_1.iter_end_block = AESL_inst_example_acc.ap_ST_fsm_state3_blk;
    assign upc_loop_intf_1.quit_block = AESL_inst_example_acc.ap_ST_fsm_state3_blk;
    assign upc_loop_intf_1.iter_start_enable = 1'b1;
    assign upc_loop_intf_1.iter_end_enable = 1'b1;
    assign upc_loop_intf_1.quit_enable = 1'b1;
    assign upc_loop_intf_1.loop_start = AESL_inst_example_acc.ap_start;
    assign upc_loop_intf_1.loop_ready = AESL_inst_example_acc.ap_ready;
    assign upc_loop_intf_1.loop_done = AESL_inst_example_acc.ap_done_int;
    assign upc_loop_intf_1.loop_continue = 1'b1;
    assign upc_loop_intf_1.quit_at_end = 1'b1;
    assign upc_loop_intf_1.finish = finish;
    csv_file_dump upc_loop_csv_dumper_1;
    upc_loop_monitor #(3) upc_loop_monitor_1;

    sample_manager sample_manager_inst;

initial begin
    sample_manager_inst = new;



    mstatus_csv_dumper_1 = new("./module_status1.csv");
    module_monitor_1 = new(module_intf_1,mstatus_csv_dumper_1);




    upc_loop_csv_dumper_1 = new("./upc_loop_status1.csv");
    upc_loop_monitor_1 = new(upc_loop_intf_1,upc_loop_csv_dumper_1);

    sample_manager_inst.add_one_monitor(module_monitor_1);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_1);
    
    fork
        sample_manager_inst.start_monitor();
        last_transaction_done;
    join
    disable fork;

    sample_manager_inst.start_dump();
end

    task last_transaction_done();
        wait(reset == 0);
        while(1) begin
            if (finish == 1'b1) begin
                @(negedge clock);
                break;
            end
            else
                @(posedge clock);
        end
    endtask


endmodule
