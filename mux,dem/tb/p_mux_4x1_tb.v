`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 01:04:34 AM
// Design Name: 
// Module Name: p_mux_4x1_tb
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

// testbench for 4x1mux

module p_4x1mux_tb;
  reg in_a;
  reg in_b;
  reg in_c;
  reg in_d;
  reg in_s1;
  reg in_s2;
  wire out_y;
  
//instansiation
  p_4x1mux pm(in_a,in_b,in_c,in_d,in_s1,in_s2,out_y);
  
//generating stimulus
  initial begin
       in_a=0; in_b=1; in_c=0; in_d=0;
    #5 in_s1=0; in_s2=0;
    #5 in_s1=0; in_s2=1;
    #5 in_s1=1; in_s2=0; 
    #5 in_s1=1; in_s2=1; 
    #5;
  end
  
  initial
    $monitor("in_a=%b,in_b=%b,in_c=%b,in_d=%b,in_s1=%b,in_s2=%b,out_y=%b",in_a,in_b,in_c,in_d,in_s1,in_s2,out_y);
  
//adding waveforms
  initial begin
    $dumpfile("pmux4x1.vcd");
    $dumpvars;
  end
  
endmodule
