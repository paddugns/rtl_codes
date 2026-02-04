`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 01:31:10 AM
// Design Name: 
// Module Name: p_fulladder
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
// full adder design

module p_fa (input a,b,c,
            output sum,carry);
  wire w1;
  wire w2;
  wire w3;
  
//logic in gate level of modelling
  xor x1(w1,a,b);
  and a1(w2,a,b);
  xor x2(sum,c,w1);
  and a2(w3,c,w1);
  or n1(carry,w2,w3);

  
endmodule