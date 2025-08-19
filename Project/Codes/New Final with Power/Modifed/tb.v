module Modified_Tb ();
  reg Clk,nRst,CNT;
  wire [63:0]Out;    
  
 initial
  begin
    Clk=1'b1;
    nRst=0'b1;
    CNT=1'b1;
    
 
 #500
 
 nRst=1'b0;
 
 
   
    
   
#5000
$finish; 


end

   always 
   #50  Clk =  ! Clk; 
   initial
   begin
     
     
     
   
     $dumpfile("Modified.vcd");
     $dumpvars;
     
   end 
   
   Modifed_Counter_64_Bit M1 (Clk,nRst,CNT,Out);

 endmodule