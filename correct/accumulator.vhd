library ieee;
use ieee.numeric_bit.all;
library TypeLibrary;
use TypeLibrary.Types.all;

entity accu is
Port (CHIP_ARRAY : IN chip_array(15 downto 0);
	OUT_CHIP : OUT signed (8 downto 0));
end entity;

architecture model of accu is
begin
  accu : process (chip_array) is
    variable res : signed(8 downto 0) := (others => 0);
  begin
    for 
  end process;
end architecture;
