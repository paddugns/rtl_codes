`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 01:14:46 AM
// Design Name: 
// Module Name: p_mux8_mux4
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

// design mu4x1 
module mux4x1 (input a,b,c,d,s1,s2,
                   output y);
  wire w1,w2,w3,w4;
  
  //logic for mux
  and a1(w1,a,~s1,~s2);
  and a2(w2,b,~s1,s2);
  and a3(w3,c,s1,~s2);
  and a4(w4,d,s1,s2);
  or o1(y,w1,w2,w3,w4);
  
endmodule

// multiplexer2x1 design

module mux2x1 (input a,b,s,
            output y);
  wire w5,w6;
  
//logic
  and a5(w5,a,~s);
  and a6(w6,s,b);
  or  o2(y,w5,w6);
  
endmodule

// design mux8x1 
module mux8x1 (input a,b,c,d,e,f,g,h,s1,s2,s3,
                   output y);
  wire w7,w8;
  
  //logic for mux
  mux4x1 m1(w7,a,b,c,d,s1,s2);
  mux4x1 m2(w8,e,f,g,h,s1,s2);
  mux2x1 m3(y,w1,w2,s3);
  
endmodule
