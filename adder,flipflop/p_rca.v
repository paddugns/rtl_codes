`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 04:39:33 PM
// Design Name: 
// Module Name: p_rca
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

// fulladder for data flow level of abstraction
module fulladder(input a,b,cin, output sum,carry);
  
  assign sum=a^b^cin;
  assign carry=(a&b)|cin&(a^b);
  
endmodule

//ripple carry adder
module rca4(input [3:0]A,B,
            input CIN,
            output [3:0]s,
            output COUT);
  wire [2:0]w;
  
  fulladder f0(.a(A[0]),
               .b(B[0]),
               .cin(CIN),
               .sum(s[0]),
               .carry(w[0]));
  fulladder f1(.a(A[1]),
               .b(B[1]),
               .cin(w[0]),
               .sum(s[1]),
               .carry(w[1]));
  fulladder f2(.a(A[2]),
               .b(B[2]),
               .cin(w[1]),
               .sum(s[2]),
               .carry(w[2]));
  fulladder f3(.a(A[3]),
               .b(B[3]),
               .cin(w[2]),
               .sum(s[3]),
               .carry(COUT));
  
endmodule
