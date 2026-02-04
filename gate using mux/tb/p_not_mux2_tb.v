`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 12:44:40 AM
// Design Name: 
// Module Name: p_not_mux2_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//testbench for not gate
module p_not_tb;
  reg in_a;
  wire out_y;
  
  p_not_m m(in_a,out_y);
//values
  initial begin
    in_a=0;
    #5 in_a=1;
  end
  
  initial
    $monitor("in_a=%b,out_y=%b",in_a,out_y);
  
  //waveforms
  initial begin 
    $dumpfile("p_not_m");
    $dumpvars;
  end
endmodule