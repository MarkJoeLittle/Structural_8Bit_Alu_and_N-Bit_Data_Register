----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:10:54 06/11/2014 
-- Design Name: 
-- Module Name:    nbit_reg - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nbit_reg is
generic (n : integer);
port (Clk : in std_logic;
		d_out : out std_logic_vector (0 to n-1);
		ind : in std_logic
		);
end nbit_reg;

architecture gen of nbit_reg is

component flipflop
	port (Clk : in std_logic;
			d : in std_logic;
			d_out : out std_logic
			);
end component flipflop;

signal wire1 : std_logic_vector(0 to n-1);

begin
	flipflopa : for i in 0 to n-1 generate
		wire1(i) <= ind;
		
			flipflopb : flipflop port map (Clk, wire1(i), d_out(i));
			end generate;

end gen;

