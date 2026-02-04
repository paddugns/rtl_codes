`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 01:24:02 AM
// Design Name: 
// Module Name: p_buffer
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

// impliment a code for buffer
module p_buffer(input a,
                  output y);
  supply1 pos;
  supply0 neg;
  wire w1;
  
//logic for buffer gate using switch level of abstraction
  pmos p1(w1,pos,a);
  nmos n1(w1,neg,a);
  pmos p2(y,pos,w1);
  nmos n2(y,neg,w1);
  
  
  
endmodule