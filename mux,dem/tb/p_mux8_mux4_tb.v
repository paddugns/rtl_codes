`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 01:15:29 AM
// Design Name: 
// Module Name: p_mux8_mux4_tb
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

//testbench for dut
module mux8x1_tb;
  reg ta;
  reg tb;
  reg tc;
  reg td;
  reg te;
  reg tf;
  reg tg;
  reg th;
  reg ts1;
  reg ts2;
  reg ts3;
  wire ty;
  
  //instantanious
  mux8x1 m4(ta,tb,tc,td,te,tf,tg,th,ts1,ts2,ts3,ty);
  
  //generating stimulas
  initial begin
    ta=0; tb=0; tc=0; td=0; te=1; tf=1; tg=1; th=1;
    #5 ts1=0; ts2=0; ts3=0;
    #5 ts1=0; ts2=0; ts3=1;
    #5 ts1=0; ts2=1; ts3=0;
    #5 ts1=0; ts2=1; ts3=1;
    #5 ts1=1; ts2=0; ts3=0;
    #5 ts1=1; ts2=0; ts3=1;
    #5 ts1=1; ts2=1; ts3=0;
    #5 ts1=1; ts2=1; ts3=1;
    #5;
  end
  
initial
  $monitor("ta=%b,tb=%b,tc=%b,td=%b,te=%b,tf=%b,tg=%b,th=%b,ts1=%b,ts2=%b,ts3=%b,ty=%b",ta,tb,tc,td,te,tf,tg,th,ts1,ts2,ts3,ty);
  
//waveform
  initial begin
    $dumpfile("mux8x1.vcd");
    $dumpvars;
  end
  
endmodule
