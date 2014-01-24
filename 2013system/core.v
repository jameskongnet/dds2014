module testcore(CLKIN,SHK,CEN,F1H,F1L,F2H,F2L,PTW1,PTW2,TRAIANGLE,MODE,DFW,RAMPRATE,PLLEN,CLKMUILT,PLLRANGE,CYCLE,UD_DELAY_CLK_CYCLE,FSKDATA_BPSK_HOLD_CLK_CYCLE,FSKDATA_BPSK);
	input 		CLKIN;
	
	output		CEN;
	output   	[15:0]F1H;
	output   	[31:0]F1L;
	output   	[15:0]F2H;
	output   	[31:0]F2L;
	output 		[2:0]MODE; 
	output 		[47:0]DFW;
	output		[13:0]PTW1;
	output		[13:0]PTW2;
	output		[19:0]RAMPRATE;
	output		TRAIANGLE;
	output 		PLLEN;
	output 		[4:0]CLKMUILT;
	output		PLLRANGE;
	
	output		[31:0]CYCLE;
	output		[31:0]UD_DELAY_CLK_CYCLE;
	output		[31:0]FSKDATA_BPSK_HOLD_CLK_CYCLE;
	output		FSKDATA_BPSK;
	output		SHK;
	reg		SHK=1;
	reg		CEN=0;
	reg		TRAIANGLE=0;
	reg		[4:0]CLKMUILT=0;
	reg		PLLEN=0;
	reg		PLLRANGE=0;
	reg		[19:0]RAMPRATE=0;
	reg		[31:0]CYCLE=0;
	reg		[31:0]UD_DELAY_CLK_CYCLE=0;
	reg      [31:0]FSKDATA_BPSK_HOLD_CLK_CYCLE=0;
	reg		FSKDATA_BPSK=0;
	reg		[2:0]MODE=0;
	reg		[15:0]F1H=0;
	reg		[31:0]F1L=0;
	reg		[15:0]F2H=0;
	reg		[31:0]F2L=0;
	reg		[47:0]DFW=0;
	reg		[13:0]PTW1=0;
	reg		[13:0]PTW2=0;
	reg		ENABLED=0;
	reg		[31:0]COUNTER=0;
	always @ (posedge CLKIN)
	begin
		SHK<=1;
		case (COUNTER)
		1:
				begin
					F1H<=32'B1010001111;
					F1L<=32'b01011100001010001111010111000011;
					F2H<=0;
					F2L<=32'B0;
					MODE<=3'B000;
					PLLEN<=1'B0;
					PLLRANGE<=1;
					RAMPRATE<=1'b0;
					CYCLE<=0;
					PTW1<=0;
					PTW2<=0;
					DFW<=0;
					TRAIANGLE<=0;
					UD_DELAY_CLK_CYCLE<=0;
					FSKDATA_BPSK_HOLD_CLK_CYCLE<=0;
					CLKMUILT<=5'b01010;
					FSKDATA_BPSK<=0;
				end
		30:
		begin
					F1H<=32'B1010001111;
					F1L<=32'b01011100001010001111010111000011;
					F2H<=0;
					F2L<=32'B0;
					MODE<=3'B000;
					PLLEN<=1'B0;
					PLLRANGE<=1;
					RAMPRATE<=1'b0;
					CYCLE<=0;
					PTW1<=0;
					PTW2<=0;
					DFW<=0;
					TRAIANGLE<=0;
					UD_DELAY_CLK_CYCLE<=0;
					FSKDATA_BPSK_HOLD_CLK_CYCLE<=0;
					CLKMUILT<=5'b01010;
					FSKDATA_BPSK<=0;
			CEN<=1;
			end
		40:
			CEN<=0;
		endcase
			if(COUNTER<4000000)
				//begin
				COUNTER<=COUNTER+1'b1;
				//end
			else
				COUNTER<=0;
				
	end
	endmodule