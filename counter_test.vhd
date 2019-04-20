LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY test IS
	PORT(clk : IN bit;
	net2 : OUT bit);
END test;

ARCHITECTURE te OF test IS
SIGNAL net : BIT;
BEGIN
cnt1 : ENTITY work.cp_counter(cp_counting) GENERIC MAP (16,8) PORT MAP (clk =>clk, round =>net,pointer =>open);
cnt2 : ENTITY work.cp_counter(cp_counting) GENERIC MAP (8,3) PORT MAP (clk =>net, round =>net2,pointer =>open);
END te;
