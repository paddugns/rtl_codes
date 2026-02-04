`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 04:29:16 PM
// Design Name: 
// Module Name: d_l_ff_tb
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
  module dff_tb;
  reg tb_clk,tb_rst_n;
  reg tb_d;
  wire tb_q,tb_qbar;
  
  dff dut(tb_clk,tb_rst_n,tb_d,tb_q,tb_qbar);
    
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
    tb_d=0;
    #3 tb_d=1;
    #2 tb_d=0;
    #1 tb_d=1;
  end 
  initial 
    $monitor ("d=%b,q=%b,qbar=%b",tb_d,tb_q,tb_qbar);
  initial begin
    $dumpfile("dff.vcd");
    $dumpvars;
  end
endmodule
