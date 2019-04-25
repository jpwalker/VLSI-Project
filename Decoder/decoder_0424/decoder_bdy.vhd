-- decoder_bdy.vhd
-- Jean P. Walker
-- File contains the body of the decoder package.

package body DecoderParts is
	FOR all : ChipRegisterSIPO USE ENTITY work.sipo(shift);
	FOR all : Multiplier USE ENTITY work.multiplier(dataflow);
	--FOR all : ChipArrayAdder USE ENTITY work.
	FOR comp1 : Comparator USE ENTITY work.comparator_1(beyond);
	FOR comp2 : Comparator USE ENTITY work.comparator_1(below);
end package body;