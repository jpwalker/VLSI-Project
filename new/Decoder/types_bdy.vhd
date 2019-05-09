-- types_bdy.vhd
-- Jean P. Walker
-- Body of functions defined in types.vhd

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

  function chip_to_9bit(a : chip) return bv8 is
    variable a_9 : bv8;
  begin
    a_9 := (3 => a(3), 2 => a(2), 1 => a(1), 0 => a(0), others => a(4));
    return a_9;
  end function;

  function majority(A, B, C : bit) return bit is
  begin
    return (A and B) or (B and C) or (A and C);
  end function;
end package body;
