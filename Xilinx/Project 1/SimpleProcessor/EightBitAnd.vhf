--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : EightBitAnd.vhf
-- /___/   /\     Timestamp : 10/07/2020 10:27:55
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Jared/Desktop/SimpleProcessor/EightBitAnd.vhf -w C:/Users/Jared/Desktop/SimpleProcessor/EightBitAnd.sch
--Design Name: EightBitAnd
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity EightBitAnd is
   port ( A      : in    std_logic_vector (7 downto 0); 
          B      : in    std_logic_vector (7 downto 0); 
          AndOut : out   std_logic_vector (7 downto 0));
end EightBitAnd;

architecture BEHAVIORAL of EightBitAnd is
   attribute BOX_TYPE   : string ;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>B(0),
                I1=>A(0),
                O=>AndOut(0));
   
   XLXI_2 : AND2
      port map (I0=>B(1),
                I1=>A(1),
                O=>AndOut(1));
   
   XLXI_3 : AND2
      port map (I0=>B(2),
                I1=>A(2),
                O=>AndOut(2));
   
   XLXI_4 : AND2
      port map (I0=>B(3),
                I1=>A(3),
                O=>AndOut(3));
   
   XLXI_5 : AND2
      port map (I0=>B(4),
                I1=>A(4),
                O=>AndOut(4));
   
   XLXI_6 : AND2
      port map (I0=>B(5),
                I1=>A(5),
                O=>AndOut(5));
   
   XLXI_9 : AND2
      port map (I0=>B(6),
                I1=>A(6),
                O=>AndOut(6));
   
   XLXI_10 : AND2
      port map (I0=>B(7),
                I1=>A(7),
                O=>AndOut(7));
   
end BEHAVIORAL;


