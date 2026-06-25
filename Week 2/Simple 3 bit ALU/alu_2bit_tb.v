`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2026 11:17:43
// Design Name: 
// Module Name: alu_2bit_tb
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

module alu_2bit_tb();
reg [1:0] s ;
reg [1:0] a; 
reg [1:0] b ; 
wire [3:0] y ;
alu_2bit uut(s,a,b,y);
initial begin 
a=2'b01;
b=2'b10;

s=2'b00;
#10
s=2'b01;
#10
s=2'b10;
#10
s=2'b11;
#10
$finish;
end
endmodule
