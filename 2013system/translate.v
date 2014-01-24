module translate(clk,mst_rst,d,a,wrb,io_ud);

input clk;
output reg mst_rst;
output wire [7:0]d;
output wire [5:0]a;
output wire wrb;
output reg io_ud;
reg cl_en=1;
reg [7:0]data_tmp;
reg[5:0]address_tmp;
wire cl;
reg[5:0]count;
reg [5:0]dount;
reg [31:0]count_clk;
assign cl=count_clk[10];
assign wrb=~cl;
assign d=data_tmp;
assign a=address_tmp;
always @ (posedge clk)
	begin
	if(cl_en==1)
           count_clk<=count_clk+1;
	end
	
always @ (posedge cl)
	begin
			if(count==36)
				begin
				count<=0;
				cl_en<=0;
				end
			else
				begin
				count<=count+1'b1;
				end
	end
	
always @	(posedge cl)
	begin
			if(dount<=2)
				begin
				mst_rst<=1'b1;
				dount<=dount+1'b1;
				end
		  else
				begin
				mst_rst<=0;
				end
	end
	
always @	(posedge cl)
	begin
			if(count<=16)
				begin
				io_ud<=1;
				end
			else
				begin
				io_ud<=0;
			
				end
			
			case(count)
			4:
				begin
				address_tmp<=6'b000100;
				data_tmp<=8'b00001100;
				end
			5:
				begin
				address_tmp<=6'b000101;
				data_tmp<=8'b11001100;
				end
			6:
				begin
				address_tmp<=6'b000110;
				data_tmp<=8'b11001100;
				end
			7:
				begin
				address_tmp<=6'b000111;
				data_tmp<=8'b11001100;
				end
			8:
				begin
				address_tmp<=6'b001000;
				data_tmp<=8'b11001100;
				end
			9:
				begin
				address_tmp<=6'b001001;
				data_tmp<=8'b11001100;
				end
			10:
				begin
				address_tmp<=6'b011101;
				data_tmp<=8'b00010000;
				end
			11:
				begin
				address_tmp<=6'b011110;
				data_tmp<=8'b01000101;
				end
			12:
				begin
				address_tmp<=6'b011111;
				data_tmp<=8'b00000000;
				end
			13:
				begin
				address_tmp<=6'b100000;
				data_tmp<=8'b01000000;
				end
			endcase

	end
			
endmodule
	 
