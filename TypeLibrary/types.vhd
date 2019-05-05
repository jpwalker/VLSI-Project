-- types.vhd
-- Jean P. Walker
-- Definition of types and subtypes used within the project.

library ieee;
use ieee.numeric_bit.all;

package types is
  -- Define chip type which uses two bits to store 3 possible integer values.
  subtype chip is signed(4 downto 0);

  -- Define chip_array which is an array of chips.  
  type chip_array is array(natural range <>) of chip;
  
  -- Define functions on chip.
  function "*"(a, b : chip) return chip;
  function "*"(a, b : chip_array) return chip_array;
  function chip_add_chip(a, b : chip; N_bit : positive) return signed;
  function signed_add_chip(a : signed; b : chip) return signed;
  function chip_add_signed(a : chip; b : signed) return signed;
end package;