`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 01:35:58 AM
// Design Name: 
// Module Name: p_xor
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
// creating code for xor gate 

module p_xor(input a,b,
              output y);
  supply1 pos;
  supply0 neg;
  wire w1;
  wire w2;
  wire w3;
  wire w4;
  
 //logic for xor gate using switch level of abstraction
 
  pmos p1(w1,pos,~a);
  pmos p2(w2,pos,a);
  pmos p3(y,w1,b);
  pmos p4(y,w2,~b); 
  nmos n1(y,w3,~a); 
  nmos n2(y,w4,a);
  nmos n3(w3,neg,~b);
  nmos n4(w4,neg,b);
  
  
endmodule