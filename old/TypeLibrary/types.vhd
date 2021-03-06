-- types.vhd
-- Jean P. Walker
-- Definition of types and subtypes used within the project.

library ieee;
use ieee.numeric_bit.all;

package types is
  -- Define chip type which uses two bits to store 3 possible integer values.
  subtype chip is signed(4 downto 0);
  subtype bv8 is bit_vector(8 downto 0);
  
  -- Define chip_array which is an array of chips.  
  type chip_array is array(natural range <>) of chip;
  type bv8_array is array(natural range <>) of bv8;
  
  -- Define functions on chip.
  --function dmul(a, b : chip) return chip;
  --function "*"(a, b : chip_array) return chip_array;
  function chip_to_9bit(a : chip) return bv8;
  function majority(A, B, C : bit) return bit;
end package;
