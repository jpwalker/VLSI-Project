
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY counter_chip IS
	PORT(clk : IN BIT;
		chip_rdy: OUT bit);
END counter_chip;

ARCHITECTURE count OF counter_chip IS
BEGIN
	PROCESS(clk)
	VARIABLE msg: integer :=0;
	BEGIN
		IF msg = 0 THEN chip_rdy <='0';
		END IF;
			IF (clk = '1')
			THEN
			msg := msg+1;
			ELSE NULL;
			END IF;
		IF msg = 16 THEN
	   	chip_rdy <='1';
		msg := 0;
		END IF;		
	END PROCESS;
END count;