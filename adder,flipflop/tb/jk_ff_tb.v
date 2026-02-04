`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 04:32:45 PM
// Design Name: 
// Module Name: d_ff_tb
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

// tb for dut
  module jk_tb;
  reg tb_clk,tb_rst_n;
  reg tb_j,tb_k;
  wire tb_q,tb_qbar;
  
jk_ff dut(tb_clk,tb_rst_n,tb_j,tb_k,tb_q,tb_qbar);
    
   //clkgenration
  initial tb_clk=0;
  always #5 tb_clk=~tb_clk;
    
  //rst check
  initial begin
    tb_rst_n=0;
    #15_tb_rst_n=1;
    #100 $finish;
   
  end 
  
  //genrating stimulus
  initial begin
    #15
       tb_j=0;  tb_k=0;
    #3 tb_j=0;  tb_k=1;
    #3 tb_j=1;  tb_k=0;
    #3 tb_j=1;  tb_k=1;
    #5;
  end 
    
  initial 
    $monitor ("j=%b,k=%b,q=%b,qbar=%b",tb_j,tb_k,tb_q,tb_qbar);
  initial begin
    $dumpfile("jkff.vcd");
    $dumpvars;
  end
endmodule