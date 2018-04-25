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

reg [2:0] state = 0;

always @(state)
begin
case (state)
0: out=0;
1: out=1;
2: out=0;
3: out=1;
4: out=1;
5: out=0;
default: out=0;

endcase
end

always@(posedge clock or posedge reset) begin
if (reset == 1) begin
out=0;
state=0;
end

else begin
case(state)
0:
if(in==0)
state=0;
else
state=2;

1:
if(in==0)
state=0;
else
state=2;

2:
if(in==0)
state=5;
else
state=1;

3:
if(in==0)
state=5;
else
state=1;

4:
if(in==0)
state=3;
else
state=4;

5:
if(in==0)
state=3;
else
state=4;

endcase
end
end

endmodule