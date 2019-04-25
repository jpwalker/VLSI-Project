LIBRARY ieee;
LIBRARY TypeLibrary;
USE TypeLibrary.Types.all;


ENTITY D_latch IS
	PORT(clr,clk : IN bit;
			ser_data: IN bit;
			pal_data: OUT bit_vector(7 DOWNTO 0));
END D_latch;

ARCHITECTURE bhav OF D_latch IS
BEGIN
	PROCESS(clk)
	VARIABLE temp_reg : bit_vector(7 DOWNTO 0);
	BEGIN
	IF clr ='1'
	THEN 
		pal_data <= "00000000";
	ELSIF (clk'last_value='0' AND clk ='1') 
	THEN 
	FOR i IN 0 TO 6 LOOP
	temp_reg(i) := temp_reg(i+1);
	END LOOP;
	temp_reg(7) := ser_data;
	END IF;
	pal_data <=temp_reg;
	END PROCESS;	
END bhav;