LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.numeric_std.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY clock_div IS

   PORT(SIGNAL clk 			: IN std_logic;
        SIGNAL q_Out 			: OUT std_logic);
END clock_div;

architecture behavior of clock_div is
SigNAL count : STD_logic;
SigNAL q : STD_logic;
begin

process(clk)
begin
	if(clk'event and clk = '1') then
		if(count = '1')then
			q <= '1';
			count <= '0';
		else
			q <= '0';
			count <= '1';
		end if;
	end if;
end process;

q_out <= q;

end behavior;