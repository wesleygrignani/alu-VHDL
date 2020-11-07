-- Design : mux8_1 
-- Autor  : Wesley Grignani
-- Data   : 06/11/2020
-- Rev.   : 1.0

library ieee;
use ieee.std_logic_1164.all;


entity mux8_1 is 
port ( i_SOMA   : in  std_logic_vector(7 downto 0);
       i_A      : in  std_logic_vector(7 downto 0);
       i_SUB    : in  std_logic_vector(7 downto 0);
		 i_SOMA_1 : in  std_logic_vector(7 downto 0);
		 i_AND    : in  std_logic_vector(7 downto 0);
		 i_OR     : in  std_logic_vector(7 downto 0);
		 i_XOR    : in  std_logic_vector(7 downto 0);
		 i_NOT    : in  std_logic_vector(7 downto 0);
       i_SEL    : in  std_logic_vector(2 downto 0);
		 o_OUT    : out std_logic_vector(7 downto 0));
end mux8_1;


architecture arch_1 of mux8_1 is 
begin
  process(i_SEL, I_IN)
  begin
    if(i_SEL = "000") then 
	   o_OUT <= i_SOMA;
    elsif(i_SEL = "001") then
	   o_OUT <= i_SUB;
	 elsif(i_SEL = "010") then
	   o_OUT <= i_SOMA_1;
	 elsif(i_SEL = "011") then
	   o_OUT <= i_A;
	 elsif(i_SEL = "100") then
	   o_OUT <= i_AND;
	 elsif(i_SEL = "101") then
	   o_OUT <= i_OR;
	 elsif(i_SEL = "110") then
	   o_OUT <= i_XOR;
	 elsif(i_SEL = "111") then
	   o_OUT <= i_NOT;
	 else
	   o_OUT <= "00000000";
	 end if;
  end process;
end arch_1;