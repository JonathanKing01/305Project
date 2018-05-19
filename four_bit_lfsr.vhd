LIBRARY ieee; 
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;

-- To change this we can either look up a specific combination which
-- will lead to whatever we need to just change the XOR and reset
-- value randomly to make what we want.

-- Current outputs in range 1 - 31
ENTITY four_bit_lfsr IS 
	PORT (
		clk : in std_logic;
		reset : in std_logic;
		enable : in std_logic;
		random_number : out integer
	);
END ENTITY;


ARCHITECTURE behaviour OF four_bit_lfsr IS
	SIGNAL v_random_number : std_logic_vector(4 downto 0);
BEGIN
	output_logic : process(clk)
		
	BEGIN
	
		IF (clk'event AND clk = '1') THEN
			IF (reset = '1') THEN
				v_random_number <= "00001";
			ELSE
				v_random_number(4) <= v_random_number(0);
				v_random_number(3) <= v_random_number(4) XOR v_random_number(0);
				v_random_number(2) <= v_random_number(3) XOR v_random_number(0);
				v_random_number(1) <= v_random_number(2) XOR v_random_number(0);
				v_random_number(0) <= v_random_number(1);
			END IF;
		END IF;

		random_number <= to_integer(unsigned(v_random_number));
		
	END process;
END ARCHITECTURE;
		
		