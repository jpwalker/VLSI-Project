-- decoder.vhd
-- Jean P. Walker
-- Package containing the different parts of the decoder.

library ieee;
use ieee.numeric_std.all;

library TypeLibrary;
use TypeLibrary.Types.all;

package DecoderParts is
  component ChipRegisterSIPO is
    generic (N_chip : positive);
    port (A : in chip;
          B : out chip_array(N_chip - 1 downto 0));
  end component;

  component Multiplier is
    generic (N_chip : positive);
    port (A, B : in chip_array(N_chip - 1 downto 0);
          C : out chip_array(N_chip - 1 downto 0));
  end component;

  component ChipArrayAdder is
    generic (N_chip : positive; N_bit : positive);
    port (A : in chip_array(N_chip - 1 downto 0);
          B : out signed(N_bit - 1 downto 0));
  end component;

  component Comparator is
    generic (N_bit : positive);
    port (A, B : in signed(N_bit - 1 downto 0);
          C : out bit);
  end component;

  component SignedRegisterPIPO is
    generic (N_bit : positive);
    port (A : in signed(N_bit - 1 downto 0);
          B : out signed(N_bit - 1 downto 0));
  end component;

  component PacketLatchSIPO is
    generic (N_symbol : positive);
    port (A : in bit;
          B : bit_vector(N_symbol - 1 downto 0));
  end component;

  component Counter is
    generic (end_count : natural;
             N_bit : positive);
    port (A : in bit; 
          B : out bit_vector(N_bit - 1 downto 0);
          C : out bit);
  end component;
end package;
