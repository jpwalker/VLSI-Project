LIBRARY ieee;
LIBRARY TypeLibrary;
USE ieee.numeric_bit.all;
USE TypeLibrary.Types.all;
USE work.Decoderparts.all;

ENTITY testbench IS
END testbench;

ARCHITECTURE tb OF testbench IS
COMPONENT decoder
GENERIC(user0_code : chip_array (15 DOWNTO 0));
	PORT(decode_in : IN chip;
	     decode_out : OUT bit_vector (4 DOWNTO 0));
END COMPONENT;

FOR d1 : decoder USE ENTITY work.decoder(decoding); 
FOR d2 : decoder USE ENTITY work.decoder(decoding); 
FOR d3 : decoder USE ENTITY work.decoder(decoding); 
SIGNAL msg : chip :=to_signed(0,5);
SIGNAL user1,user2,user3 : bit_vector (4 DOWNTO 0);
SIGNAL total_msg : chip_array (31 DOWNTO 0);
--SIGNAL clk : bit;
BEGIN
--clk <= not clk AFTER 10 ns;
d1 : decoder  GENERIC MAP (user0_code =>(to_signed(1,5),to_signed(1,5), to_signed(-1,5), to_signed(1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(1,5), to_signed(1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5))) PORT MAP(decode_in=>msg,decode_out=>user1);
d2 : decoder  GENERIC MAP (user0_code =>(to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(1,5), to_signed(1,5), to_signed(1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5))) PORT MAP(decode_in=>msg,decode_out=>user2);
d3 : decoder  GENERIC MAP (user0_code =>(to_signed(1,5), to_signed(1,5), to_signed(1,5), to_signed(-1,5), to_signed(1,5), to_signed(-1,5), to_signed(-1,5), to_signed(1,5), to_signed(-1,5), to_signed(-1,5), to_signed(1,5), to_signed(1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5))) PORT MAP(decode_in=>msg,decode_out=>user3);
total_msg <= (to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(1,5), to_signed(1,5), to_signed(-3,5), to_signed(-3,5), to_signed(1,5), to_signed(1,5), to_signed(1,5), to_signed(3,5), to_signed(-3,5), to_signed(1,5), to_signed(-1,5), to_signed(-1,5),to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(-1,5), to_signed(1,5), to_signed(1,5), to_signed(1,5), to_signed(1,5), to_signed(1,5), to_signed(-3,5), to_signed(-3,5), to_signed(-1,5), to_signed(1,5), to_signed(1,5), to_signed(3,5), to_signed(3,5));
	PROCESS
	BEGIN
	
	FOR i IN 31 DOWNTO 0 LOOP
	WAIT FOR 10 ns;
	msg <= total_msg(i);
	
	END LOOP;
	END PROCESS;
END tb;
