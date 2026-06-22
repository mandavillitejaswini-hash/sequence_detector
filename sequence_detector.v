`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2026 17:37:53
// Design Name: 
// Module Name: sequence_detector
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


module sequence_detector(
    input in,clk,rst,
    output reg out
    );
    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10; 
    parameter S3 = 2'b11;
    
    reg [1:0] state, next_state;
    
    always @(posedge clk or posedge rst) 
    begin
    if(rst)
    state <= S0;
    else
    state <= next_state;
    end
    always @(*) begin
    next_state = state;
    out = 0;
    case(state)
    S0 : begin
    if(in)
    next_state = S1;
    else
    next_state = S0;
    end
     S1 : begin
    if(in)
    next_state = S1;
    else
    next_state = S2;
    end
     S2 : begin
    if(in)
    next_state = S3;
    else
    next_state = S0;
    end
     S3 : begin
    if(in) begin
    next_state = S1;
    out =1;
    end
    else
    next_state = S2;
    end
    default : next_state = S0;
    endcase
    end
endmodule
