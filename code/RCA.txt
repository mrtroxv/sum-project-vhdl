library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity RCA is 
port (a,b:in std_logic_vector (4 downto 0);s:out std_logic_vector (4 downto 0);c:out std_logic);
end entity ;
architecture flow of RCA is 
component FA is 
port (a,b,c0:in std_logic ;s,c:out std_logic);
end component  ;

signal s1,s2,s3,s4: std_logic ;
begin 
FA1:FA port map(a=>a(0),b=>b(0),c0=>'0',s=>s(0),c=>s1);
FA2:FA port map(a=>a(1),b=>b(1),c0=>s1,s=>s(1),c=>s2);
FA3:FA port map(a=>a(2),b=>b(2),c0=>s2,s=>s(2),c=>s3);
FA4:FA port map(a=>a(3),b=>b(3),c0=>s3,s=>s(3),c=>s4);
FA5:FA port map(a=>a(4),b=>b(4),c0=>s4,s=>s(4),c=>c);


end architecture;

