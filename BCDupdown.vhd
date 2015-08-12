----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:50:54 08/11/2015 
-- Design Name: 
-- Module Name:    BCDupdown - Behavioral 
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

entity BCDupdown is
    Port ( pre_set : in  STD_LOGIC;
           cin_b : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           updown : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           P1 : in  STD_LOGIC;
           P2 : in  STD_LOGIC;
           P3 : in  STD_LOGIC;
           P4 : in  STD_LOGIC;
           cout_b : out  STD_LOGIC;
           Q1 : out  STD_LOGIC;
           Q2 : out  STD_LOGIC;
           Q3 : out  STD_LOGIC;
           Q4 : out  STD_LOGIC);
end BCDupdown;

architecture Behavioral of BCDupdown is
signal output: std_logic_vector(3 downto 0);

begin

p1: process (clk, reset, pre_set) is
variable count: integer;
begin
	count:=0;
	if reset = '0' then
		output <= '0000';
	elsif pre_set = '1' then.
		count:= conv_integer(P1 & P2 & P3 & P4);
		output <= P1 & P2 & P3 & P4;
	elsif clk'event and clk = '1' then
		
	end if

end Behavioral;

