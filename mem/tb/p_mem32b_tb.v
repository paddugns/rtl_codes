`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 01:24:37 AM
// Design Name: 
// Module Name: p_mem32b_tb
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
module tb;
  parameter w=8,a=5,d=32;
  reg clk,rst;
  reg [w-1:0] datain;
  reg [a-1:0] addr;
  reg w_r;
  wire [7:0] dataout;
  integer i;
  memory_16_B ram(.clk(clk),
              .rst(rst),
              .addr(addr),
              .w_r(w_r),
              .datain(datain),
              .dataout(dataout)
  			 );
  
  initial clk=0;
  always #5 clk=~clk;
  
  initial begin
    rst=0;
    #15;
    rst=1;
  end
  
  initial begin
    //testcase
   /* w_r=0; //write all 16 lac
    for(i=0;i<=16;i=i+1)
      begin 
        addr=i;
        datain=$urandom_range(10,100);
        #10;
      end
    w_r=1;//read
     for(i=0;i<=16;i=i+1)
    begin 
      addr=i;
      #10;
    end 
  end 
*/
    
    //tescase2 only even loc
     w_r=0; //write all 16 lac
    for(i=0;i<=d;i=i+1)
      begin 
        if(i%2==0)
      begin 
        addr=i;
        datain=$urandom_range(10,100);
      end 
        #10;
      end
    w_r=1;//read
    for(i=0;i<=d;i=i+1)
    begin
      if(i%2==0)
      addr=i;
      #10;
    end 
  end
  
    
    //tescase3
    
    /*w_r=0; //write all 16 lac
    for(i=0;i<=d;i=i+1)
      begin 
        if(i%2==0) //even locations
          begin 
            addr=i;
            datain=$urandom_range(10,100);
            
          end
        else 
          begin
            addr=i;
            datain=$urandom_range(10,100);   
           
          end
        #10;
      end
    w_r=1;//read
    for(i=0;i<=d;i=i+1)
    begin
      if(i%2==1)
      addr=i;
      #10;
    end 
  end
  */
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
  end

  initial #500 $finish;
    
endmodule
