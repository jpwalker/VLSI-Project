LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY dff IS
	PORT ( Enable, D : IN std_logic;
		Q : OUT std_logic);
END dff;

ARCHITECTURE rtl OF dff IS
BEGIN
  PROCESS(Enable)
     BEGIN
	IF Enable= '1' THEN
	    Q<=D;
	END IF;
   END PROCESS;
END rtl;
