LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_bit.all;

ENTITY cp_counter IS
	GENERIC(n_c : integer:=8;n_b : integer :=3);
	PORT(clk : IN bit;
	     pointer : OUT unsigned( n_b-1 DOWNTO 0 );
	     round : OUT bit);
END cp_counter;

ARCHITECTURE cp_counting OF cp_counter IS
CONSTANT rc : unsigned (n_b-1 DOWNTO 0) :=to_unsigned(0,n_b);
SIGNAL ctr :unsigned (n_b-1 DOWNTO 0);
BEGIN

	P2 : PROCESS
	BEGIN
	ctr <= rc;
	Wait;
	END PROCESS;
	
	P1 : PROCESS(clk)
	VARIABLE ctr: unsigned( n_b-1 DOWNTO 0 );
	BEGIN
	
	IF (clk'LAST_VALUE='1' AND clk ='0') THEN
	ctr := ctr + 1;
		IF (ctr =n_c) THEN
		ctr := rc;
		END IF;
	pointer <= ctr;
	ELSE NULL;
	END IF;

	IF (ctr=rc) THEN
	round <='0';
	ELSE
	round <='1';
	END IF;

	END PROCESS;
END cp_counting;
