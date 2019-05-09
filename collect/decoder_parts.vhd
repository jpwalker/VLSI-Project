-- decoder.vhd
-- Jean P. Walker
-- Package containing the different parts of the decoder.

library ieee;
use ieee.numeric_bit.all;
library TypeLibrary;
use TypeLibrary.Types.all;

package DecoderParts is
  component ChipRegisterSIPO is
	PORT(clr,clk,en : IN bit;
			ser_data: IN chip;
			pal_data: OUT chip_array(15 DOWNTO 0));
  end component;

  component Multiplier is
  port (A : IN chip_array(15 DOWNTO 0);
	B : in chip_array(15 DOWNTO 0);
        C : out chip_array(15 downto 0));
  end component;

  component ChipArrayAdder is
	Port (A : IN chip_array(15 downto 0);
        B : OUT signed(8 downto 0));
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
	PORT(sympol : IN bit_vector(3 DOWNTO 0);
		en: IN bit;
		user_data: OUT bit_vector(3 DOWNTO 0));
  end component;

  component Counter is
	PORT(count : IN BIT;
		msg_rdy : OUT BIT);
  end component;

  COMPONENT sipo_bit IS
	PORT(D_bit :IN BIT;
		clk:IN bit;
		Q_bit: OUT BIT_VECTOR(3 DOWNTO 0));
  END COMPONENT;

  COMPONENT counter_load IS
	PORT(clk : IN BIT;
		chip_rdy: OUT bit);
  END COMPONENT;
end package;