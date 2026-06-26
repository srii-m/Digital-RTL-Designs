module jk_ff_tb(
    );
    reg j,k,clk,rst;
    wire q,qb;
    jk_ff uut(j,k,clk,rst,q,qb);
    initial begin
    clk=0;
    forever #5 clk=~clk;
    end
    initial begin
    j=0;
    k=0;
    rst=0;
    #10
    rst=1;
    #10
    j=0;
    k=1;
    #10;
    j=1;
    k=0;
    #10
    j=1;
    k=1;
    #10
    rst=1;
    end 
     initial begin
  $monitor("\t Clk: %d  Rst: %d  J: %d  K: %d Q: %d  Qb: %d", clk,rst,j,k,q,qb);
  #50 $finish;
  end
    
endmodule
