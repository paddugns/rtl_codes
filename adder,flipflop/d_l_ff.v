`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 04:28:17 PM
// Design Name: 
// Module Name: d_l_ff
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

// design for D latch

module d_latch(input clk,rst_n,
               input d,
               output reg q,
               output qbar);
  
  assign qbar=~q;
  
  always@(clk,d)
    begin
      if(!rst_n)
        q<=0;
      else if (clk==1)
        q<=d;
      /*case(d)
       1'b0:q<=0;
       1'b1:q<=1;*/
    end
endmodule

//dff
module dff (input CLK,RST,
           input D,
           output reg Q,
           output QBAR);
  
  wire w1,w2;
 
  d_latch d2(CLK,RST,D,w1,w2);
  d_latch d3(CLK,RST,w1,Q,QBAR);
  
endmodule
