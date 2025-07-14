----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:49:07 06/11/2014 
-- Design Name: 
-- Module Name:    alu8 - Behavioral 
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

entity alu8 is

port(ain : in bit_vector(7 downto 0);
	  bin : in bit_vector (7 downto 0);
	  sel : in bit_vector (1 downto 0);
	  aout : out bit_vector (7 downto 0)
	  );
	  
end alu8;

architecture struct of alu8 is

signal c0 : bit := '0';
signal carout_add, carout_sub, c1, c2, c3, c4, c5, c6, c7, c8, c9,
c10, c11, c12, c13, c14 : bit;

begin

bit0 : entity work.alu(Behavioral)
	port map (ain(0), bin(0), c0, c0, sel, carout_add,
	carout_sub, aout(0));
	
bit1 : entity work.alu(Behavioral)
	port map (ain(1), bin(1),carout_add,
	carout_sub, sel, c1, c2, aout(1));

bit2 : entity work.alu(Behavioral)
	port map (ain(2), bin(2), c1, c2, sel, c3, c4, aout(2));

bit3 : entity work.alu(Behavioral)
	port map (ain(3), bin(3), c3, c4, sel, c5, c6, aout(3));

bit4 : entity work.alu(Behavioral)
	port map (ain(4), bin(4), c5, c6, sel, c7, c8, aout(4));

bit5 : entity work.alu(Behavioral)
	port map (ain(5), bin(5), c7, c8, sel, c9, c10, aout(5));

bit6 : entity work.alu(Behavioral)
	port map (ain(6), bin(6), c9, c10, sel, c11, c12, aout(6));

bit7 : entity work.alu(Behavioral)
	port map (ain(7), bin(7), c11, c12, sel, c13, c14, aout(7));


end architecture struct;

