library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity trca is 
port (x,y,z:in std_logic_vector (3 downto 0) ;su:out std_logic_vector (4 downto 0);c:out std_logic );
end entity ;
architecture flow of trca is 

component  FA is 
port (a,b,c0:in std_logic ;s,c:out std_logic);
end component  ;

component  RCA is 
port (a,b:in std_logic_vector (4 downto 0);s:out std_logic_vector(4 downto 0);c:out std_logic);
end component  ;
signal si,ci:std_logic_vector(4 downto 0):="00000";


begin 
FA1:FA port map(a=>x(0),b=>y(0),c0=>z(0),s=>si(0),c=>ci(1));
FA2:FA port map(a=>x(1),b=>y(1),c0=>z(1),s=>si(1),c=>ci(2));
FA3:FA port map(a=>x(2),b=>y(2),c0=>z(2),s=>si(2),c=>ci(3));
FA4:FA port map(a=>x(3),b=>y(3),c0=>z(3),s=>si(3),c=>ci(4));
 RCA1:RCA port map(a=>si,b=>ci,s=>su,c=>c);
					
						

end architecture ;