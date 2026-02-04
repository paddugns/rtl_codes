`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 01:28:29 AM
// Design Name: 
// Module Name: p_halfadder_tb
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

// testbench for halfadder

module p_ha_tb;
  reg in_a;
  reg in_b;
  wire out_s;
  wire out_c;
  
//instansiation
  p_ha pha(.a(in_a),
           .b(in_b),
           .sum(out_s),
           .carry(out_c));
  
//generating stimulus
  initial begin
       in_a=0; in_b=0;
    #5 in_a=0; in_b=1;
    #5 in_a=1; in_b=0;
    #5 in_a=1; in_b=1;
    #5;
  end
  
  initial
    $monitor("in_a=%b,in_b=%b,out_s=%b,out_c=%b",in_a,in_b,out_s,out_c);
  
//adding waveforms
  initial begin
    $dumpfile("pha.vcd");
    $dumpvars;
  end
  
endmodule