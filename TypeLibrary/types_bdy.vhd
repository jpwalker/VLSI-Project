-- types_bdy.vhd
-- Jean P. Walker
-- Body of functions defined in types.vhd

package body types is
  function "*"(a, b : chip) return chip is
    variable ret : chip;
  begin
    ret(0) := a(0) and b(0);
    ret(1) := ret(0) and (a(1) xor b(1));
    return ret;
  end function;

  function "*"(a, b : chip_array) return chip_array is
    variable ret : chip_array(a'range);
  begin
    assert (a'left = b'left) and (a'right = b'right) report "Chip arrays should have same range." severity error;
    for i in a'range loop
      ret(i) := a(i) * b(i);
    end loop;
    return ret;
  end function;

  --function Chip2Int(a : chip) return chip_int is
  --begin
  --end function;

  --function Int2Chip(a : chip_int) return chip is
  --begin
  --end function;
end package body;
