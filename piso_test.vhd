library ieee;
use ieee.std_logic_1164.all;

entity piso_test is
    generic ( width : integer := 31 );             
port  (  clk : in std_logic;
            load : in std_logic;
            data_in : in std_logic_vector(width downto 0);
            data_out : out std_logic
      );
end piso_test;
architecture Behav_test of piso_test is
signal temp: std_logic_vector (width downto 0) := (others => '0');  
begin
process(clk,load)
begin
if (load = '1') then  
temp <= data_in;
elsif (clk'event and clk = '1') then 
data_out <= temp(width);
temp(width downto 1) <= temp(width-1 downto 0);
end if;
end process;
end Behav_test;
