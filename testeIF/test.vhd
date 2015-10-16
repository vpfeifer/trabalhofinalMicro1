library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std;


entity ledResult is
        PORT (ledIN : IN BIT_VECTOR (2 downto 0);
               r : IN BIT_VECTOR (1 downto 0);
               buttons : IN BIT_VECTOR (2 downto 0);
               result : OUT BIT_VECTOR (2 downto 0));
end ledResult;


architecture behavior of ledResult is
begin
  process (ledIN,r,buttons)
  begin
	  if (buttons /= "111") then --(buttons(2) = '0' or (buttons(1) = '0') or (buttons(0) = '0')) then
		result <= buttons;
	  elsif (r = "00") then --((r1 = '0') and (r0 = '0')) then
		result <= ledIN;
	  elsif (r = "01") then--elsif ((r1 = '0') and (r0 = '1')) then
		result <= (ledIN ror 1);
		--result(0) <= ledIN(2);
		--result(1) <= ledIN(0);
		--result(2) <= ledIN(1);
	  elsif (r = "10") then--elsif ((r1 = '1') and (r0 = '0')) then
		result <= (ledIN rol 1);
		--result(0) <= ledIN(1);
		--result(1) <= ledIN(2);
		--result(2) <= ledIN(0);
	  end if;
  end process;
  
end behavior;