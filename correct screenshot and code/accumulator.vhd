library ieee;
use ieee.numeric_bit.all;
library TypeLibrary;
use TypeLibrary.Types.all;

entity accu is
Port (CHIP_ARRAY : IN chip_array(15 downto 0);
-- array of 16 chips
	OUT_CHIP : OUT signed (8 downto 0));
-- output of accu is of 9 bits
end accu;

architecture model of accu is
begin
accu : process (chip_array) is
variable sum : signed (8 downto 0);
VARIABLE counter :natural;
--VARIABLE intet_val;
-- assigning variable as a signed function of 9 bits
begin
OUT_CHIP <= "000000000";
sum :=  to_signed(0, 9);
for i in 15 downto 0 loop
-- it is a loop and performs the function below in a loop for the number of times
sum := signed_add_chip(sum, chip_array(i));
-- it performs the function being called by 
end loop;
	IF (CHIP_ARRAY'EVENT) THEN
	counter := counter+1;
		IF (counter=16) THEN
		OUT_CHIP <= sum;
		counter :=0;
		--ELSIF (counter=17) THEN

		END IF;
	END IF;
end process accu;


end model;