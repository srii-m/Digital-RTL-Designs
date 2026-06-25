`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2026 10:26:14
// Design Name: 
// Module Name: alu_2bit
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

module alu_2bit(input [1:0] s, input [1:0] a, input [1:0] b , output reg [3:0] y);
always @(*)
begin
case (s)
2'b00: y = a+b;
2'b01 : y = a-b;
2'b10: y = a&b;
2'b11: y = a|b;
endcase
end
endmodule
