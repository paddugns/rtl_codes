`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 04:40:27 PM
// Design Name: 
// Module Name: p_rca_tb
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

//testbench for dut
module frca_tb;
  reg [3:0]in_a;
  reg [3:0]in_b;
  reg in_cin;
  wire [3:0]out_sum;
  wire [3:0]out_carry;
  
  //instantenious
  rca4 r1(in_a,in_b,in_cin,out_sum,out_carry);
  
   //generating stimulas
  initial begin
    repeat(10)
      begin
        {in_a,in_b,in_cin}=$random;
        #5;
      end
  end
  
initial
  $monitor("in_a=%0d,in_b=%0d,in_cin=%0d,out_sum=%0d,out_carry=%0d",in_a,in_b,in_cin,out_sum,out_carry);
  
//waveform
  initial begin
    $dumpfile("rca4.vcd");
    $dumpvars;
  end
  
  
endmodule
