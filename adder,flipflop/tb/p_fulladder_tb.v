`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 01:31:50 AM
// Design Name: 
// Module Name: p_fulladder_tb
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

// testbench for fulladder

module p_fa_tb;
  reg in_a;
  reg in_b;
  reg in_c;
  wire out_s;
  wire out_c;
  
//instansiation
  p_fa pha(.a(in_a),
           .b(in_b),
           .c(in_c),
           .sum(out_s),
           .carry(out_c));
  
//generating stimulus
  initial begin
       in_a=0; in_b=0; in_c=0;
    #5 in_a=0; in_b=0; in_c=1;
    #5 in_a=0; in_b=1; in_c=0;
    #5 in_a=0; in_b=1; in_c=1;
    #5 in_a=1; in_b=0; in_c=0;
    #5 in_a=1; in_b=0; in_c=1;
    #5 in_a=1; in_b=1; in_c=0;
    #5 in_a=1; in_b=1; in_c=1;
    #5;
  end
  
  initial
    $monitor("in_a=%b,in_b=%b,in_c=%b,out_s=%b,out_c=%b",in_a,in_b,in_c,out_s,out_c);
  
//adding waveforms
  initial begin
    $dumpfile("pfa.vcd");
    $dumpvars;
  end
  
endmodule
