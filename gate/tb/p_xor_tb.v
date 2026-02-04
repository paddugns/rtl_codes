`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 01:36:55 AM
// Design Name: 
// Module Name: p_xor_tb
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
// testbench to verify the dut

module p_xor_tb;
  reg in_a;
  reg in_b;
  reg in_a1;
  reg in_b1;
  wire out_y;
  
//instansiation
  p_xor pxor(in_a,in_b,out_y);
  
//generating stimulus
  initial begin
       in_a=0; in_b=0;
    #5 in_a=0; in_b=1;
    #5 in_a=1; in_b=0;
    #5 in_a=1; in_b=1;
    #5;
  end
  
  initial
    $monitor("in_a=%b,in_b=%b,out_y=%b",in_a,in_b,out_y);
  
//adding waveforms
  initial begin
    $dumpfile("pxor.vcd");
    $dumpvars;
  end
  
endmodule