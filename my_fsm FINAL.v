module my_fsm (
clock ,
reset ,
in ,
out
);
input clock, reset, in;
output out;
wire clock, reset, in;
reg out;

reg [2:0] state = 0, nextstate = 0;

always@(posedge clock or posedge reset) begin
state=nextstate;
if (reset == 1) begin
out=0;
state=0;
nextstate=0;
end

else begin

if(state==0) begin
out=0;
if(in==0)
nextstate=0;
else
nextstate=2;

end

if(state==1) begin
out=1;
if(in==0)
nextstate=0;
else
nextstate=2;
end

if(state==2) begin
out=0;
if(in==0)
nextstate=5;
else
nextstate=1;
end

if(state==3) begin
out=1;
if(in==0)
nextstate=5;
else
nextstate=1;

end

if(state==4) begin
out=1;
if(in==0)
nextstate=3;
else
nextstate=4;

end

if(state==5) begin
out=0;
if(in==0)
nextstate=3;
else
nextstate=4;

end

end

end

endmodule