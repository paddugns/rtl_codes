`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 01:12:18 AM
// Design Name: 
// Module Name: p_mux4_mux2
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

// multiplexer2x1 design

module mux2x1 (input a,b,s,
            output y);
  wire w1,w2;
  
//logic
  and a1(w1,a,~s);
  and a2(w2,b,s);
  or  o1(y,w1,w2);
  
endmodule

//mux4x1 using 2x1
module mux4x1 (input A,B,C,D,S0,S1,
              output Y);
  wire w3,w4;
  
//logic
  mux2x1 m1(w3,A,B,S0);
  mux2x1 m2(w4,C,D,S0);
  mux2x1 m3(y,w3,w4,S1);
  
endmodule
