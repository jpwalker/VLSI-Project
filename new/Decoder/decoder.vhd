LIBRARY ieee;
LIBRARY TypeLibrary;
USE ieee.numeric_bit.all;
USE TypeLibrary.Types.all;
USE work.Decoderparts.all;

ENTITY decoder IS
	GENERIC(user0_code : chip_array (15  DOWNTO 0):=(OTHERS=>"00000"));
	PORT(decode_in : IN chip;
		clk : IN bit;  
	     decode_out : OUT bit_vector (4 DOWNTO 0));
END decoder;

ARCHITECTURE decoding OF decoder IS
SIGNAL clr : bit;
SIGNAL ctr2reg :bit;
SIGNAL reg2mul,mul2acc : chip_array(15 DOWNTO 0);
SIGNAL code2mul : chip_array(15 DOWNTO 0); 
SIGNAL acc2reg,reg2com : signed (8 DOWNTO 0);
SIGNAL com12or,com22or,or2ctr,ctr2user :bit;
SIGNAL dlat2user : bit_vector(3 DOWNTO 0);
SIGNAL user_rec :bit_vector(4 DOWNTO 0);
SIGNAL sipo2dl :bit_vector(3 DOWNTO 0);
CONSTANT tri_val_pos : SIGNED (8 DOWNTO 0) := "000001111";
CONSTANT tri_val_neg : SIGNED (8 DOWNTO 0):= "111110001";
CONSTANT period : TIME :=10 ns;

	FOR recev_0_reg : ChipRegisterSIPO USE ENTITY work.sipo(shift);
	FOR mult1 : Multiplier USE ENTITY work.multiplier(struct);
	FOR acc1 : ChipArrayAdder USE ENTITY work.accu(struct);
	FOR comp1 : Comparator USE ENTITY work.comparator_1(below);
	FOR comp2 : Comparator USE ENTITY work.comparator_1(beyond);
	--FOR res_reg : SignedRegisterPIPO USE ENTITY work.reg_9bit(bhv);
	FOR dlat1 : PacketLatchSIPO USE ENTITY work.D_latch(bhav);
	FOR ctr1 : Counter USE ENTITY work.counter(proc);
	FOR sipo1 : sipo_bit USE ENTITY work.sipo_bit(behav);
	FOR ctr_ld : counter_load USE ENTITY work.counter_chip(count);
BEGIN
--clk <= not clk AFTER  period/2;
recev_0_reg : ChipRegisterSIPO PORT MAP(ser_data=>decode_in,pal_data=>reg2mul,en=>ctr2reg, clk=>clk,clr=>clr);
ctr_ld : counter_load PORT MAP(clk => clk, chip_rdy => ctr2reg);
--code_0_reg :  ChipRegisterSIPO PORT MAP(ser_data=>user0_code,pal_data=>code2mul,clk=>clk,clr=>clr);
mult1 : Multiplier PORT MAP(reg2mul,user0_code,mul2acc);
acc1 : ChipArrayAdder PORT MAP(mul2acc, acc2reg);
--res_reg : SignedRegisterPIPO PORT MAP(D_reg9=>acc2reg, Q_reg9=>reg2com,clk=>ctr2reg,clr=>clr);--clk,clr
comp1 : Comparator PORT MAP(acc2reg,tri_val_neg,com12or);
comp2 : Comparator PORT MAP(acc2reg,tri_val_pos,com22or);
or2ctr <= com12or OR com22or;
ctr1 : Counter PORT MAP(or2ctr, ctr2user);
sipo1 : sipo_bit PORT MAP(Q_bit=>sipo2dl,D_bit=>com22or,clk=>or2ctr);
dlat1 : PacketLatchSIPO PORT MAP(user_data=>dlat2user,sympol=>sipo2dl,en=>ctr2user);
user_rec(4)<=ctr2user;
user_rec(3 DOWNTO 0) <= dlat2user;
decode_out <=user_rec;

END decoding;