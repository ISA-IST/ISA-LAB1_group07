LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY filter_unfolded IS
PORT( VIN, RST_n, CLK: IN STD_LOGIC;
	  DIN_0, DIN_1, DIN_2: IN SIGNED(11 downto 0);
	  B0, B1, B2, B3, B4, B5, B6, B7, B8: IN SIGNED(11 downto 0);
	  DOUT_0, DOUT_1, DOUT_2: OUT SIGNED(11 downto 0);
	  VOUT: OUT STD_LOGIC
);
END filter_unfolded;

ARCHITECTURE beh OF filter_unfolded IS

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

-- ex: X_3k1_2 = X[3(k-2)+1]
SIGNAL X_3k, X_3k1, X_3k2, X_3k_1, X_3k_2, X_3k1_1, X_3k1_2, X_3k1_3, X_3k2_1, X_3k2_2, X_3k2_3: SIGNED (11 downto 0); 


SIGNAL M0_0, M1_0, M2_0, M3_0, M4_0, M5_0, M6_0, M7_0, M8_0: SIGNED(23 downto 0);
SIGNAL M0_1, M1_1, M2_1, M3_1, M4_1, M5_1, M6_1, M7_1, M8_1: SIGNED(23 downto 0);
SIGNAL M0_2, M1_2, M2_2, M3_2, M4_2, M5_2, M6_2, M7_2, M8_2: SIGNED(23 downto 0);

-- somme a 13 bit (forse alcune possono essere fatte su 12)
SIGNAL S1_0, S2_0, S3_0, S4_0, S5_0, S6_0, S7_0, S8_0: SIGNED (12 downto 0);
SIGNAL S1_1, S2_1, S3_1, S4_1, S5_1, S6_1, S7_1, S8_1: SIGNED (12 downto 0);
SIGNAL S1_2, S2_2, S3_2, S4_2, S5_2, S6_2, S7_2, S8_2: SIGNED (12 downto 0);

SIGNAL VAL_tmp: STD_LOGIC;

BEGIN

-- input regs
x_3k_r: regnbit GENERIC MAP (N=>12) PORT MAP (D=>DIN_0, Q=>X_3k, CLK=>CLK, ENABLE=>VIN, RST_n=>RST_n); 
x_3k1_r: regnbit GENERIC MAP (N=>12) PORT MAP (D=>DIN_1, Q=>X_3k1, CLK=>CLK, ENABLE=>VIN, RST_n=>RST_n);
x_3k2_r: regnbit GENERIC MAP (N=>12) PORT MAP (D=>DIN_2, Q=>X_3k2, CLK=>CLK, ENABLE=>VIN, RST_n=>RST_n); 

-- delay input samples
-- x[3k], added '_r' to avoid coincidence with signals
x_3k_1_r: regnbit GENERIC MAP (N=>12) PORT MAP (D=>X_3k, Q=>X_3k_1, CLK=>CLK, ENABLE=>VIN, RST_n=>RST_n);
x_3k_2_r: regnbit GENERIC MAP (N=>12) PORT MAP (D=>X_3k_1, Q=>X_3k_2, CLK=>CLK, ENABLE=>VIN, RST_n=>RST_n); 
-- x[3k+1]
x_3k1_1_r: regnbit GENERIC MAP (N=>12) PORT MAP (D=>X_3k1, Q=>X_3k1_1, CLK=>CLK, ENABLE=>VIN, RST_n=>RST_n);
x_3k1_2_r: regnbit GENERIC MAP (N=>12) PORT MAP (D=>X_3k1_1, Q=>X_3k1_2, CLK=>CLK, ENABLE=>VIN, RST_n=>RST_n);
x_3k1_3_r: regnbit GENERIC MAP (N=>12) PORT MAP (D=>X_3k1_2, Q=>X_3k1_3, CLK=>CLK, ENABLE=>VIN, RST_n=>RST_n);
-- x[3k+2]
x_3k2_1_r: regnbit GENERIC MAP (N=>12) PORT MAP (D=>X_3k2, Q=>X_3k2_1, CLK=>CLK, ENABLE=>VIN, RST_n=>RST_n);
x_3k2_2_r: regnbit GENERIC MAP (N=>12) PORT MAP (D=>X_3k2_1, Q=>X_3k2_2, CLK=>CLK, ENABLE=>VIN, RST_n=>RST_n);
x_3k2_3_r: regnbit GENERIC MAP (N=>12) PORT MAP (D=>X_3k2_2, Q=>X_3k2_3, CLK=>CLK, ENABLE=>VIN, RST_n=>RST_n);


--samples multiplied by coefficients b
M0_0 <= B0*X_3k; 
M1_0 <= B1*X_3k2_1;
M2_0 <= B2*X_3k1_1;
M3_0 <= B3*X_3k_1;
M4_0 <= B4*X_3k2_2;
M5_0 <= B5*X_3k1_2;
M6_0 <= B6*X_3k_2;
M7_0 <= B7*X_3k2_3;
M8_0 <= B8*X_3k1_3;

