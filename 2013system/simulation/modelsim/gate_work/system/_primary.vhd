library verilog;
use verilog.vl_types.all;
entity system is
    port(
        inclk0          : in     vl_logic;
        UDCLK           : out    vl_logic;
        FSKDATA_BPSK_HOLD: out    vl_logic;
        c0              : out    vl_logic;
        locked          : out    vl_logic;
        RESET           : out    vl_logic;
        WRITE           : out    vl_logic;
        CONFIGERR       : out    vl_logic;
        SHK             : out    vl_logic;
        AOUT            : out    vl_logic_vector(5 downto 0);
        DOUT            : out    vl_logic_vector(7 downto 0)
    );
end system;
