-- types_bdy.vhd
-- Jean P. Walker
-- Body of functions defined in types.vhd

library ieee;
use ieee.numeric_bit.all;

package body types is
  --function "*"(a, b : chip) return chip is
  --  variable ret : chip;
  --begin
  --  ret := a * b;
  --  return ret;
  --end function;

  --function "*"(a, b : chip_array) return chip_array is
  --  variable ret : chip_array(a'range);
  --begin
  --  assert (a'left = b'left) and (a'right = b'right) report "Chip arrays should have same range." severity error;
  --  for i in a'range loop
  --    ret(i) := a(i) * b(i);
  --  end loop;
  --  return ret;
  --end function;

  function chip_to_9bit(a : chip) return bit_vector is
    variable a_9 : bit_vector(8 downto 0);
  begin
    if a[4] = '0' then
      a_9(8 downto 5) := (others => '0');
    elsif a[4] = '1' then
      a_9(8 downto 5) := (others => '1');
    end if;
    a_9(4 downto 0) := a(4 downto 0);
    return a_9;
  end function;
end package body;
