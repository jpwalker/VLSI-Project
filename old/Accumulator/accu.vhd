library ieee;
use ieee.numeric_bit.all;
use work.types.all;

entity accu is
Port (CHIP_ARRAY : IN chip_array(15 downto 0);
-- array of 16 chips
	OUT_CHIP : OUT signed (8 downto 0));
-- output of accu is of 9 bits
end accu;

architecture model of accu is
begin
process (chip_array) is
variable sum : signed (8 downto 0) := to_signed(0, 9);
-- assigning variable as a signed function of 9 bits
begin
for i in 15 downto 0 loop
-- it is a loop and performs the function below in a loop for the number of times
sum := signed_add_chip(sum, chip_array(i));
-- it performs the function being called by 
end loop;
OUT_CHIP <= sum;
end process;
end model;