--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:43:10 06/11/2014
-- Design Name:   
-- Module Name:   E:/Desktop/School Docs/5/SummerC/CIS 4930-002 Digital Circuit Synthesis/ass2/redo/nbit_reg_tb.vhd
-- Project Name:  redo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nbit_reg
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
 
ENTITY nbit_reg_tb IS
END nbit_reg_tb;
 
ARCHITECTURE behavior OF nbit_reg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nbit_reg
	 generic (n : integer := 8);
    PORT(
         Clk : IN  std_logic;
         d_out : OUT  std_logic_vector(0 to n-1);
         ind : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal ind : std_logic := '0';

 	--Outputs
   signal d_out : std_logic_vector(0 to 7);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nbit_reg PORT MAP (
          Clk => Clk,
          d_out => d_out,
          ind => ind
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 
		ind <= '1';
		wait for 10 ns;
		ind <= '0';
		wait for 10 ns;
		ind <= '1';
		wait for 10 ns;
		ind <= '0';
		wait for 10 ns;
		ind <= '1';
		wait for 10 ns;
		ind <= '0';
		wait for 10 ns;
		ind <= '1';

      wait;
   end process;

END;
