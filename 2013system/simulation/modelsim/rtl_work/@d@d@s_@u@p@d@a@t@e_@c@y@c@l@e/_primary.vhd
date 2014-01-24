library verilog;
use verilog.vl_types.all;
entity DDS_UPDATE_CYCLE is
    port(
        CLK             : in     vl_logic;
        CYCLE           : in     vl_logic_vector(31 downto 0);
        UD_DELAY_CLK_CYCLE: in     vl_logic_vector(31 downto 0);
        FSKDATA_BPSK    : in     vl_logic;
        FSKDATA_BPSK_HOLD_CLK_CYCLE: in     vl_logic_vector(31 downto 0);
        MODE            : in     vl_logic_vector(2 downto 0);
        UEN             : in     vl_logic;
        UDCLK           : out    vl_logic;
        FSKDATA_BPSK_HOLD: out    vl_logic
    );
end DDS_UPDATE_CYCLE;
