module Edge_DFlipFlop_R (D,Clk,Rst,En,Q);
  input D; // Data input 
  input Clk; // clock input 
  input Rst,En; //synchronous reset 
  output reg Q; // output Q 
  always @(negedge Clk) 
  begin
    if(Rst==1'b1)
       Q <= 1'b0; 
    else if(En)
       Q <= D; 
  end 
endmodule
