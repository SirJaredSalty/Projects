--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : EightBitXor.vhf
-- /___/   /\     Timestamp : 10/21/2020 21:20:20
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "C:/Users/Jared/Desktop/School/UMBC/Fall 2020/CMSC 313/Projects/Project 2/GeneralPurposeProcessor_skeleton/EightBitXor.vhf" -w "C:/Users/Jared/Desktop/School/UMBC/Fall 2020/CMSC 313/Projects/Project 2/GeneralPurposeProcessor_skeleton/EightBitXor.sch"
--Design Name: EightBitXor
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

entity EightBitXor is
   port ( A      : in    std_logic_vector (7 downto 0); 
          B      : in    std_logic_vector (7 downto 0); 
          XorOut : out   std_logic_vector (7 downto 0));
end EightBitXor;

architecture BEHAVIORAL of EightBitXor is
   attribute BOX_TYPE   : string ;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
begin
   XLXI_2 : XOR2
      port map (I0=>B(0),
                I1=>A(0),
                O=>XorOut(0));
   
   XLXI_3 : XOR2
      port map (I0=>B(1),
                I1=>A(1),
                O=>XorOut(1));
   
   XLXI_4 : XOR2
      port map (I0=>B(2),
                I1=>A(2),
                O=>XorOut(2));
   
   XLXI_5 : XOR2
      port map (I0=>B(3),
                I1=>A(3),
                O=>XorOut(3));
   
   XLXI_6 : XOR2
      port map (I0=>B(4),
                I1=>A(4),
                O=>XorOut(4));
   
   XLXI_7 : XOR2
      port map (I0=>B(5),
                I1=>A(5),
                O=>XorOut(5));
   
   XLXI_8 : XOR2
      port map (I0=>B(6),
                I1=>A(6),
                O=>XorOut(6));
   
   XLXI_9 : XOR2
      port map (I0=>B(7),
                I1=>A(7),
                O=>XorOut(7));
   
end BEHAVIORAL;


