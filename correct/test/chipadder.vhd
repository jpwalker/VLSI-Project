library TypeLibrary;
use TypeLibrary.Types.all;
use work.Accumulator.all;

entity ChipAdder is
  port (A, B : in chip; C : out bv8);
end entity;

architecture struct of ChipAdder is
  for all : Bit9Adder use entity work.Bit9Adder(DF);
  signal A_9, B_9 : bv8;
begin
  main : process (A, B) is
  begin
    A_9 <= chip_to_9bit(A);
    B_9 <= chip_to_9bit(B);
  end process;
  B9A : Bit9Adder port map (A => A_9, B => B_9, C => C);
end architecture;
