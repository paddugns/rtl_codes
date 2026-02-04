`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 01:19:37 AM
// Design Name: 
// Module Name: p_mem16b
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
// Code for ram memory
module memory_16_B(input clk,rst_n,w_r,
                   input [7:0]data_in,
                   input [3:0]addr,//we know that total 15 bits and so 4*4
                   output reg[7:0] data_out);
  integer i;
                   
  //syntax :<data type> [capacity of each location] <name>[number of location]
  reg [7:0] memory [15:0];
  //reset logic
  always@(posedge clk)
  begin
    if(!rst_n)
      begin
        data_out<=8'd0;
        for(i=0;i<16;i=i+1)
          begin
            memory[i]<=8'd0;
          end
      end
    else if(w_r==0) //write operation
      memory[addr]<=data_in;
    else //read operation
      data_out<=memory[addr];
  end
      endmodule