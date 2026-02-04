`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 01:20:58 AM
// Design Name: 
// Module Name: p_mem16b_tb
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
//test bench for ram memory
module ram;
  reg [7:0]tb_data_in; 
  reg [3:0]tb_addr;
  reg CLK,RST,W_R;
  wire [7:0]tb_data_out;
  integer i;
  
  //intsantiation
  memory_16_B dut(CLK,RST,W_R,tb_data_in,tb_addr,tb_data_out);
  
  initial 
    CLK=0;
  always
    #5 CLK=~CLK;
  
  initial 
    begin
      RST=0;
      #15 RST=1;
    end
  
  
  initial begin
    //test case 1
    //write all the locations
    #15;
 /* W_R=0; //write
    for(i=0; i<16; i=i+1)
        begin
          tb_addr=i;
          tb_data_in=$urandom_range(10,100);
          #10;
        end
      W_R=1; //read
    for(i=0; i<16; i=i+1)
        begin
          tb_addr=i;
          #10;*/
    
    
    
    //test case 2 
    // write only in the even address
   /* W_R=0;
    for(i=0;i<16;i=i+1)
      begin
        if (i%2==0)
          begin
            tb_addr=i;
            tb_data_in=$urandom_range(10,100);
            #10;
          end
      end
        //read only in the even address
        W_R=1;
        for(i=0;i<16;i=i+1)
          begin
            if(i%2==0)
           tb_addr=i;
            #10;*/
            
            
            
            
             W_R=0;
    for(i=0;i<16;i=i+1)
      begin
        if (i%2==0)
          begin
            tb_addr=i;
            tb_data_in=$urandom_range(10,100);
            #10;
          end
      end
        //read only in the even address
        W_R=1;
        for(i=0;i<16;i=i+1)
          begin
            if(i%2==0)
           tb_addr=i;
            #10;
    end
    end
  
  
  initial
    $monitor("tb_data_in=%b,tb_addr=%b,tb_data_out=%d",tb_data_in,tb_addr,tb_data_out);
  
  initial begin
    $dumpfile("ram.vcd");
    $dumpvars;
  end 
  
  initial #500 $finish;

endmodule