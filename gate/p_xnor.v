`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 01:38:17 AM
// Design Name: 
// Module Name: p_xnor
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

// creating code for xnor gate 

module p_xnor(input a,b,
              output y);
  supply1 pos;
  supply0 neg;
  wire w1;
  wire w2;
  wire w3;
  wire w4;
  wire w5;
  
 //logic for xnor gate using switch level of abstraction
 
  pmos p1(w1,pos,~a);
  pmos p2(w2,pos,a);
  pmos p3(w5,w1,b);
  pmos p4(w5,w2,~b); 
  nmos n1(w5,w3,~a); 
  nmos n2(w5,w4,a);
  nmos n3(w3,neg,~b);
  nmos n4(w4,neg,b);
  pmos p5(y,pos,w5); 
  nmos n5(y,neg,w5); 
  
  
endmodule
