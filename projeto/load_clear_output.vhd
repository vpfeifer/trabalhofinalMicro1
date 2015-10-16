library ieee;
use ieee.std_logic_1164.all;


entity uc_load_clear_output is
        PORT (Q : IN std_logic_vector (3 downto 0);
                  LOAD,CLEAR: OUT std_logic);
end uc_load_clear_output;


architecture behavior of uc_load_clear_output is
begin
  LOAD <= (not Q(3)) and Q(2) and Q(1) and Q(0);
  CLEAR <= ((not Q(3)) and Q(1) and Q(0)) or (Q(2) and Q(1) and Q(0));
end behavior;