-- decoder.vhd
-- Jean P. Walker
-- Package containing the different parts of the decoder.

library ieee;
use ieee.numeric_bit.all;
library TypeLibrary;
use TypeLibrary.Types.all;

package DecoderParts is
  component ChipRegisterSIPO is
    port (ser_data : in chip;
	  clk,clr : IN BIT;
          pal_data : out chip_array(15 downto 0));
  end component;

  component Multiplier is
    port (A, B : in chip_array(15 downto 0);
          C : out chip_array(15 downto 0));
  end component;

  component ChipArrayAdder is
	Port (CHIP_ARRAY : IN chip_array(15 downto 0);
	OUT_CHIP : OUT signed (8 downto 0));
  end component;

  component Comparator is
	PORT(res_comp:IN SIGNED(8 DOWNTO 0);
	     tri_val: IN SIGNED(8 DOWNTO 0);
			data_good: OUT BIT);
  end component;

  component SignedRegisterPIPO is
	PORT ( clk,clr: IN bit;
		D_reg9 : IN SIGNED(8 DOWNTO 0);
		Q_reg9 : OUT SIGNED(8 DOWNTO 0));
  end component;

  component PacketLatchSIPO is
	PORT(clr,clk : IN bit;
			ser_data: IN bit;
			pal_data: OUT bit_vector(7 DOWNTO 0));
  end component;

  component Counter is
	PORT(data_pass : IN BIT;
		msg_rdy : OUT BIT);
  end component;
end package;
