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
if(in==0) begin
nextstate=0;
out=0;
end
else begin
nextstate=2;
out=0;
end
end

if(state==1) begin
if(in==0) begin
nextstate=0;
out=0;
end
else begin
nextstate=2;
out=0;
end
end

if(state==2) begin
if(in==0) begin
nextstate=5;
out=0;
end
else begin
nextstate=1;
out=1;
end
end

if(state==3) begin
if(in==0) begin
nextstate=5;
out=0;
end
else begin
nextstate=1;
out=1;
end

end

if(state==4) begin
if(in==0) begin
nextstate=3;
out=1;
end
else begin
nextstate=4;
out=1;
end

end

if(state==5) begin
if(in==0) begin
nextstate=3;
out=1;
end
else begin
nextstate=4;
out=1;
end

end

end

end

endmodule