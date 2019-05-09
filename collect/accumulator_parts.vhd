library TypeLibrary;
use TypeLibrary.Types.all;

package Accumulator is
  component ChipAdder is
    port (A, B : in chip; C : out bv8);
  end component;
  
  component Bit9Adder is
    port (A, B : in bv8;
          C : out bv8);
  end component;
end package;
