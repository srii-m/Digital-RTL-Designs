`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 17:35:22
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(
    input a,
    input b,
    input bin,
    output diff,
    output bout
);

wire d1, b1, b2;

half_subtractor HS1(
    .a(a),
    .b(b),
    .diff(d1),
    .borrow(b1)
);

half_subtractor HS2(
    .a(d1),
    .b(bin),
    .diff(diff),
    .borrow(b2)
);

assign bout = b1 | b2;

endmodule