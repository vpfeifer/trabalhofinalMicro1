library ieee;
use ieee.std_logic_1164.all;


entity compFase is
        PORT (Q2,Q1,Q0 : IN std_logic;
                  d2,d1,d0: OUT std_logic);
end compFase;


architecture behavior of compFase is
begin
  
  d2 <= (Q2 and (not Q1) and Q0) or ((not Q2) and Q1 and (not Q0));
  d1 <= ((not Q2) and Q1 and Q0) or ((not Q2) and (not Q1) and (not Q0));
  d0 <= ((not Q2) and (not Q0)) or ((not Q1) and (not Q0));  
  
end behavior;