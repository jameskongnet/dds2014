module DDS_UPDATE_CYCLE(CLK,CYCLE,UD_DELAY_CLK_CYCLE,FSKDATA_BPSK,FSKDATA_BPSK_HOLD_CLK_CYCLE,MODE,UEN,UDCLK,FSKDATA_BPSK_HOLD);
	input 	UEN;
	input		CLK;
	input		[31:0]CYCLE;
	input		[31:0]UD_DELAY_CLK_CYCLE;
	input    [2:0]MODE;
	input		[31:0]FSKDATA_BPSK_HOLD_CLK_CYCLE;
	input		FSKDATA_BPSK;
	
	output	FSKDATA_BPSK_HOLD;
	output 	UDCLK;
	
	reg		UPDATEEN=0;
	reg		FSKDATA_BPSK_REG=0;
	reg		[31:0]FSKDATA_BPSK_HOLD_CLK_CYCLEREG=0;
	reg		[31:0]STEP=0;
	reg		[31:0]CYCLECOUNTER=0;
	reg		[31:0]DELAYCOUNTER=0;
	reg		[31:0]UPDATESTEP=0;
	reg		[31:0]CYCLEREG=0;
	reg		[31:0]DELAYREG=0;
	reg		FSKDATA_BPSK_HOLD=0;
	reg		UDCLK=0;
	
	always@(posedge CLK)
	begin
		if(UPDATEEN==1)
			begin
				case(UPDATESTEP)
				2:
					begin
					UPDATESTEP<=0;
					UPDATEEN<=0;
					end
		default:
					begin
					UDCLK<=~UDCLK;
					end
				endcase
			end
		
	case(MODE)
		3'B000:
			begin
			UDCLK<=UEN;
			end
		default:
			begin
			if(UEN)
				begin
					case(STEP)
				0:
					begin
						CYCLEREG<=CYCLE;
						DELAYREG<=UD_DELAY_CLK_CYCLE;
						FSKDATA_BPSK_HOLD_CLK_CYCLEREG<=FSKDATA_BPSK_HOLD_CLK_CYCLEREG;
						FSKDATA_BPSK_REG=FSKDATA_BPSK;
						STEP<=1;
					end	
				1:
					begin
						if(CYCLECOUNTER!=CYCLEREG)
							begin
								case(MODE)
								3'B001:
									begin
										if(DELAYCOUNTER!=DELAYREG)
											begin
											DELAYCOUNTER<=DELAYCOUNTER+1;
											end
										else
											begin
											CYCLECOUNTER<=CYCLECOUNTER+1;
											UPDATEEN<=1;
											end
									end
								3'B010:
									begin
										
									end
								3'B011:
									begin
									
									end
								3'B100:
									begin
									
									end										
								endcase
							end
						else
							begin
							STEP<=0;
							end
					end
				2:
					begin
					end
					endcase
					
					if(CYCLEREG==0)
						begin
						CYCLEREG<=CYCLE;
						end
					else
						begin
						UPDATEEN<=1;
						CYCLEREG<=CYCLEREG-1;
						end
				end
			else
				begin
				end
			end
		endcase
	end
endmodule