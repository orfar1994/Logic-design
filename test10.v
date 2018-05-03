module test10; 

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
  #2;
  reset = 0;
  #2;
  if (out !== 1'b0) $display("Failed 1"); 
  
  in = 1;
  #2;
  if (out !== 1'b0) $display("Failed 2");
  
  in = 0;  
  #2;
  if (out !== 1'b0) $display("Failed 3");
  
  in = 0;
  #2;
  if (out !== 1'b0) $display("Failed 4"); 
  
  in = 1;
  #2;
  if (out !== 1'b1) $display("Failed 5"); 
  
  #2; 
  if (out !== 1'b1) $display("Failed 6");  
  $display("Done...");
end 
  

always begin
   #1 clock = !clock;
end
   
endmodule