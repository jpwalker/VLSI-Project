-- multiplier_parts.vhd
-- Jean P. Walker
-- Package used by multiplier.

library TypeLibrary;
use TypeLibrary.Types.all;

package MultiplierParts is
  component ChipMultiplier is
    port (A, B : in chip;
          C : out chip);
  end component;
end package;
