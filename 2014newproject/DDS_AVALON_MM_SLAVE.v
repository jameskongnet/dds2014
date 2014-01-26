//TODO: 1.FSK OVERRIDEABLE for triangle bit set in ramped FSK mode to chosen start frquency
//		  2.OVERRIDEA & OVERRIDED FOR custom insturctions or FURTHER EXPANSION
//      3.ADD & Trigger interupt signal when counter is ends(refill or not)
//		  4.
//		  5.
module DDS_AVALON_MM_SLAVE(CLK,D,A,WR,CS,RST,F1H,F1L,F2H,F2L,PTW1,PTW2,TRAIANGLE,MODE,DFWH,DFWL,OSK,RAMPRATE,PLLEN,CLKMUILT,PLLRANGE,UDIO,FSKDATA,RELEASE,READY,CEN,UDINT);
input CLK;
input [31:0]D;
input [8:0]A;
input WR;
input RST;
input CS;
input RELEASE;
input READY;

output [15:0]F1H;
output [31:0]F1L;
output [15:0]F2H;
output [31:0]F2L;
output [2:0]MODE; 
output [15:0]DFWH;
output [31:0]DFWL;
output [13:0]PTW1;
output [13:0]PTW2;
output [19:0]RAMPRATE;
output TRAIANGLE;
output PLLEN;
output [4:0]CLKMUILT;
output PLLRANGE;
output OSK;
output UDIO;
output FSKDATA;
output CEN;
output UDINT;

reg   UDMODE=0;
reg   COUNTEREN=0;
reg   FSKDATA=0;
reg   [31:0]UDCYCLE=0;
reg   [31:0]UDCYCLEBAK=0;
reg   UDIO=0;
reg   OSK=0;
reg   [15:0]F1H=0;
reg   [31:0]F1L=0;
reg   [15:0]F2H=0;
reg   [31:0]F2L=0;
reg 	[2:0]MODE=0; 
reg 	[15:0]DFWH=0;
reg 	[31:0]DFWL=0;
reg	[13:0]PTW1=0;
reg	[13:0]PTW2=0;
reg	[19:0]RAMPRATE=0;
reg	TRAIANGLE=0;
reg 	PLLEN=0;
reg 	[4:0]CLKMUILT=0;
reg	PLLRANGE=0;
reg	enabled=0;
reg   update=0;
reg   CEN=0;
reg 	CLKINT=0;
always @(posedge CLK)
	begin
		if(COUNTEREN==1)
		begin
			case(UDMODE)
			0:
				begin				
					if(UDCYCLE==0&CLKINT==1&&COUNTEREN==1)
						begin
							UDINT<=1;
							COUNTEREN<=0;
							UDIO=1;
						end
					else if(UDCYCLE!=0)
						begin
						UDCYCLE<=UDCYCLE-1;
						UDIO<=0;
						end
				end
			1:
				begin
					if(UDCYCLE==0)
						begin
							if(CLKINT==1)
								begin
									UDINT<=1;
								end
							UDCYCLE<=UDCYCLEBAK;
							UDIO=1;
						end
					else
						begin
							UDCYCLE<=UDCYCLE-1;
							UDIO<=0;
						end
				end
			endcase		
		end
		/*
		if(UDCYCLE==0)
			begin
			COUNTEREN<=0;
			case(UDMODE)
				2'd0:
					begin
					
					end
				2'd1:
					begin
							UDCYCLE<=UDCYCLEBAK;
							COUNTEREN<=1;
							FSKDATA=~FSKDATA;
							UDIO<=1;
					end
				2'd2:
					begin
							
					end
			end
		if(UDCYCLE!=0&&COUNTEREN==1)
			begin
			UDCYCLE<=UDCYCLE-1;
			UDIO<=0;
			end
		*/
		if(update==1)
			begin
				CEN<=1;
			end
		if(READY==1);
			begin
				update<=0;
				CEN<=0;
				OSK<=1;
				UDIO<=1;
				case(UDMODE)
				2'd0:
					begin
					
					end
				2'd1:
					begin
					COUNTEREN<=1;
					end
				endcase
			end
		else
			begin
			UDIO<=0;
			end
		if(CS==1 && WR==1)
			begin
   			case(A)
				0:F1H<=D[15:0];//F1H
				1:F1L<=D;//F1H
				2:F2H<=D[15:0];
				3:F2L<=D;
				4:MODE<=D[2:0];
				5:DFWH<=D[15:0];
				6:DFWL<=D[31:0];
				7:PTW1<=D[13:0];
				8:PTW2<=D[13:0];
				9:RAMPRATE<=D[19:0];
				10:TRAIANGLE<=D[0];
				11:PLLEN<=D[0];
				12:CLKMUILT<=D[4:0];
				13:PLLRANGE<=D[0];
				14:UDMODE<=D[0];
				15:
					begin
					UDCYCLE<=D;
					UDCYCLEBAK<=D;
					end
				16:UDIO<=D[0];
				17:OVERRIDEA<=D[7:0];
				18:OVERRIDED<=D[7:0];
				19:OVERRIDEEN<=D[0];
				20:CLKINT<=D[0];
				20:enabled<=D[0];
				21:update<=D[0];
				endcase
			end
		if(RST==1)
			begin
			[1:0]UDMODE<=0;
			COUNTEREN<=0;
	      FSKDATA<=0;
	      [31:0]UDCYCLE<=0;
	      [31:0]UDCYCLEBAK<=0;
	      UDIO<=0;
	      OSK<=0;
	      [15:0]F1H<=0;
	      [31:0]F1L<=0;
	      [15:0]F2H<=0;
	      [31:0]F2L<=0;
	    	[2:0]MODE<=0; 
	    	[15:0]DFWH<=0;
	    	[31:0]DFWL<=0;
	   	[13:0]PTW1<=0;
	   	[13:0]PTW2<=0;
	   	[19:0]RAMPRATE<=0;
	   	TRAIANGLE<=0;
	    	PLLEN<=0;
	    	[4:0]CLKMUILT<=0;
	   	PLLRANGE<=0;
	   	enabled<=0;
	      update<=0;
	      CEN<=0;
			end
	end
endmodule
