module Proposed_3_Bit_LFSR_Counter (Clk,Rst,CNT,Q,S,Next);
  input Clk,Rst,CNT;
  output [2:0]Q,S;
  output Next;
  wire nRst,E,X,Y;
  
  nor M0 (nRst,Next,~Rst);
  
  Edge_DFlipFlop M1 (
    .D(Q[2]),
    .Clk(Clk),
    .Rst(~nRst),
    .En(CNT),
    .Q(Q[0])
    );

  Edge_DFlipFlop M2 (
    .D(Q[0]),
    .Clk(Clk),
    .Rst(~nRst),
    .En(CNT),
    .Q(Q[1])
    );    

assign E=Q[1]^Q[2];

  Edge_DFlipFlop M3 (
    .D(E),
    .Clk(Clk),
    .Rst(~nRst),
    .En(CNT),
    .Q(Q[2])
    );        
////////////////////////////////////////////////////////////////////

  Edge_DFlipFlop_R M4 (
    .D(Q[2]),
    .Clk(Clk),
    .Rst(~nRst),
    .En(CNT),
    .Q(S[2])
    );        

nor M5 (X,S[2],Q[1]);


  Edge_DFlipFlop_R M6 (
    .D(X),
    .Clk(Clk),
    .Rst(~nRst),
    .En(CNT),
    .Q(S[1])
    );    

and M7 (Y,S[1],Q[0]);

  Edge_DFlipFlop_R M8 (
    .D(Y),
    .Clk(Clk),
    .Rst(~nRst),
    .En(CNT),
    .Q(S[0])
    );    
    assign Next=S[0];

endmodule