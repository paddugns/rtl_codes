`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 12:40:46 AM
// Design Name: 
// Module Name: p_calci
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


module p_calci(input [3:0]a,b, output reg [9:0]sum,sub,pro,div);
  
  //logic of my design
  always@(*)
    begin
      sum=a+b;
      sub=a-b;
      pro=a*b;
      div=a/b;
    end
    
endmodule