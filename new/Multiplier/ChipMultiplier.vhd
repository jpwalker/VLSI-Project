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
  C(4) <= not(A(0) and A(1) and A(3) and B(4)) and (A(0) or A(1) or A(2) or A(3)) and
          (A(1) or A(3) or B(4)) and not(A(2) and A(3) and B(4)) and (A(2) or A(3) or B(4)) and
          not(A(4) and B(1)) and (A(4) or B(1)) and B(0) and (not(B(1)) or B(2)) and (B(1) or not(B(2))) and
          (not(B(2)) or B(3)) and (B(2) or not(B(3))) and (not(B(3)) or B(4)) and (B(3) or not(B(4)));
  C(3) <= (not(A(0)) or not(A(1)) or A(4) or B(4)) and not(A(0) and A(3) and B(1)) and
          (A(0) or A(1) or A(2) or A(3)) and (not(A(1)) or A(2) or not(A(4)) or not(B(4))) and
          not(A(1) and A(3) and B(4)) and (A(1) or A(3) or not(A(4))) and not(A(2) and A(3) and B(4)) and
          (not(A(2)) or A(4) or B(4)) and (A(3) or B(1)) and B(0) and (not(B(1)) or B(2)) and
          (B(1) or not(B(2))) and (not(B(2)) or B(3)) and (B(2) or not(B(3))) and (not(B(3)) or B(4)) and (B(3) or not(B(4)));
  C(2) <= (not(A(0)) or not(A(1)) or not(A(3)) or A(4)) and not(A(0) and A(2) and B(1)) and (A(0) or A(1) or A(2)) and
          not(A(1) and A(2) and B(1)) and (A(1) or A(3) or not(A(4))) and (not(A(2)) or not(A(3)) or A(4)) and
          (A(2) or B(1)) and (not(A(3)) or A(4) or B(4)) and (A(3) or not(A(4)) or not(B(4))) and B(0) and
          (not(B(1)) or B(2)) and (B(1) or not(B(2))) and (not(B(2)) or B(3)) and (B(2) or not(B(3))) and
          (not(B(3)) or B(4)) and (B(3) or not(B(4)));
  C(1) <= not(A(0) and A(1) and B(1)) and (not(A(0)) or not(A(3)) or A(4) or B(4)) and (A(0) or A(1)) and
          (A(1) or A(3) or not(A(4))) and (A(1) or B(1)) and (not(A(2)) or not(A(3)) or A(4)) and
          (A(2) or A(3) or not(A(4))) and B(0) and (not(B(1)) or B(2)) and (B(1) or not(B(2))) and
          (not(B(2)) or B(3)) and (B(2) or not(B(3))) and (not(B(3)) or B(4)) and (B(3) or not(B(4)));
  C(0) <= A(0) and (not(A(1)) or not(A(3)) or A(4)) and (A(1) or A(3) or not(A(4))) and (not(A(2)) or not(A(3)) or A(4)) and
          (A(2) or A(3) or not(A(4))) and B(0) and (not(B(1)) or B(2)) and (B(1) or not(B(2))) and
          (not(B(2)) or B(3)) and (B(2) or not(B(3))) and (not(B(3)) or B(4)) and (B(3) or not(B(4)));
 end architecture;
