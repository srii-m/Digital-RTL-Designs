`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 17:36:15
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb;

reg a, b, bin;
wire diff, bout;

full_subtractor DUT(
    .a(a),
    .b(b),
    .bin(bin),
    .diff(diff),
    .bout(bout)
);

initial begin

    $display("A B Bin | Diff Bout");
    $monitor("%b %b  %b  |  %b    %b",
              a, b, bin, diff, bout);

    a=0; b=0; bin=0; #10;
    a=0; b=0; bin=1; #10;
    a=0; b=1; bin=0; #10;
    a=0; b=1; bin=1; #10;
    a=1; b=0; bin=0; #10;
    a=1; b=0; bin=1; #10;
    a=1; b=1; bin=0; #10;
    a=1; b=1; bin=1; #10;

    $finish;

end

endmodule