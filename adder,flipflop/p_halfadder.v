`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 01:27:42 AM
// Design Name: 
// Module Name: p_halfadder
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
//half adder design

module p_ha (input a,b,
             output sum,carry);
  
//logic in gate level of modelling
  xor x1(sum,a,b);
  and a1(carry,a,b);
  
endmodule