M0_1 <= B0*X_3k1; 
M1_1 <= B1*X_3k;
M2_1 <= B2*X_3k2_1;
M3_1 <= B3*X_3k1_1;
M4_1 <= B4*X_3k_1;
M5_1 <= B5*X_3k2_2;
M6_1 <= B6*X_3k1_2;
M7_1 <= B7*X_3k_2;
M8_1 <= B8*X_3k2_3;

M0_2 <= B0*X_3k2;
M1_2 <= B1*X_3k1;
M2_2 <= B2*X_3k;
M3_2 <= B3*X_3k2_1;
M4_2 <= B4*X_3k1_1;
M5_2 <= B5*X_3k_1;
M6_2 <= B6*X_3k2_2;
M7_2 <= B7*X_3k1_2;
M8_2 <= B8*X_3k_2;

-- primo stadio di somme
S1_0 <= M0_0(23 downto 11) + M1_0(23 downto 11);
S2_0 <= M2_0(23 downto 11) + M3_0(23 downto 11);
S3_0 <= M4_0(23 downto 11) + M5_0(23 downto 11);
S4_0 <= M6_0(23 downto 11) + M7_0(23 downto 11);

S1_1 <= M0_1(23 downto 11) + M1_1(23 downto 11);
S2_1 <= M2_1(23 downto 11) + M3_1(23 downto 11);
S3_1 <= M4_1(23 downto 11) + M5_1(23 downto 11);
S4_1 <= M6_1(23 downto 11) + M7_1(23 downto 11);

S1_2 <= M0_2(23 downto 11) + M1_2(23 downto 11);
S2_2 <= M2_2(23 downto 11) + M3_2(23 downto 11);
S3_2 <= M4_2(23 downto 11) + M5_2(23 downto 11);
S4_2 <= M6_2(23 downto 11) + M7_2(23 downto 11);

-- secondo stadio di somme 
S5_0 <= S1_0 + S2_0;
S6_0 <= S3_0 + S4_0;

S5_1 <= S1_1 + S2_1;
S6_1 <= S3_1 + S4_1;

S5_2 <= S1_2 + S2_2;
S6_2 <= S3_2 + S4_2;

-- terzo stadio di somme
S7_0 <= S5_0 + S6_0;

S7_1 <= S5_1 + S6_1;

S7_2 <= S5_2 + S6_2;

-- quarto stadio di somme
S8_0 <= S7_0 + M8_0(23 downto 11);

S8_1 <= S7_1 + M8_1(23 downto 11);

S8_2 <= S7_2 + M8_2(23 downto 11);


-- registri di uscita 
-- y[3k]
reg_out_0: PROCESS(CLK, RST_n)
BEGIN
	IF (RST_n='0') THEN
		DOUT_0 <= (OTHERS=>'0');
	ELSIF (CLK'EVENT AND CLK='1') THEN
		IF (S8_0(12)='0' AND S8_0(11)='1') THEN
			DOUT_0 <= "011111111111";
		ELSIF (S8_0(12)='1' AND S8_0(11)='0') THEN
			DOUT_0 <= "100000000000";
		ELSE
			DOUT_0 <= S8_0(11 downto 0);
		END IF;
	END IF;
END PROCESS;

-- y[3k+1]
reg_out_1: PROCESS(CLK, RST_n)
BEGIN
	IF (RST_n='0') THEN
		DOUT_1 <= (OTHERS=>'0');
	ELSIF (CLK'EVENT AND CLK='1') THEN
		IF (S8_1(12)='0' AND S8_1(11)='1') THEN
			DOUT_1 <= "011111111111";
		ELSIF (S8_1(12)='1' AND S8_1(11)='0') THEN
			DOUT_1 <= "100000000000";
		ELSE
			DOUT_1 <= S8_1(11 downto 0);
		END IF;
	END IF;
END PROCESS;

-- y[3k+2]
reg_out_2: PROCESS(CLK, RST_n)
BEGIN
	IF (RST_n='0') THEN
		DOUT_2 <= (OTHERS=>'0');
	ELSIF (CLK'EVENT AND CLK='1') THEN
		IF (S8_2(12)='0' AND S8_2(11)='1') THEN
			DOUT_2 <= "011111111111";
		ELSIF (S8_2(12)='1' AND S8_2(11)='0') THEN
			DOUT_2 <= "100000000000";
		ELSE
			DOUT_2 <= S8_2(11 downto 0);
		END IF;
	END IF;
END PROCESS;

vout_reg1: ff PORT MAP (CLK=>CLK, ENABLE=>'1', RST_n=>RST_n, D=>VIN, Q=>VAL_tmp);
vout_reg2: ff PORT MAP (CLK=>CLK, ENABLE=>'1', RST_n=>RST_n, D=>VAL_tmp, Q=>VOUT);

END beh;