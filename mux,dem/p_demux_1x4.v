`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 01:06:22 AM
// Design Name: 
// Module Name: p_demux_1x4
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

// demultiplexer4x1 design

module p_4x1dmux (input i,s1,s2,
            output a,b,c,d);

  
//logic in gate level of modelling
  and a1(a,i,~s1,~s2);
  and a2(b,i,~s1,s2);
  and a3(c,i,s1,~s2);
  and a4(d,i,s1,s2);
  
endmodule