`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 01:13:18 AM
// Design Name: 
// Module Name: p_mu4_mux2_tb
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
  reg ta;
  reg tb;
  reg tc;
  reg td;
  reg ts0;
  reg ts1;
  wire ty;
  
//instansiation
  mux4x1 m(ta,tb,tc,td,ts0,ts1,ty);
  
//generating stimulus
  initial begin
       ta=1; tb=1; tc=1; td=1;
    #5 ts0=0; ts1=0;
    #5 ts0=0; ts1=1;
    #5 ts0=1; ts1=0; 
    #5 ts0=1; ts1=1; 
    #5;
  end
  
  initial
    $monitor("ta=%b,tb=%b,tc=%b,td=%b,ts0=%b,ts1=%b,ty=%b",ta,tb,tc,td,ts0,ts1,ty);
  
//adding waveforms
  initial begin
    $dumpfile("mux4x1x2.vcd");
    $dumpvars;
  end
  
endmodule
