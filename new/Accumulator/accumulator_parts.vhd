library TypeLibrary;
use TypeLibrary.Types.all;

package Accumulator is
  component ChipAdder is
    port (A, B : in chip; C : out bit_vector(8 downto 0));
  end component;
  
  component Bit9Adder is
    port (A, B : in bit_vector(8 downto 0);
          C : out bit_vector(8 downto 0));
  end component;
end package;
