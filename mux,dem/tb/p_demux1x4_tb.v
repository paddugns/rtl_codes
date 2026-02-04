`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 01:07:06 AM
// Design Name: 
// Module Name: p_demux1x4_tb
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

// testbench for 4x1dmux

module p_4x1dmux_tb;
  reg in_i;
  reg in_s1;
  reg in_s2;
  wire out_a;
  wire out_b;
  wire out_c;
  wire out_d;
  
//instansiation
  p_4x1dmux pdm(in_i,in_s1,in_s2,out_a,out_b,out_c,out_d);
  
//generating stimulus
  initial begin
    #5 in_s1=0; in_s2=0; in_i=1;
    #5 in_s1=0; in_s2=1; in_i=1;
    #5 in_s1=1; in_s2=0; in_i=1;
    #5 in_s1=1; in_s2=1; in_i=1;
    #5;
  end
  
  initial
    $monitor("in_i=%b,in_s1=%b,in_s2=%b,out_a=%b,out_b=%b,out_c=%b,out_d=%b",in_i,in_s1,in_s2,out_a,out_b,out_c,out_d);
  
//adding waveforms
  initial begin
    $dumpfile("pdmux4x1.vcd");
    $dumpvars;
  end
  
endmodule
