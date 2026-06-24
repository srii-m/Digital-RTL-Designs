module half_adder_tb;
reg A;
reg B;
wire Sum;
wire Carry;

  half_adder dut(A,B,Sum,Carry
);

initial begin
    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;
    $finish;
end

endmodule
