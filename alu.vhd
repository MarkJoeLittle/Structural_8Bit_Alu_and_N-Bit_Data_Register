----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:26:35 06/11/2014 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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

entity alu is
port(ain : in bit;
	  bin : in bit;
	  cin_add : in bit;
	  cin_sub : in bit;
	  sel : in bit_vector(1 downto 0);
	  cout_add : out bit;
	  cout_sub : out bit;
	  aout : out bit
		);
end alu;

architecture Behavioral of alu is

begin

process(sel, ain, bin, cin_add, cin_sub)
begin
	case sel is
	when "00" =>
	aout <= ain xor bin xor cin_add;--adding two integers
	cout_add <= ((bin and cin_add) or (ain and cin_add) or (ain and bin));
	when "01" =>
	aout <= ain xor bin xor cin_sub;--subtracting two integers
	cout_sub <= (((not ain) and bin) or ((not ain) and cin_sub) or (bin and cin_sub));
	when "10" =>
	aout <=  ain and bin;--two inputs anded together
	when "11" =>
	aout <= not ain;--inverting input a
	when others =>
	aout <= '0';
	end case;
end process;
	

end Behavioral;


