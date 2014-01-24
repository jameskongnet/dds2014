library verilog;
use verilog.vl_types.all;
entity DDS_CONFIG is
    generic(
        FINAL           : vl_logic_vector(0 to 6) := (Hi1, Hi0, Hi1, Hi1, Hi0, Hi0, Hi0);
        PTW2SET         : vl_logic_vector(0 to 6) := (Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1)
    );
    port(
        CEN             : in     vl_logic;
        CLK             : in     vl_logic;
        F1H             : in     vl_logic_vector(15 downto 0);
        F1L             : in     vl_logic_vector(31 downto 0);
        F2H             : in     vl_logic_vector(15 downto 0);
        F2L             : in     vl_logic_vector(31 downto 0);
        PTW1            : in     vl_logic_vector(13 downto 0);
        PTW2            : in     vl_logic_vector(13 downto 0);
        TRAIANGLE       : in     vl_logic;
        MODE            : in     vl_logic_vector(2 downto 0);
        DFW             : in     vl_logic_vector(47 downto 0);
        RAMPRATE        : in     vl_logic_vector(19 downto 0);
        AOUT            : out    vl_logic_vector(5 downto 0);
        DOUT            : out    vl_logic_vector(7 downto 0);
        READY           : out    vl_logic;
        RESET           : out    vl_logic;
        WRITE           : out    vl_logic;
        PLLEN           : in     vl_logic;
        CLKMUILT        : in     vl_logic_vector(4 downto 0);
        PLLRANGE        : in     vl_logic;
        CONFIGERR       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of FINAL : constant is 1;
    attribute mti_svvh_generic_type of PTW2SET : constant is 1;
end DDS_CONFIG;
