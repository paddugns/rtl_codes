`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 12:51:09 AM
// Design Name: 
// Module Name: p_nand_mux2
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

// mux 2x1
module p_mux2 (input a,b,s,
              output y);
  wire w0;
  wire w1;
  
  //logic
  and a1(w0,a,~s);
  and a2(w1,b,s);
  or (y,w0,w1);
  
endmodule

//nand gate
module p_nand_m(input a,b, output y);
  
  p_mux2 m1(1,~b,a,y);
endmodule
