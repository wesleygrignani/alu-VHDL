-- Design : somador 
-- Autor  : Wesley Grignani
-- Data   : 06/11/2020
-- Rev.   : 1.0


library ieee;
use ieee.std_logic_1164.all;


entity somador is 
port ( i_A : in  std_logic_vector(7 downto 0);
       i_B : in  std_logic_vector(7 downto 0);
		 o_S : out std_logic_vector(7 downto 0));
end somador;


architecture arch_1 of somador is 
begin
  o_S <= i_A + i_B;
end arch_1;