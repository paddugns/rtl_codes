`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 01:03:40 AM
// Design Name: 
// Module Name: p_mux_4x1
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
// multiplexer4x1 design

module p_4x1mux (input a,b,c,d,s1,s2,
            output y);
  wire w1;
  wire w2;
  wire w3;
  wire w4;
  
//logic in gate level of modelling
  and a1(w1,a,~s1,~s2);
  and a2(w2,b,~s1,s2);
  and a3(w3,c,s1,~s2);
  and a4(w4,d,s1,s2);
  or  o1(y,w1,w2,w3,w4);
  
endmodule
