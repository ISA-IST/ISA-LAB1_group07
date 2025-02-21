LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY filter IS
PORT( VIN, RST_n, CLK: IN STD_LOGIC;
	  DIN: IN SIGNED(11 downto 0);
	  B0, B1, B2, B3, B4, B5, B6, B7, B8: IN SIGNED(11 downto 0);
	  DOUT: OUT SIGNED(11 downto 0);
	  VOUT: OUT STD_LOGIC
);
END filter;

ARCHITECTURE beh OF filter IS

COMPONENT regnbit IS
	GENERIC ( N : POSITIVE := 2
				);
	PORT( D    : IN SIGNED(N-1 downto 0);
		  CLK, RST_n, ENABLE : IN STD_LOGIC;
		  Q    : OUT SIGNED(N-1 downto 0)
		 );
END COMPONENT;


COMPONENT ff IS
PORT( CLK, RST_n, D, ENABLE : IN STD_LOGIC;
		Q : OUT STD_LOGIC
		);
END COMPONENT;

TYPE regtype IS ARRAY (0 to 9) OF SIGNED(11 downto 0);  --signals used to connect the shift registers
SIGNAL D_tmp: regtype;

SIGNAL M0, M1, M2, M3, M4, M5, M6, M7, M8: SIGNED(23 downto 0);

SIGNAL y_tmp: SIGNED (12 downto 0); -- ricordare che la somma dei taps eccede la dinamica
SIGNAL VAL_tmp: STD_LOGIC;

BEGIN

D_tmp(0)<=DIN;

--shift register with 9 registers
sh_reg: FOR i in 0 to 8 GENERATE
	regs: regnbit GENERIC MAP(N=>12) PORT MAP(CLK=>CLK, RST_n=>RST_n, ENABLE=>VIN, D=>D_tmp(i), Q=>D_tmp(i+1));
END GENERATE;

--samples multiplied by coefficients b
M0 <= B0*D_tmp(1);
M1 <= B1*D_tmp(2);
M2 <= B2*D_tmp(3);
M3 <= B3*D_tmp(4);
M4 <= B4*D_tmp(5);
M5 <= B5*D_tmp(6);
M6 <= B6*D_tmp(7);
M7 <= B7*D_tmp(8);
M8 <= B8*D_tmp(9);

y_tmp <= (M0(23 downto 11)) + (M1(23 downto 11)) + (M2(23 downto 11)) + (M3(23 downto 11)) + (M4(23 downto 11)) + (M5(23 downto 11)) + (M6(23 downto 11)) + (M7(23 downto 11)) + (M8(23 downto 11));

reg_out: PROCESS(CLK, RST_n)
BEGIN
	IF (RST_n='0') THEN
		DOUT <= (OTHERS=>'0');
	ELSIF (CLK'EVENT AND CLK='1') THEN
		IF (y_tmp(12)='0' AND y_tmp(11)='1') THEN
			DOUT <= "011111111111";
		ELSIF (y_tmp(12)='1' AND y_tmp(11)='0') THEN
			DOUT <= "100000000000";
		ELSE
			DOUT <= y_tmp(11 downto 0);
		END IF;
	END IF;
END PROCESS;

vout_reg1: ff PORT MAP (CLK=>CLK, ENABLE=>'1', RST_n=>RST_n, D=>VIN, Q=>VAL_tmp);
vout_reg2: ff PORT MAP (CLK=>CLK, ENABLE=>'1', RST_n=>RST_n, D=>VAL_tmp, Q=>VOUT);

END beh;
