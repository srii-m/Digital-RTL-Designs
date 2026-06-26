module t_ff(
input t,
input clk,
input rst,
output reg q,
output qb
    );
    always @(posedge clk)
    begin
    if(!rst)
    begin
    q<=0;
    end
    else
    begin
  q <= (t) ? ~q : q;
    end
    end
    assign qb = ~q;
endmodule
