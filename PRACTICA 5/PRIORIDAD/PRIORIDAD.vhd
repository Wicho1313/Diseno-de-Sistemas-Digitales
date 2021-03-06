LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY PRIORIDAD IS
PORT( NUM: IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	COD: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
);
END ENTITY;
ARCHITECTURE A_PRIORIDAD OF PRIORIDAD IS
BEGIN 

	PROCESS(NUM)

		BEGIN
		IF(NUM(8)='1') THEN
			COD<="1001";
		ELSIF (NUM(7)='1') THEN
			COD<="1000";
		ELSIF (NUM(6)='1') THEN
			COD<="0111";
		ELSIF (NUM(5)='1') THEN
			COD<="0110";
		ELSIF (NUM(4)='1') THEN
			COD<="0101";
		ELSIF (NUM(3)='1') THEN
			COD<="0100";
		ELSIF (NUM(2)='1') THEN
			COD<="0011";
		ELSIF (NUM(1)='1') THEN
			COD<="0010";
		ELSIF (NUM(0)='1') THEN
			COD<="0001";
		ELSE
		COD<="0000";
END IF;
END PROCESS;
END A_PRIORIDAD;
