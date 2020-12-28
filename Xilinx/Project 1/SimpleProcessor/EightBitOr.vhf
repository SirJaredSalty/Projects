--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : EightBitOr.vhf
-- /___/   /\     Timestamp : 10/07/2020 10:27:55
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Jared/Desktop/SimpleProcessor/EightBitOr.vhf -w C:/Users/Jared/Desktop/SimpleProcessor/EightBitOr.sch
--Design Name: EightBitOr
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

entity EightBitOr is
   port ( A     : in    std_logic_vector (7 downto 0); 
          B     : in    std_logic_vector (7 downto 0); 
          OrOut : out   std_logic_vector (7 downto 0));
end EightBitOr;

architecture BEHAVIORAL of EightBitOr is
   attribute BOX_TYPE   : string ;
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   XLXI_11 : OR2
      port map (I0=>B(0),
                I1=>A(0),
                O=>OrOut(0));
   
   XLXI_12 : OR2
      port map (I0=>B(1),
                I1=>A(1),
                O=>OrOut(1));
   
   XLXI_13 : OR2
      port map (I0=>B(2),
                I1=>A(2),
                O=>OrOut(2));
   
   XLXI_14 : OR2
      port map (I0=>B(3),
                I1=>A(3),
                O=>OrOut(3));
   
   XLXI_15 : OR2
      port map (I0=>B(4),
                I1=>A(4),
                O=>OrOut(4));
   
   XLXI_16 : OR2
      port map (I0=>B(5),
                I1=>A(5),
                O=>OrOut(5));
   
   XLXI_17 : OR2
      port map (I0=>B(6),
                I1=>A(6),
                O=>OrOut(6));
   
   XLXI_18 : OR2
      port map (I0=>B(7),
                I1=>A(7),
                O=>OrOut(7));
   
end BEHAVIORAL;


