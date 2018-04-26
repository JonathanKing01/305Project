LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.numeric_std.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY clock_div IS

   PORT(SIGNAL clk 			: IN std_logic;
        SIGNAL q_Out 			: OUT std_logic);
END clock_div;

architecture behavior of clock_div is
SigNAL count : STD_logic_veCTor(1 downto 0):="00";
SigNAL q : STD_logic:='0';
begin

process(clk)
begin
	count <= count +  '1';
	if(count = "10")then
		count <= "00";
		if(q = '0')then
			q <= '1';
		else 
			q <= '0';
		end if;
	end if;
end process;

q_out <= q;

end behavior;