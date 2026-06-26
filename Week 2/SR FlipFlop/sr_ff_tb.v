module sr_ff_tb(
    );
    reg s,r,clk,rst;
    wire q,qb;
    sr_ff uut(s,r,clk,rst,q,qb);
    initial begin
    clk=0;
    forever #5 clk=~clk;
    end
    initial begin
    s=0;
    r=0;
    rst=0;
    #10
    rst=1;
    #10
    s=0;
    r=1;
    #10;
    s=1;
    r=0;
    #10
    s=1;
    r=1;
    #10
    rst=1;
    end 
     initial begin
  $monitor("\t Clk: %d  Rst: %d  S: %d  R: %d Q: %d  Qb: %d", clk,rst,s,r,q,qb);
  #50 $finish;
  end
    
endmodule
