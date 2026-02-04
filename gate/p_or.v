`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 01:33:40 AM
// Design Name: 
// Module Name: p_or
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

// creating code for or gate 

module p_or(input a,b,
              output y);
  supply1 pos;
  supply0 neg;
  wire w1;
  wire w2;
  
 //logic for nor gate using switch level of abstraction
 
  pmos p1(w1,pos,a);
  pmos p2(w2,w1,b); 
  nmos n1(w2,neg,a); 
  nmos n2(w2,neg,b);
  pmos p3(y,pos,w2);
  nmos n3(y,neg,w2);
  
  
endmodule
  