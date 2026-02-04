`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 01:17:45 AM
// Design Name: 
// Module Name: p_alu_tb
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

//tb code for ALU
module tb_alu;
  reg [3:0] tb_a,tb_b;
  reg [2:0] tb_s;
  wire[3:0]  tb_y;
  
  //instantiation
  alu dut(tb_a,tb_b,tb_s,tb_y);
  

  initial begin
       tb_a=2; tb_b=4; 
    #5 tb_s=0;
    #5 tb_s=1;
    #5 tb_s=2;
    #5 tb_s=3;
    #5 tb_s=4;
    #5 tb_s=5;
    #5 tb_s=6;
    #5;
  end
    
    initial
      $monitor("tb_a=%b,tb_b=%b,tb_s=%d,tb_y=%d",tb_a,tb_b,tb_s,tb_y);
  
  initial begin
    $dumpfile("alu.vcd");
    $dumpvars;
  end
  
endmodule
