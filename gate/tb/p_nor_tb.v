`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 12:59:46 AM
// Design Name: 
// Module Name: p_nor_tb
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

module p_nor_tb;
  reg in_a;
  reg in_b;
  wire out_y;
  
//instansiation
  p_nor pnor(.a(in_a),
               .b(in_b),
               .y(out_y));
  
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
    $dumpfile("pnor.vcd");
    $dumpvars;
  end
  
endmodule
