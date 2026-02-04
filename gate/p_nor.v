`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 12:58:52 AM
// Design Name: 
// Module Name: p_nor
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
// creating code for nor gate 

module p_nor(input a,b,
              output y);
  supply1 pos;
  supply0 neg;
  wire w1;
  
 //logic for nor gate using switch level of abstraction
 
  pmos p1(w1,pos,a);
  pmos p2(y,w1,b); 
  nmos n1(y,neg,a); 
  nmos n2(y,neg,b); 
  
  
endmodule
