library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;

library std;
use std.textio.all;

entity data_maker is
  port (
    CLK     : in  std_logic;
    RST_n   : in  std_logic;
    VOUT    : out std_logic;
    DOUT    : out signed(11 downto 0);
    H0      : out signed(11 downto 0); --taps
    H1      : out signed(11 downto 0);
    H2      : out signed(11 downto 0);
    H3      : out signed(11 downto 0);
    H4      : out signed(11 downto 0);
    H5      : out signed(11 downto 0);
    H6      : out signed(11 downto 0);
    H7      : out signed(11 downto 0);
    H8      : out signed(11 downto 0);
    END_SIM : out std_logic);
end data_maker;

architecture beh of data_maker is

  constant tco : time := 1 ns;
  constant Ts : time := 10 ns;

  signal sEndSim : std_logic;
  signal END_SIM_i : std_logic_vector(0 to 10);

begin  -- beh

  H0 <= to_signed(-13,12);
  H1 <= to_signed(-28,12);
  H2 <= to_signed(104,12);
  H3 <= to_signed(544,12);
  H4 <= to_signed(830,12);
  H5 <= to_signed(544,12);
  H6 <= to_signed(104,12);
  H7 <= to_signed(-28,12);
  H8 <= to_signed(-13,12);

  process (CLK, RST_n)
    file fp_in : text open READ_MODE is "../samples.txt"; -- attenzione qua
    variable line_in : line;
    variable x : integer;
    variable i : integer := 0 ; -- counter variable

  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      DOUT <= (others => '0') after tco;
      VOUT <= '0' after tco;
      sEndSim <= '0' after tco;
    elsif CLK'event and CLK = '1' then  -- rising clock edge

      if not endfile(fp_in) then
	i := i+1 ;
	if(i>15 and i<25) then
	VOUT <= '0' ;
	else
          readline(fp_in, line_in);
          read(line_in, x);
          DOUT <= to_signed(x, 12) after tco;
          VOUT <= '1' after tco;
          sEndSim <= '0' after tco;
	end if ;
      else
        VOUT <= '0' after tco;
        sEndSim <= '1' after tco;
      end if;
    end if;
  end process;

--  process --process per comandare VOUT
--  begin
--    if RST_n = '0' then
--	VOUT <= '0' after tco ;
--    else
--        VOUT <= '1', '0' after 2*Ts, '1' after 8*Ts , '0' after 16*Ts , '1' after 24*Ts ;
--     end if ;
--   end process ;

  process (CLK, RST_n)
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      END_SIM_i <= (others => '0') after tco;
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      END_SIM_i(0) <= sEndSim after tco;
      END_SIM_i(1 to 10) <= END_SIM_i(0 to 9) after tco;
    end if;
  end process;

  END_SIM <= END_SIM_i(10);

end beh;
