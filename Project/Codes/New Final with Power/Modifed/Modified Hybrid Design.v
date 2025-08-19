module Modifed_Counter_64_Bit (Clk,nRst,CNT,Out);
  input Clk,nRst,CNT;
  output [63:0]Out;
  wire X,Next;
  
  Modified_Design M0 (.clk(Clk),. rst(nRst),.out(Out[5:0]),.Next(Next) );
  and M2 (X,Next,CNT);
  Binary_Counter_58bit M1 (.Clk(Clk),.Rst(nRst),.En(X),.Count_Out(Out[63:6]));
  
endmodule