--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:35:19 05/20/2011
-- Design Name:   
-- Module Name:   /home/matt/Dropbox/Code/xilinx/sequencer/Sequencer/Square_Generator_tb.vhd
-- Project Name:  Sequencer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Square_Generator
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Square_Generator_tb IS
END Square_Generator_tb;
 
ARCHITECTURE behavior OF Square_Generator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Square_Generator
    PORT(
         HARMONIC : IN  std_logic_vector(3 downto 0);
         CLOCK : IN  std_logic;
         CLOCK_ENABLE : IN  std_logic;
         RESET : IN  std_logic;
         OUTPUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal HARMONIC : std_logic_vector(3 downto 0) := (others => '0');
   signal CLOCK : std_logic := '0';
   signal CLOCK_ENABLE : std_logic := '0';
   signal RESET : std_logic := '0';

 	--Outputs
   signal OUTPUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLOCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Square_Generator PORT MAP (
          HARMONIC => HARMONIC,
          CLOCK => CLOCK,
          CLOCK_ENABLE => CLOCK_ENABLE,
          RESET => RESET,
          OUTPUT => OUTPUT
        );

   -- Clock process definitions
   CLOCK_process :process
   begin
		CLOCK <= '0';
		wait for CLOCK_period/2;
		CLOCK <= '1';
		wait for CLOCK_period/2;
   end process;
 
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		RESET <= '1';
      wait for 100 ns;	
		RESET <= '0';
		
      wait for CLOCK_period*10;
		HARMONIC <= "0111";
		CLOCK_ENABLE <= '1';
		
      -- insert stimulus here 

      wait;
   end process;

END;
