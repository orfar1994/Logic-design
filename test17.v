module test17; 

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
  
  $display("Done...");
end 
  

always begin
   #1 clock = !clock;
end
   
endmodule