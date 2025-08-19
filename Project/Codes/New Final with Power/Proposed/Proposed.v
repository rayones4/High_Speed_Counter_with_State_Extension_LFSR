module Proposed_Counter_64_Bit (Clk,nRst,CNT,Out);
  input Clk,nRst,CNT;
  output [63:0]Out;
  wire X;
  wire [5:0]S; 
  
  
  Proposed_6_Bit_LFSR_Counter M0 (.Clk(Clk),.Rst(nRst),.CNT(CNT),.Q_Out(Out[5:0]),.S(S),.Next(Next));
  and M2 (X,Next,CNT);
  Binary_Counter_58bit M1 (.Clk(Clk),.Rst(nRst),.En(X),.Count_Out(Out[63:6]));
  
endmodule