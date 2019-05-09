LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY reg_6bit IS
	PORT ( clk,clr: IN std_logic;
		D : IN BIT_VECTOR(5 DOWNTO 0);
		Q : OUT BIT_VECTOR(5 DOWNTO 0));
END reg_6bit;

ARCHITECTURE bhv OF reg_6bit IS
BEGIN
 PROCESS(clk,clr)
   BEGIN
	IF clr='1' THEN
	   Q<="000000";
	ELSIF clk'EVENT AND clk='1' THEN
		Q<=D;
	END IF;
 END PROCESS;
END bhv;
