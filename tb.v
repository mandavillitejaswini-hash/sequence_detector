`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2026 17:45:55
// Design Name: 
// Module Name: tb
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


module tb();
 reg in,clk,rst;
 wire out;
 
 sequence_detector s0(in,clk,rst,out);
 
 always #5 clk = ~clk;
 initial begin
 clk =0;
 rst =1;
 #10;
 rst =0;
 in =1;
 #10;
 in =0;
 #10;
 in = 1;
 #10;
 in =1;
 #10;
 in = 0;
 #10;
 $finish;
 end
endmodule
