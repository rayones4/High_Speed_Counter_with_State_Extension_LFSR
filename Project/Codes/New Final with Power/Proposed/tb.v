module Proposed_Tb ();
  reg Clk,nRst,CNT;
  wire [63:0]Out;    
  
 initial
  begin
    Clk=1'b1;
    nRst=0'b0;
    CNT=1'b1;
    
 
 #500
 
 nRst=1'b1;
 
 
   
    
   
#5000
$finish; 


end

   always 
   #50  Clk =  ! Clk; 
   initial
   begin
     
     
     
   
     $dumpfile("Proposed.vcd");
     $dumpvars;
     
   end 
   
   
   Proposed_Counter_64_Bit M0 (Clk,nRst,CNT,Out);
 endmodule