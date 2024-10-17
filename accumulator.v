`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2024 12:00:42
// Design Name: 
// Module Name: accumulator
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

module accumulator (
    input wire clk,         // Clock input
    input wire rst,         // Synchronous reset input
    input wire [7:0] in,   // Input from multiplier (24 bits)
    output reg [7:0] out   // Accumulated output (24 bits)
);

// Reset condition
always @(posedge clk)
begin
    if (rst)
        out <= 8'd0;       // Reset to zero when rst is high
    else
        out <= out + in;    // Accumulate input to output
end

endmodule

