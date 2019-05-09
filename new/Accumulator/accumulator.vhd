library TypeLibrary;
use TypeLibrary.Types.all;
use work.Accumulator.all;

entity accu is
Port (A : IN chip_array(15 downto 0);
        B : OUT bit_vector (8 downto 0));
end entity;

architecture struct of accu is
  for all : Bit9Adder use entity work.Bit9Adder(DF);
  signal bv1 : bv8_array(0 to 7);
  signal bv2 : bv8_array(0 to 3);
  signal bv3 : bv8_array(0 to 1);
begin
  lvl1 : for i in 0 to 7 generate
    for all : ChipAdder use entity work.ChipAdder(struct);
  begin
    ca : ChipAdder port map (A => A(2 * i), B => A(2 * i + 1), C => bv1(i));
  end generate;
  lvl2 : for i in 0 to 3 generate
  begin
    b9a : Bit9Adder port map (A => bv1(2 * i), B => bv1(2 * i + 1), C => bv2(i));
  end generate;
  lvl3 : for i in 0 to 1 generate
  begin
    b9a : Bit9Adder port map (A => bv2(2 * i), B => bv2(2 * i + 1), C => bv3(i));
  end generate;
  b9a : Bit9Adder port map (A => bv3(0), B => bv3(1), C => B);
end architecture;
