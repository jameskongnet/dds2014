library verilog;
use verilog.vl_types.all;
entity translate is
    port(
        clk             : in     vl_logic;
        mst_rst         : out    vl_logic;
        d               : out    vl_logic_vector(7 downto 0);
        a               : out    vl_logic_vector(5 downto 0);
        wrb             : out    vl_logic;
        io_ud           : out    vl_logic
    );
end translate;
