module  DDS_UD(CLK,READY,UDIO,OSK)

input READY;
input CLK;
input CYCLEINTERVAL;

output UDIO;
output OSK;

reg UDIO=0;
reg OSK=0;
reg counter=0;
reg mode=0;
always @ (posedge CLK)
begin
if(READY=1)

end
endmodule
