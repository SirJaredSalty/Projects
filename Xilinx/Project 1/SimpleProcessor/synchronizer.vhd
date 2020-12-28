----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:59:04 01/01/2014 
-- Design Name: 
-- Module Name:    synchronizer - Behavioral 
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

entity synchronizer is
    Port ( b_async : in  STD_LOGIC;
           b_sync : out  STD_LOGIC;
           clk : in  STD_LOGIC);
end synchronizer;

architecture Behavioral of synchronizer is
	signal q1,q2,q3: std_logic;
	attribute SHREG_EXTRACT               : string;
	attribute SHREG_EXTRACT of q1 : signal is "NO";
	attribute SHREG_EXTRACT of q2 : signal is "NO";
	attribute SHREG_EXTRACT of q3 : signal is "NO";
begin
	b_sync<=q3;
	process(clk)
	begin
		if rising_edge(clk) then
			q1<=b_async;
			q2<=q1;
			q3<=q2;
		end if;
	end process;
end Behavioral;

