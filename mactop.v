`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2024 13:05:35
// Design Name: 
// Module Name: mactop
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


module mactop(O, A, B, CLK1, CLK2, RESET);
  input [7:0]A;
  input [7:0]B;
  output [7:0]O;
  input CLK1, CLK2;
  input RESET;
  
  wire [7:0]P;
  wire [7:0]Q;
  wire [7:0]R;
  wire [7:0]S;
reg8 reg1(A, CLK1,P);
reg8 reg2(B, CLK1,Q); 
mult mult1(P,Q,R);
signedadder adder1(R,O,S);
reg8bit reg3(S,CLK2,RESET,O);

endmodule
