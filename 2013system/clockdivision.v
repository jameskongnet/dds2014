module clockdivision(clk,cout);
input clk;
output cout;
reg cout=0;
reg [9:0]counter=0;
parameter division=10'd2;
always @(posedge clk)
	begin
		if(counter<division)
			begin
				counter<=counter+1'b1;
			end
		else
			begin	
				cout<=~cout;
				counter<=0;
			end
	end

endmodule
