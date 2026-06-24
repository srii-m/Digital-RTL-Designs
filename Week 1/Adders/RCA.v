`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 18:40:58
// Design Name: 
// Module Name: RCA
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


module RCA ( input [3:0]a, input [3:0]b, input cin, output [3:0]sum , output carry);

wire c1,c2,c3;
FA FA0 (a[0], b[0], cin, sum[0], c1);
FA FA1 (a[1], b[1], c1, sum[1], c2);
FA FA2 (a[2], b[2], c2, sum[2], c3);
FA FA3 (a[3], b[3], c3, sum[3], carry);

endmodule