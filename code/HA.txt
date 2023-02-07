library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity HA is 
port (a,b:in std_logic ; S,c:out std_logic);
end entity ;
architecture flow of HA is 
begin 
s<= a xor b ;
c<= a and b ;
end architecture ;