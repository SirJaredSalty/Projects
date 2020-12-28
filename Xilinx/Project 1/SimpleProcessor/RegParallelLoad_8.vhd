----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:13:44 02/03/2013 
-- Design Name: 
-- Module Name:    RegParallelLoad - Behavioral 
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

entity RegParallelLoad_8 is
  generic(BusWidth : integer := 8);
  port(
        --Control signals.
        clk : in std_logic;
        load : in std_logic;

        --Data signals.
        d : in std_logic_vector(BusWidth - 1 downto 0);
        q : out std_logic_vector(BusWidth - 1 downto 0)
      );
end RegParallelLoad_8;

architecture Behavioral of RegParallelLoad_8 is
begin
  q <= d when rising_edge(clk) and load = '1';
end Behavioral;

