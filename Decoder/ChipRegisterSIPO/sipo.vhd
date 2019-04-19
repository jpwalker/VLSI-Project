LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY sipo IS
	PORT(clr,clk : IN std_logic;
			ori_data: IN bit;
			Pal_data: OUT bit_vector (31 DOWNTO 0));
END sipo;

ARCHITECTURE shift OF sipo IS
BEGIN
	PROCESS(clk)
	VARIABLE temp_reg : bit_vector (31 DOWNTO 0);
	BEGIN
	IF clr ='1'
	THEN 
		pal_data <= (OTHERS =>'0');
	ELSIF (clk'last_value='0' AND clk ='1') 
	THEN 
	FOR i IN 0 TO 30 LOOP
	temp_reg(i) := temp_reg(i+1);
	END LOOP;
	temp_reg(31) := ori_data;
	END IF;
	pal_data <=temp_reg;
	END PROCESS;	
END shift;
	