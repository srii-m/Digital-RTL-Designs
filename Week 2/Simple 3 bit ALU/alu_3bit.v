`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2026 17:17:22
// Design Name: 
// Module Name: alu_3bit
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


module alu_3bit (input  [2:0] a,input  [2:0] b,input  [2:0] sel,output reg [2:0] y,output reg carry);
always @(*) begin
    carry = 1'b0;
    case (sel)
        3'b000: {carry, y} = a + b; //Addition
        3'b001: {carry, y} = a - b; //Subtraction
        3'b010: y = a & b; //AND 
        3'b011: y = a | b; //OR 
        3'b100: y = a ^ b; //XOR
        3'b101: y = ~a; //NOT
        3'b110: y = a << 1; //LEFT SHIFT
        3'b111: y = a >> 1; //RIGHT SHIFT
        default: y = 3'b000;
    endcase
end

endmodule
