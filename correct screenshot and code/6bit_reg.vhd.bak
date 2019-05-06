LIBRARY ieee;
USE ieee.numeric_bit.all;

ENTITY reg_9bit IS
	PORT ( clk,clr: IN bit;
		D_reg9 : IN SIGNED(8 DOWNTO 0);
		Q_reg9 : OUT SIGNED(8 DOWNTO 0));
END reg_9bit;

ARCHITECTURE bhv OF reg_9bit IS
BEGIN
 PROCESS(clk,clr)
   BEGIN
	IF clr='1' THEN
	   Q_reg9<="000000000";
	ELSIF clk'EVENT AND clk='1' THEN
		Q_reg9<=D_reg9;
	END IF;
 END PROCESS;
END bhv;