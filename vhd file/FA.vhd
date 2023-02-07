library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity FA is 
port (a,b,c0:in std_logic ;s,c:out std_logic);
end entity ;
architecture flow of FA is 
component HA is 
port (a,b:in std_logic ; S,c:out std_logic);
end component  ;
signal s1,s2,s3: std_logic ;
begin 
HA1:HA port map (a=>a,b=>b,s=>s1,c=>s3);
HA2:HA port map (a=>s1,b=>c0,s=>s,c=>s2);
c<=s3 or s2;
end architecture;
