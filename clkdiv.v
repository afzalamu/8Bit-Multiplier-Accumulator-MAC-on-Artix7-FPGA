`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2024 11:55:32
// Design Name: 
// Module Name: clkdiv
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

module clkdiv(clk_in,reset,ratio,clk_out
    );
    input clk_in;
    input reset;
    input [31:0]ratio;
    output reg clk_out;
    
    reg [31:0]counter;
    
    always@(posedge clk_in,negedge reset)
    begin
    if(reset==0)
    begin
        clk_out<= 0;
        counter <= 32'd0;
    end
    else if(counter==(ratio-1))
    begin
        clk_out<= 0;
        counter <= 32'd0;
    end
    else if(counter==((ratio/2)-1)) 
    begin
        clk_out <=1;
        counter <= counter+1;
    end
    else
    counter <= counter+1;
    end
endmodule
