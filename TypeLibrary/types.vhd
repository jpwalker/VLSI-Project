-- types.vhd
-- Jean P. Walker
-- Definition of types and subtypes used within the project.

package types is
  -- Define chip type which uses two bits to store 3 possible integer values.
  type chip is array(1 downto 0) of bit;
  -- Define chip_val which is an integer limited to -1 through 1.
  subtype chip_val is integer range -1 to 1;
  -- Define a an array type to store the integer value of each bit contained
  -- within chip.
  type val_array is array(1 downto 0) of integer;
  constant bit_idx_val : val_array := (-2, 1);
  -- Define functions on chip.
  function "*"(a, b : chip) return chip;
  function "+"(a, b : chip) return chip;
  function "-"(a, b : chip) return chip;
  function Chip2Int(a : chip) return chip_val;
  function Int2Chip(a : chip_val) return chip;
end package;
