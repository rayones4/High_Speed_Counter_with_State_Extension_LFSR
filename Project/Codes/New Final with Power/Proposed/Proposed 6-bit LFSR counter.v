module Proposed_6_Bit_LFSR_Counter (Clk,Rst,CNT,Q_Out,S,Next);
  input Clk,Rst,CNT;
  output [5:0]Q_Out,S;
  output Next;
  wire nRst,E,X,Y,Z,Z1,Z2,Z3;
  wire [5:0]Q;
  
  assign Q_Out={Q[4],Q[3],Q[2],Q[1],Q[0],Q[5]};
  
  nor M0 (nRst,Next,~Rst);
  
  Edge_DFlipFlop M1 (
    .D(Q[5]),
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

  Edge_DFlipFlop M3 (
    .D(Q[1]),
    .Clk(Clk),
    .Rst(~nRst),
    .En(CNT),
    .Q(Q[2])
    );    

  Edge_DFlipFlop M4 (
    .D(Q[2]),
    .Clk(Clk),
    .Rst(~nRst),
    .En(CNT),
    .Q(Q[3])
    );    
    
  Edge_DFlipFlop M5 (
    .D(Q[3]),
    .Clk(Clk),
    .Rst(~nRst),
    .En(CNT),
    .Q(Q[4])
    );            

assign E=Q[4]^Q[5];

  Edge_DFlipFlop M6 (
    .D(E),
    .Clk(Clk),
    .Rst(~nRst),
    .En(CNT),
    .Q(Q[5])
    );        
////////////////////////////////////////////////////////////////////

  Edge_DFlipFlop_R M7 (
    .D(Q[4]),
    .Clk(Clk),
    .Rst(~nRst),
    .En(CNT),
    .Q(S[5])
    );        

nor M8 (X,~S[5],Q[3]);


  Edge_DFlipFlop_R M9 (
    .D(X),
    .Clk(Clk),
    .Rst(~nRst),
    .En(CNT),
    .Q(S[4])
    );    

nor M10 (Y,~S[4],Q[2]);


  Edge_DFlipFlop_R M11 (
    .D(Y),
    .Clk(Clk),
    .Rst(~nRst),
    .En(CNT),
    .Q(S[3])
    );    

and M12 (Z,S[3],Q[1]);

  Edge_DFlipFlop_R M13 (
    .D(Z),
    .Clk(Clk),
    .Rst(~nRst),
    .En(CNT),
    .Q(S[2])
    );    
    

and M14 (Z1,S[2],Q[0]);

  Edge_DFlipFlop_R M15 (
    .D(Z1),
    .Clk(Clk),
    .Rst(~nRst),
    .En(CNT),
    .Q(S[1])
    );    


and M16 (Z2,S[1],Q[5]);

  Edge_DFlipFlop_R M17 (
    .D(Z2),
    .Clk(Clk),
    .Rst(~nRst),
    .En(CNT),
    .Q(S[0])
    );           

    
assign Next=S[0];

endmodule