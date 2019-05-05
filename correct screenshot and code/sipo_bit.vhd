LIBRARY ieee;
LIBRARY TypeLibrary;
USE TypeLibrary.Types.all;
USE ieee.std_logic_1164.ALL;

ENTITY sipo_bit IS
	PORT(D_bit :IN BIT;
		clk:IN bit;
		Q_bit: OUT BIT_VECTOR(3 DOWNTO 0));
END sipo_bit;

ARCHITECTURE behav OF sipo_bit IS
SIGNAL temp : bit_vector(3 DOWNTO 0);
BEGIN
	PROCESS(clk)
	BEGIN
	IF (RISING_EDGE(clk)) THEN
	FOR i IN  2 DOWNTO 0 LOOP
	temp(i+1) <= temp(i);
	END LOOP;
	temp(0) <=D_bit;
	END IF;
	END PROCESS;
	Q_bit <= temp;
END behav;