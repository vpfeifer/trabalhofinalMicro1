library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std;


entity timeout_logic is
        PORT (cont : IN BIT_VECTOR (15 downto 0);
               result : OUT BIT_VECTOR (3 downto 0));
end timeout_logic;


architecture behavior of timeout_logic is
begin
  process (cont)
  begin
	  if 	(cont <= "0011011010110100") then
		result <= "1111";
	  elsif (cont <= "0110110101101001") then
		result <= "0111";
	  elsif (cont <= "1010010000011110") then
		result <= "0011";
	  elsif (cont <= "1110101000100100") then
		result <= "0001";
	  else
		result <= "0000";
	  end if;
  end process;
  
end behavior;