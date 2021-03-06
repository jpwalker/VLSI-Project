LIBRARY ieee;
LIBRARY TypeLibrary;
USE TypeLibrary.Types.all;
USE ieee.std_logic_1164.ALL;


ENTITY D_latch IS
	PORT(sympol : IN bit_vector(3 DOWNTO 0);
		en: IN bit;
		user_data: OUT bit_vector(3 DOWNTO 0));
END D_latch;

ARCHITECTURE bhav OF D_latch IS

BEGIN
	dl:PROCESS(en,sympol)
	BEGIN	
	
	IF(en='1') THEN
	user_data <=sympol ;
	END IF;	
	END PROCESS dl;	

	
END bhav;