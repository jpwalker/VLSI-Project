LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_BIT.ALL;

ENTITY comparator_1 IS
	PORT(res_comp:IN SIGNED(8 DOWNTO 0);
	     tri_val: IN SIGNED(8 DOWNTO 0);
			data_good: OUT BIT);
END comparator_1;

ARCHITECTURE beyond OF comparator_1 IS
--CONSTANT tri_val_pos : SIGNED (8 DOWNTO 0) := "000001010";
BEGIN	
	PROCESS(res_comp)
   BEGIN
	IF (res_comp >= tri_val)
	THEN 
	data_good <= '1';
	ELSE 
	data_good <= '0';
	END IF;
	END PROCESS;
END beyond;

ARCHITECTURE below OF comparator_1 IS
--CONSTANT tri_val_neg : SIGNED (8 DOWNTO 0):= "111110110";
BEGIN
	PROCESS(res_comp)
	BEGIN
	IF (res_comp <= tri_val)
	THEN 
	data_good <= '1';
	ELSE 
	data_good <= '0';
	END IF;
	END PROCESS;
END below;	