`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2026 17:39:29
// Design Name: 
// Module Name: comparator_3bit
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


`timescale 1ns/1ps

module tb_comparator_3bit;

reg  [2:0] a;
reg  [2:0] b;
wire greater;
wire equal;
wire less;

comparator_3bit uut (
    .a(a),
    .b(b),
    .greater(greater),
    .equal(equal),
    .less(less)
);

initial begin
    a = 3'b000; b = 3'b000; #10;
    a = 3'b001; b = 3'b010; #10;
    a = 3'b011; b = 3'b001; #10;
    a = 3'b101; b = 3'b101; #10;
    a = 3'b111; b = 3'b011; #10;
    a = 3'b010; b = 3'b110; #10;
    $finish;
end

initial begin
    $monitor("a=%b b=%b greater=%b equal=%b less=%b", a, b, greater, equal, less);
end

endmodule