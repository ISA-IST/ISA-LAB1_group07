library verilog;
use verilog.vl_types.all;
entity filter_unfolded is
    port(
        VIN             : in     vl_logic;
        RST_n           : in     vl_logic;
        CLK             : in     vl_logic;
        DIN_0           : in     vl_logic_vector(11 downto 0);
        DIN_1           : in     vl_logic_vector(11 downto 0);
        DIN_2           : in     vl_logic_vector(11 downto 0);
        B0              : in     vl_logic_vector(11 downto 0);
        B1              : in     vl_logic_vector(11 downto 0);
        B2              : in     vl_logic_vector(11 downto 0);
        B3              : in     vl_logic_vector(11 downto 0);
        B4              : in     vl_logic_vector(11 downto 0);
        B5              : in     vl_logic_vector(11 downto 0);
        B6              : in     vl_logic_vector(11 downto 0);
        B7              : in     vl_logic_vector(11 downto 0);
        B8              : in     vl_logic_vector(11 downto 0);
        DOUT_0          : out    vl_logic_vector(11 downto 0);
        DOUT_1          : out    vl_logic_vector(11 downto 0);
        DOUT_2          : out    vl_logic_vector(11 downto 0);
        VOUT            : out    vl_logic
    );
end filter_unfolded;
