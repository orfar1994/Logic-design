module test_fsm; 

reg clock, reset, in;
wire out;

  my_fsm U0 ( 
  .clock (clock),
  .reset (reset),
  .in    (in),
  .out  (out) 
  ); 
   
 
initial begin
  clock = 1;
  reset = 1;
  in = 0;
  $display("Starting simulation...");
  reset = 0;
#2;
  if (out !== 1'b0) $display("Failed1"); 
  
  in=0;
  #2;
  if (out !== 1'b0) $display("Failed2"); 
  
  in=1;
  #2;
  if (out !== 1'b0) $display("Failed3"); 
  
  in=1;
  #2;
  if (out !== 1'b1) $display("Failed4"); 
  
  in=1;
  #2;
  if (out !== 1'b0) $display("Failed5"); 
  
    in=0;
  #2;
  if (out !== 1'b0) $display("Failed6"); 
  
  in=0;
  #2;
  if (out !== 1'b1) $display("Failed7"); 
  
    in=0;
  #2;
  if (out !== 1'b0) $display("Failed8"); 
  
  in=1;
  #2;
  if (out !== 1'b1) $display("Failed9"); 
  
    in=1;
  #2;
	if (out !== 1'b1) $display("Failed10");   
	
  in=0;
  #2;
  if (out !== 1'b1) $display("Failed11"); 
  
	in=1;
  #2;
  if (out !== 1'b1) $display("Failed12"); 
  
  	in=0;
  #2;
  if (out !== 1'b0) $display("Failed13"); 
  	in=0;
  #2;
  if (out !== 1'b0) $display("Failed14"); 
  in=0;
  #2;
  if (out !== 1'b0) $display("Failed15"); 
  in=1;
  #2;
  if (out !== 1'b0) $display("Failed16"); 
  in=0;
  #2;
  if (out !== 1'b0) $display("Failed17"); 
  in=0;
  #2;
  if (out !== 1'b1) $display("Failed18"); 
  in=1;
  #2;
  if (out !== 1'b1) $display("Failed19"); 
  in=0;
  #2;
  if (out !== 1'b0) $display("Failed20"); 
  $display("Done...");
end 
  

always begin
   #1 clock = !clock;
end
   
endmodule
