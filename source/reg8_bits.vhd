-- Design : reg8_bits 
-- Autor  : Wesley Grignani
-- Data   : 06/11/2020
-- Rev.   : 1.0

library ieee;
use ieee.std_logic_1164.all;


entity reg8_bits is 
port ( i_IN   : in  std_logic_vector(7 downto 0);
       i_LD   : in  std_logic;
		 i_CLK  : in  std_logic;
		 o_OUT  : out std_logic_vector(7 downto 0));		 
end reg8_bits;


architecture arch_1 of reg8_bits is 
begin
  process(i_LD, i_CLK)
  begin 
    if(i_LD = '0') then
	   o_OUT <= "00000000";
	 elsif(rising_edge(i_CLK)) then
	   if(i_LD = '1') then 
		  o_OUT <= i_IN;
		end if;
	 end if;
  end process;
end arch_1;