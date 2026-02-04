`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 12:51:51 AM
// Design Name: 
// Module Name: p_inverter
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

    // impliment a code for inverter (not gate) 
module p_inverter(input a,
                  output y);
  supply1 pos;
  supply0 neg;
  
//logic for not gate using switch level of abstraction
  pmos p1(y,pos,a);
  nmos n1(y,neg,a);
 
endmodule
