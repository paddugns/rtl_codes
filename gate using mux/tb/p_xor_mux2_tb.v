`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 12:56:55 AM
// Design Name: 
// Module Name: p_xor_mux2_tb
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
//testbench for xor gate
module p_xor_tb;
  reg in_a;
  reg in_b;
  wire out_y;
  
  p_xor_m m(in_a,in_b,out_y);
//values
  initial begin
       in_a=0;  in_b=0;
    #5 in_a=0;  in_b=1;
    #5 in_a=1;  in_b=0;
    #5 in_a=1;  in_b=1;
    #5;
  end
  
  initial
    $monitor("in_a=%b,in_b=%b,out_y=%b",in_a,in_b,out_y);
  
  //waveforms
  initial begin 
    $dumpfile("p_xor_m");
    $dumpvars;
  end
endmodule
