-- chip_multiplier.vhd
-- Jean P. Walker
-- Component which multiplies one chip.

library TypeLibrary;
use TypeLibrary.Types.all;
library ieee;
use ieee.numeric_bit.all;

entity ChipMultiplier is
  port (A, B : in chip;
    C : out chip);
end entity;

architecture TT of ChipMultiplier is
  constant vals : chip_array(0 to 20) := ("10110", "10111", "11000", "11001", "11010", "11011", "11100", "11101", "11110", "11111", "00000", "00001", "00010", "00011", "00100", "00101", "00110", "00111", "01000", "01001", "01010");
begin
  C <= vals(0) when (A = vals(0) and B = vals(11)) or
       (A = vals(20) and B = vals(9)) else
       vals(1) when (A = vals(1) and B = vals(11)) or
       (A = vals(19) and B = vals(9)) else
       vals(2) when (A = vals(2) and B = vals(11)) or
       (A = vals(18) and B = vals(9)) else
       vals(3) when (A = vals(3) and B = vals(11)) or
       (A = vals(17) and B = vals(9)) else
       vals(4) when (A = vals(4) and B = vals(11)) or
       (A = vals(16) and B = vals(9)) else
       vals(5) when (A = vals(5) and B = vals(11)) or
       (A = vals(15) and B = vals(9)) else
       vals(6) when (A = vals(6) and B = vals(11)) or
       (A = vals(14) and B = vals(9)) else
       vals(7) when (A = vals(7) and B = vals(11)) or
       (A = vals(13) and B = vals(9)) else
       vals(8) when (A = vals(8) and B = vals(11)) or
       (A = vals(12) and B = vals(9)) else
       vals(9) when (A = vals(9) and B = vals(11)) or
       (A = vals(11) and B = vals(9)) else
       vals(11) when (A = vals(11) and B = vals(11)) or
       (A = vals(9) and B = vals(9)) else
       vals(12) when (A = vals(12) and B = vals(11)) or
       (A = vals(8) and B = vals(9)) else
       vals(13) when (A = vals(13) and B = vals(11)) or
       (A = vals(7) and B = vals(9)) else
       vals(14) when (A = vals(14) and B = vals(11)) or
       (A = vals(6) and B = vals(9)) else
       vals(15) when (A = vals(15) and B = vals(11)) or
       (A = vals(5) and B = vals(9)) else
       vals(16) when (A = vals(16) and B = vals(11)) or
       (A = vals(4) and B = vals(9)) else
       vals(17) when (A = vals(17) and B = vals(11)) or
       (A = vals(3) and B = vals(9)) else
       vals(18) when (A = vals(18) and B = vals(11)) or
       (A = vals(2) and B = vals(9)) else
       vals(19) when (A = vals(19) and B = vals(11)) or
       (A = vals(1) and B = vals(9)) else
       vals(20) when (A = vals(20) and B = vals(11)) or
       (A = vals(0) and B = vals(9)) else
       vals(10) when B = vals(10) or A = vals(10);
end architecture;
