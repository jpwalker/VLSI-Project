-- types.vhd
-- Jean P. Walker
-- Definition of types and subtypes used within the project.

package types is
  -- Define chip type which uses two bits to store 3 possible integer values.
  subtype chip is bit_vector(1 downto 0);
  
  -- Define chip_val which is an integer limited to -1 through 1.
  --subtype chip_int is integer range -1 to 1;

  -- Define type which is an array of chips.  
  type chip_array is array(natural range <>) of chip;
  
  -- Define functions on chip.
  function "*"(a, b : chip) return chip;
  function "*"(a, b : chip_array) return chip_array;
  --function Chip2Int(a : chip) return chip_int;
  --function Int2Chip(a : chip_int) return chip;
end package;
