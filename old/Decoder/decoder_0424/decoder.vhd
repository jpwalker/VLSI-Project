LIBRARY ieee;
LIBRARY TypeLibrary;
USE ieee.numeric_bit.all;
USE TypeLibrary.Types.all;
USE work.Decoderparts.all;

ENTITY decoder IS
	GENERIC(user0_code : chip_array (15 DOWNTO 0));
	PORT(decode_in : IN chip;  
	     decode_out : OUT bit_vector (8 DOWNTO 0));
END decoder;

ARCHITECTURE decoding OF decoder IS
SIGNAL clk,clr : bit;
SIGNAL reg2mul,code2mul,mul2acc : chip_array(15 DOWNTO 0); 
SIGNAL acc2reg,reg2com : signed (8 DOWNTO 0);
SIGNAL com12or,com22or,or2ctr,ctr2user :bit;
SIGNAL dlat2user : bit_vector(7 DOWNTO 0);
SIGNAL user_rec :bit_vector(8 DOWNTO 0);
CONSTANT tri_val_pos : SIGNED (8 DOWNTO 0) := "000001010";
CONSTANT tri_val_neg : SIGNED (8 DOWNTO 0):= "111110110";
CONSTANT period : TIME :=10 ns;

	FOR recev_0_reg : ChipRegisterSIPO USE ENTITY work.sipo(shift);
	FOR mult1 : Multiplier USE ENTITY work.multiplier(dataflow);
	FOR acc1 : ChipArrayAdder USE ENTITY work.accu(model);
	FOR comp1 : Comparator USE ENTITY work.comparator_1(beyond);
	FOR comp2 : Comparator USE ENTITY work.comparator_1(below);
	FOR res_reg : SignedRegisterPIPO USE ENTITY work.reg_9bit(bhv);
	FOR dlat1 : PacketLatchSIPO USE ENTITY work.D_latch(bhav);
	FOR ctr1 : Counter USE ENTITY work.counter(count);
BEGIN
clk <= not clk AFTER  period/2;
recev_0_reg : ChipRegisterSIPO PORT MAP(ser_data=>decode_in,pal_data=>reg2mul,clk=>clk,clr=>clr);
--code_0_reg :  ChipRegisterSIPO PORT MAP(ser_data=>user0_code,pal_data=>code2mul,clk=>clk,clr=>clr);
mult1 : Multiplier PORT MAP(reg2mul,user0_code,mul2acc);
acc1 : ChipArrayAdder PORT MAP(mul2acc,acc2reg);
res_reg : SignedRegisterPIPO PORT MAP(D_reg9=>acc2reg, Q_reg9=>reg2com,clk=>clk,clr=>clr);--clk,clr
comp1 : Comparator PORT MAP(reg2com,tri_val_pos,com12or);
comp2 : Comparator PORT MAP(reg2com,tri_val_neg,com22or);
or2ctr <= com12or OR com22or;
ctr1 : Counter PORT MAP(or2ctr,ctr2user);
dlat1 : PacketLatchSIPO PORT MAP(pal_data=>dlat2user,ser_data=>com22or,clk=>or2ctr,clr=>clr);
user_rec(8)<=ctr2user;
user_rec(7 DOWNTO 0) <= dlat2user;
decode_out <=user_rec;

END decoding;
