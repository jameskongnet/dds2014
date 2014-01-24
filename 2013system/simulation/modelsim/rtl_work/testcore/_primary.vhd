library verilog;
use verilog.vl_types.all;
entity testcore is
    port(
        CLKIN           : in     vl_logic;
        SHK             : out    vl_logic;
        CEN             : out    vl_logic;
        F1H             : out    vl_logic_vector(15 downto 0);
        F1L             : out    vl_logic_vector(31 downto 0);
        F2H             : out    vl_logic_vector(15 downto 0);
        F2L             : out    vl_logic_vector(31 downto 0);
        PTW1            : out    vl_logic_vector(13 downto 0);
        PTW2            : out    vl_logic_vector(13 downto 0);
        TRAIANGLE       : out    vl_logic;
        MODE            : out    vl_logic_vector(2 downto 0);
        DFW             : out    vl_logic_vector(47 downto 0);
        RAMPRATE        : out    vl_logic_vector(19 downto 0);
        PLLEN           : out    vl_logic;
        CLKMUILT        : out    vl_logic_vector(4 downto 0);
        PLLRANGE        : out    vl_logic;
        CYCLE           : out    vl_logic_vector(31 downto 0);
        UD_DELAY_CLK_CYCLE: out    vl_logic_vector(31 downto 0);
        FSKDATA_BPSK_HOLD_CLK_CYCLE: out    vl_logic_vector(31 downto 0);
        FSKDATA_BPSK    : out    vl_logic
    );
end testcore;
