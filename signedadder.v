`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2024 13:01:00
// Design Name: 
// Module Name: signedadder
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
module signedadder(a,b,sum);
input signed [7:0] a;
input signed [7:0] b;
output [7:0] sum;
assign sum=a+b;
endmodule