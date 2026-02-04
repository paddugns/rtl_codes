`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 01:23:17 AM
// Design Name: 
// Module Name: p_mem32b
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
module memory_16_B #(parameter width=8,a=5,depth=32) (datain,addr,w_r,clk,rst,dataout);
  input [width-1:0] datain;
  input [a-1:0] addr;//0-15 (16 locations)
  input w_r;
  input clk;
  input rst;
  
  
  output reg [7:0] dataout;
  integer i;
  //syntax: <datatype> [capacity of each loc] <name> [num oof locs]
  
  reg [width-1:0] memory [depth-1:0];
  
  always @(posedge clk)
    begin 
      if(!rst)
        begin 
          dataout<=8'd0;
          for(i=0;i<16;i=i+1)
            begin 
              memory[i]<=8'd0; 
            end 
        end
      else if(w_r==0)//write operation
            memory[addr]<=datain;
      else //read op 
            dataout<=memory[addr];
          
    end
  
endmodule 