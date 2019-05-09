library TypeLibrary;
use TypeLibrary.Types.all;

entity Bit9Adder is
  port (A, B : in bv8;
        C : out bv8);
end entity;

architecture DF of Bit9Adder is
begin
  main : process (A, B) is
    variable res : bv8;
    variable carry : bit;
  begin
    for i in 0 to 8 loop
      if i = 0 then
        carry := '0';
      end if;
      res(i) := ((A(i) xor B(i)) xor carry);
      carry := majority(A(i), B(i), carry);
    end loop;
    C <= res;
  end process;
end architecture;
