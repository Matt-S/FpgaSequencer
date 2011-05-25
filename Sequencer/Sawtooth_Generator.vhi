
-- VHDL Instantiation Created from source file Sawtooth_Generator.vhd -- 15:36:27 05/25/2011
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Sawtooth_Generator
	PORT(
		HARMONIC : IN std_logic_vector(3 downto 0);
		PHASE : IN std_logic_vector(7 downto 0);
		CLOCK : IN std_logic;
		CLOCK_ENABLE : IN std_logic;
		RESET : IN std_logic;          
		OUTPUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Sawtooth_Generator: Sawtooth_Generator PORT MAP(
		HARMONIC => ,
		PHASE => ,
		CLOCK => ,
		CLOCK_ENABLE => ,
		RESET => ,
		OUTPUT => 
	);


