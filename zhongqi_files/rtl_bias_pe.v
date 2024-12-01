`timescale 1ns / 1ps

module rtl_bias_pe (
    input wire ap_clk, ap_rst, ap_ce,
    input wire [15:0] delta_k, sum_in, init_bias, eta, training, //since fixed_16 data type
    output reg [15:0] return_array_0, //inspired by bias_struct
    output reg [15:0] return_array_1
);
//perform the operations of the bias pe as presented by Ray Simar

(* dont_touch = "1" *)
always @(posedge ap_clk) begin
    if (ap_rst) begin
        return_array_1 <= 16'b0;
        return_array_0 <= 16'b0;
    end else if (ap_ce) begin
        return_array_1 <= init_bias + sum_in;// net_sum
        return_array_0 <= init_bias - (delta_k * eta); ///bias_change
    end
end

endmodule //rtl_bias_pe