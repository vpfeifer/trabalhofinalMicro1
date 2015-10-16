library ieee;
use ieee.std_logic_1164.all;


entity uc_prox is
        PORT (Q3,Q2,Q1,Q0,PP,CMP : IN std_logic;
                  d: OUT std_logic_vector (3 downto 0));
end uc_prox;


architecture behavior of uc_prox is
begin
  
d(3) <= (Q3 AND (NOT Q0)) OR ((NOT Q3) AND Q2 AND Q1) OR  ((NOT Q2) AND (NOT Q1) AND (NOT Q0) AND (NOT PP) AND CMP) OR (Q3 AND (NOT Q1) AND (NOT PP));

--F11 = Q2 Q1'  + Q2' Q1 Q0  + Q3' Q1' Q0' PP' CMP + Q3 Q1' Q0 PP  + Q3 Q1' Q0 CMP;
--F12 = Q1 Q0'  + Q2 Q1' Q0 PP  + Q3' Q2' Q1' Q0 PP'  + Q3 Q1' Q0 PP  + Q2' Q1' Q0 PP' CMP + Q3' Q2' Q0' PP' CMP;
--F13 = Q1' Q0 PP  + Q3 Q1' PP'  + Q2 Q1' PP'  + Q3' Q2' Q0' PP  + Q3' Q2' Q1' Q0' CMP;

d(2) <= (Q2 AND (NOT Q1))  OR ((NOT Q2) AND Q1 AND Q0 ) OR ( (NOT Q3) AND (NOT Q1) AND (NOT Q0) AND (NOT PP) and CMP) OR (Q3 and (NOT Q1) and Q0 and PP ) OR (Q3 and (NOT Q1) and Q0 and CMP);
d(1) <= (Q1 AND (NOT Q0))  OR (Q2 and (NOT Q1) and Q0 and PP) OR ((NOT Q3) AND (NOT Q2) AND (NOT Q1) and Q0 and (NOT PP)) OR (Q3 and (NOT Q1) and Q0 and PP) OR ((NOT Q2) AND (NOT Q1) and Q0 and (NOT PP) and CMP) OR ((NOT Q3) AND (NOT Q2) AND (NOT Q0) AND (NOT PP) and CMP);
d(0) <= ((NOT Q1) and Q0 and PP ) OR (Q3 and (NOT Q1) AND (NOT PP) ) OR (Q2 and (NOT Q1) AND (NOT PP)) OR ((NOT Q3) AND (NOT Q2) AND (NOT Q0) and PP ) OR ((NOT Q3) AND (NOT Q2) AND (NOT Q1) AND (NOT Q0) and CMP); 
  
end behavior;