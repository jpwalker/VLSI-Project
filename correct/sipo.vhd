LIBRARY ieee;
LIBRARY TypeLibrary;
USE TypeLibrary.Types.all;
USE ieee.std_logic_1164.ALL;


ENTITY sipo IS
	PORT(clr,clk,en : IN bit;
			ser_data: IN chip;
			pal_data: OUT chip_array(15 DOWNTO 0));
END sipo;

ARCHITECTURE shift OF sipo IS
SIGNAL temp_reg : chip_array (15 DOWNTO 0);
BEGIN
	PROCESS(clk,en)
	
	BEGIN
	
	IF clr ='1' THEN 
	pal_data <= (OTHERS =>"00000");
	ELSIF (clk'last_value='0' AND clk ='1') THEN 
	FOR i IN 0 TO 14 LOOP
	temp_reg(i) <= temp_reg(i+1);
	END LOOP;
	temp_reg(15)<= ser_data;
	END IF;
	
	IF (en='1') THEN	
	pal_data <=temp_reg;
	ELSE pal_data <=(OTHERS => "00000");
	END IF;
	END PROCESS;	
END shift;
	