-- multiplier.vhd
-- Jean P. Walker
-- Entity for multiplier.

library TypeLibrary;
library ieee;
use TypeLibrary.Types.all;
use ieee.numeric_bit.all;

entity multiplier is
  port (A, B : in chip_array(15 downto 0);
        C : out chip_array(15 downto 0));
end entity;
