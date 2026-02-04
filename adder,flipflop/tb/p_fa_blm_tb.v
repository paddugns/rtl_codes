`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 04:45:29 PM
// Design Name: 
// Module Name: p_fa_blm_tb
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
module fulladder_tb ;
  reg ta,tb,tcin;
  wire ts,tc;
  
  //instansiation
  full_adder f1(ta,tb,tcin,ts,tc);
  
  //generating stimulas
  initial begin
       ta=0; tb=0; tcin=0;
    #5 ta=0; tb=0; tcin=1;
    #5 ta=0; tb=1; tcin=0;
    #5 ta=0; tb=1; tcin=1;
    #5 ta=1; tb=0; tcin=0;
    #5 ta=1; tb=0; tcin=1;
    #5 ta=1; tb=1; tcin=0;
    #5 ta=1; tb=1; tcin=1;
    #5;
  end
  initial 
    $monitor ("ta=%b,tb=%b,tcin=%b,ts=%b,tc=%b,",ta,tb,tcin,ts,tc);
  
  initial begin
    $dumpfile("bfulladder.vcd");
    $dumpvars;
  end
endmodule