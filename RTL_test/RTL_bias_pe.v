`timescale 100ps/100ps

module RTL_bias_pe (
    input ap_clk, ap_rst, ap_ce,
    input wire [15:0] delta_k, sum_in, init_bias, eta, training, //since fixed_16 data type
    output [1:0][15:0] return_array //inspired by bias_struct

)
//perform the operations of the bias pe as presented by Ray Simar

reg [1:0][15:0] updated_array;

always @(posedge ap_clk)
    if (ap_rst) 
    begin
        updated_array[1] <= '0;
        updated_array[0] <= '0;
    end
    else if (ap_ce) 
    begin
        updated_array[1] <= init_bias + sum_in;// net_sum
        updated_array[0] <= init_bias - (delta_k * eta); ///bias_change
    end

assign return_array = updated_array;

endmodule //RTL_bias_pe

