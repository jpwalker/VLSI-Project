-- mult_DFarch.vhd
-- Jean P. Walker
-- Architecture file using dataflow for multiplier entity.

use work.MultiplierParts.all;

architecture struct of multiplier is
begin
    chipmulties : for i in 15 downto 0 generate
      for all : ChipMultiplier use entity work.ChipMultiplier(dataflow);
    begin
      cm : ChipMultiplier port map (A => A(i), B => B(i), C => C(i));
    end generate;
end architecture;