LIBRARY ieee; 
USE ieee.std_logic_1164.all;


ENTITY four_bit_lfsr IS 
	PORT (
		clk : in std_logic;
		reset : in std_logic;
		enable : in std_logic;
		random_number : out std_logic_vector(3 downto 0)
	);
END ENTITY;


ARCHITECTURE behaviour OF four_bit_lfsr IS
	SIGNAL v_random_number : std_logic_vector(3 downto 0);
BEGIN
	output_logic : process(clk)
		
	BEGIN
	
		IF (clk'event AND clk = '1') THEN
			IF (reset = '1') THEN
				v_random_number <= "0100";
			ELSE
				v_random_number(3) <= v_random_number(0);
				v_random_number(2) <= v_random_number(3) XOR v_random_number(0);
				v_random_number(1) <= v_random_number(2) XOR v_random_number(1);
				v_random_number(0) <= v_random_number(1);
			END IF;
		END IF;

		random_number <= v_random_number;
		
	END process;
END ARCHITECTURE;
		
		