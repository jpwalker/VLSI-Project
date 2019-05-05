-- multiplier.vhd
-- Jean P. Walker
-- Entity for multiplier.

library TypeLibrary;
use TypeLibrary.Types.all;

entity multiplier is
  port (A : IN chip_array(15 DOWNTO 0);
	B : in chip_array(15 DOWNto 0);
        C : out chip_array(15 downto 0));
end entity;
