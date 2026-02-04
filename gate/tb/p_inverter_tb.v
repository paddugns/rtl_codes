`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 12:53:38 AM
// Design Name: 
// Module Name: p_inverter_tb
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
// test bench to verify the dut

module p_inverter_tb;
  reg in_a;
  wire out_y;
  
//instansiation
  p_inverter pnot(.a(in_a),
                  .y(out_y));

//generating stimulus
  initial begin
    in_a=0;
#5  in_a=1;
#10 in_a=0;
#10;
  end
  
  initial
    $monitor("in_a=%b,out_y=%b",in_a,out_y);
  
//adding waveforms  
  initial begin
    $dumpfile("pnot.vcd");
    $dumpvars;
  end
  
  
endmodule