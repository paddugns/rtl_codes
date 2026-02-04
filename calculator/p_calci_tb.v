`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 12:43:01 AM
// Design Name: 
// Module Name: p_calci_tb
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


module p_calci_tb;
 reg [3:0]tb_a,tb_b;
  wire [4:0]tb_sum,tb_sub,tb_pro,tb_div;
  
 //instansiation of dut
  p_calci dut(.a(tb_a),.b(tb_b),.sum(tb_sum),.sub(tb_sub),.pro(tb_pro),.div(tb_div));
  
  
  //generating stimulus
  initial begin
    tb_a=4;tb_b=5;
    #5 $display("tb_a=%d,tb_b=%d,tb_sum=%d,tb_sub=%d",tb_a,tb_b,tb_sum,tb_sub);
  end

endmodule