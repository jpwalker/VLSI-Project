LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY comparator_1 IS
	PORT(res_comp:IN SIGNED(5 DOWNTO 0);
			enab :OUT bit;
			data_good: OUT BIT);
END comparator_1;

ARCHITECTURE beyond OF comparator_1 IS
CONSTANT tri_val_pos : SIGNED (5 DOWNTO 0) := "001010";
BEGIN	
	PROCESS(res_comp)
   BEGIN
	IF (res_comp >= tri_val_pos)
	THEN 
	data_good <= '1';
	enab <= '1';
	ELSE 
	data_good <= '0';
	enab <= '0';
	END IF;
	END PROCESS;
END beyond;

ARCHITECTURE below OF comparator_1 IS
CONSTANT tri_val_neg : SIGNED (5 DOWNTO 0):= "110110";
BEGIN
	PROCESS(res_comp)
	BEGIN
	IF (res_comp <= tri_val_neg)
	THEN 
	data_good <= '1';
	enab <= '1';
	ELSE 
	data_good <= '0';
	enab <= '0';
	END IF;
	END PROCESS;
END below;	