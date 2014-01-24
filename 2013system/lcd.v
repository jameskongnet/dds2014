module LCDDRIVER(ADDR,DATA,ADOUT,DASEL,INT,EN,RST);
input [15:0]ADDR;
input	[5:0]DATA;
input INT;
input EN;
input RST;
output [15:0]ADOUT;
output DASEL;
endmodule