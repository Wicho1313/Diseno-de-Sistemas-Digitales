
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Pseis IS PORT(
CLR, CLK, C: IN STD_LOGIC;
DISPLAY: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
);
END Pseis;

ARCHITECTURE A_Pseis OF Pseis IS
SIGNAL Q : STD_LOGIC_VECTOR(2 DOWNTO 0);

CONSTANT A : STD_LOGIC_VECTOR(6 DOWNTO 0):= "0001000";
CONSTANT Cc : STD_LOGIC_VECTOR(6 DOWNTO 0):= "1000110";
CONSTANT H : STD_LOGIC_VECTOR(6 DOWNTO 0):= "0001001";
CONSTANT L : STD_LOGIC_VECTOR(6 DOWNTO 0):= "1000111";
CONSTANT O : STD_LOGIC_VECTOR(6 DOWNTO 0):= "1000000";
CONSTANT U : STD_LOGIC_VECTOR(6 DOWNTO 0):= "1000001";
CONSTANT Nada: STD_LOGIC_VECTOR(6 DOWNTO 0):="1111111";

BEGIN
	CONT:PROCESS (CLK, CLR)
	BEGIN
		IF( CLR = '0' )	THEN
			 Q<= "000";
		ELSIF( CLK'EVENT AND CLK = '1' )THEN
		Q<=Q+1;
		END IF;
	END PROCESS CONT;
	
	PROCESS(Q,C)
	BEGIN
		IF(C='1') THEN
			CASE Q IS
				WHEN "000" => DISPLAY <= H;
				WHEN "001" => DISPLAY <= O;
				WHEN "010" => DISPLAY <= L;
				WHEN "011" => DISPLAY <= A;
				WHEN OTHERS => DISPLAY <= Nada;
			END CASE;

		ELSE
			CASE Q IS
				WHEN "000" => DISPLAY <= Cc;
				WHEN "001" => DISPLAY <= H;
				WHEN "010" => DISPLAY <= U;
				WHEN "011" => DISPLAY <= L;
				WHEN "100" => DISPLAY <= A;
				WHEN "101" => DISPLAY <= U;
				WHEN "110" => DISPLAY <= A;
				WHEN OTHERS => DISPLAY <= H;
			END CASE;
		END IF;
	END PROCESS;
END A_Pseis;
