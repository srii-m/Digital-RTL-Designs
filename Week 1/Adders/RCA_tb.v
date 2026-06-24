`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 19:25:48
// Design Name: 
// Module Name: RCA_tb
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


module RCA_tb;

reg  [3:0] a, b;
reg cin;
wire [3:0] sum;
wire carry;

RCA uut(a, b, cin, sum, carry);

initial begin

    a = 4'b0011; b = 4'b0101; cin = 0; #10; // 3+5=8
    a = 4'b1111; b = 4'b0001; cin = 0; #10; // 15+1=16
    a = 4'b1011; b = 4'b0110; cin = 0; #10; // 10+6=16

    $finish;
end

endmodule
