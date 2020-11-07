-- Design : porta_not 
-- Autor  : Wesley Grignani
-- Data   : 06/11/2020
-- Rev.   : 1.0

library ieee;
use ieee.std_logic_1164.all;


entity porta_not is 
port ( i_A : in  std_logic_vector(7 downto 0);
		 o_S : out std_logic_vector(7 downto 0));
		 
end porta_not;


architecture arch_1 of porta_not is 
begin
  o_S <= NOT i_A;
end arch_1;