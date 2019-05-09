-- multiplier.vhd
-- Jean P. Walker
-- Entity for multiplier.

library TypeLibrary;
use TypeLibrary.Types.all;
use work.MultiplierParts.all;

entity multiplier is
  port (A, B : in chip_array(15 downto 0);
        C : out chip_array(15 downto 0));
end entity;

architecture struct of multiplier is
begin
    chipmulties : for i in 15 downto 0 generate
      for all : ChipMultiplier use entity work.ChipMultiplier(dataflow);
    begin
      cm : ChipMultiplier port map (A => A(i), B => B(i), C => C(i));
    end generate;
end architecture;
