-- chip_multiplier.vhd
-- Jean P. Walker
-- Component which multiplies one chip.

library TypeLibrary;
use TypeLibrary.Types.all;

entity ChipMultiplier is
  port (A, B : in chip;
    C : out chip);
end entity;

architecture dataflow of ChipMultiplier is
begin
  
end architecture;
