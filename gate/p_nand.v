`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 01:08:36 AM
// Design Name: 
// Module Name: p_nand
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

// creating code for nand gate 

module p_nand(input a,b,
              output y);
  supply1 pos;
  supply0 neg;
  wire w1;
  
 //logic for nand gate using switch level of abstraction
 
  pmos p1(y,pos,a);
  pmos p2(y,pos,b); 
  nmos n1(y,w1,a); 
  nmos n2(w1,neg,b); 
  
  
endmodule
