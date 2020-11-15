library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;

entity data_sink_unfolded is
  port (
    CLK    : in std_logic;
    RST_n  : in std_logic;
    VIN    : in std_logic;
    DIN0   : in signed(11 downto 0);
    DIN1   : in signed(11 downto 0);
    DIN2   : in signed(11 downto 0));
end data_sink_unfolded;

architecture beh of data_sink_unfolded is

begin  -- beh

  process (CLK, RST_n)
    file res_fp : text open WRITE_MODE is "./results_unfolded-vhd-low-post-route.txt";
    variable line_out0, line_out1, line_out2  : line;
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      null;
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      if (VIN = '1') then
        write(line_out0, to_integer(DIN0));
        writeline(res_fp, line_out0);
        write(line_out1, to_integer(DIN1));
        writeline(res_fp, line_out1);
        write(line_out2, to_integer(DIN2));
        writeline(res_fp, line_out2);
      end if;
    end if;
  end process;

end beh;
