`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 01:38:39 AM
// Design Name: 
// Module Name: p_xnor_tb
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

module p_xnor_tb;
  reg in_a;
  reg in_b;
  wire out_y;
  
//instansiation
  p_xnor pxnor(in_a,in_b,out_y);
  
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
    $dumpfile("pxnor.vcd");
    $dumpvars;
  end
  
endmodule
