`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2024 13:12:36
// Design Name: 
// Module Name: mactop_tb
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


module multtop_tb( );

reg CLK;
reg [7:0] A, B;
reg RESET;
wire [7:0] O;


mactop dut(O, A, B, CLK, RESET);

// Clock generation
  
initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;  // 10ns period
  end
  
initial begin 
RESET = 1;
#5; 
RESET = 0;
A = 8'hC0; //-0.5
B = 8'hC0;
#10;
A = 8'hA0; //-0.75
B = 8'hA0; 
#10;
A = 8'hC0; //-0.5
B = 8'h20; //0.25
#50 $finish;
end



endmodule

