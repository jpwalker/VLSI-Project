-- multiplier.vhd
-- Jean P. Walker
-- Entity for multiplier.

library TypeLibrary;
use TypeLibrary.Types.all;

entity multiplier is
  port (A, B : in chip_array(15 downto 0);
        C : out chip_array(15 downto 0));
end entity;
