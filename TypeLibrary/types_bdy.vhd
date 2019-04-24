-- types_bdy.vhd
-- Jean P. Walker
-- Body of functions defined in types.vhd

package body types is
  function "*"(a, b : chip) return chip is
    variable ret : chip;
  begin
    ret := a * b;
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

  function chip_add_chip(a, b : chip; N_bit : positive) return signed is
    variable a_s, b_s, ret : signed(N_bit - 1 downto 0);
  begin
    a_s := to_signed(to_integer(a), N_bit);
    b_s := to_signed(to_integer(b), N_bit);
    ret := a_s + b_s;
    return ret;
  end function;

  function signed_add_chip(a : signed; b : chip) return signed is
    constant N_bit : integer := a'length;
    variable ret, b_s : signed(N_bit - 1 downto 0);
  begin
    b_s := to_signed(to_integer(b), N_bit);
    ret := a + b_s;
    return ret;
  end function;

  function chip_add_signed(a : chip; b : signed) return signed is
    constant N_bit : integer := b'length;
    variable ret, a_s : signed(N_bit - 1 downto 0);
  begin
    a_s := to_signed(to_integer(a), N_bit);
    ret := a_s + b;
    return ret;
  end function;
end package body;
