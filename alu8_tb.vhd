--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:28:08 06/11/2014
-- Design Name:   
-- Module Name:   E:/Desktop/School Docs/5/SummerC/CIS 4930-002 Digital Circuit Synthesis/ass2/redo/alu8_tb.vhd
-- Project Name:  redo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu8
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
 
ENTITY alu8_tb IS
END alu8_tb;
 
ARCHITECTURE behavior OF alu8_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu8
    PORT(
         ain : IN  bit_vector(7 downto 0);
         bin : IN  bit_vector(7 downto 0);
         sel : IN  bit_vector(1 downto 0);
         aout : OUT  bit_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ain : bit_vector(7 downto 0) := (others => '0');
   signal bin : bit_vector(7 downto 0) := (others => '0');
   signal sel : bit_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal aout : bit_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu8 PORT MAP (
          ain => ain,
          bin => bin,
          sel => sel,
          aout => aout
        );

--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 
		--test1
		
		ain <= "00000001";
		bin <= "00000001";
		
		sel <= "00";
		
		wait for 60 ns;
		sel <= "01";
		
		wait for 60 ns;
		sel <= "10";
		
		wait for 60 ns;
		sel <= "11";

		--test2
		wait for 60 ns;
	
		ain <= "11111111";
		bin <= "00000000";
		
		sel <= "00";
			
		wait for 60 ns;
		sel <= "01";
		
		wait for 60 ns;
		sel <= "10";
		
		wait for 60 ns;
		sel <= "11";
		
		--test3
		wait for 60 ns;
	
		ain <= "00000001";
		bin <= "11111111";
		
		sel <= "00";
		
		wait for 60 ns;
		sel <= "01";
		
		wait for 60 ns;
		sel <= "10";
		
		wait for 60 ns;
		sel <= "11";
		
		--test4
		wait for 60 ns;
		
		ain <= "00010001";
		bin <= "00010001";
		
		sel <= "00";
		
		wait for 60 ns;
		sel <= "01";
		
		wait for 60 ns;
		sel <= "10";
		
		wait for 60 ns;
		sel <= "11";

      wait;
   end process;

END;
