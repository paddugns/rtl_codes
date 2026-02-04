`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 01:17:13 AM
// Design Name: 
// Module Name: p_alu
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

// code for ALU circuit
module alu(input [3:0] a,b,
           input [2:0] s,
           output reg [3:0] y);
  
  always@(*)
    begin
      y=(s==0)?a+b:(s==1)?b-a:(s==2)?a*b:(s==3)?b/a:(s==4)?a&b:(s==5)?a|b:a^b;
    end
  
endmodule