--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : bit_8_register.vhf
-- /___/   /\     Timestamp : 10/21/2020 21:20:18
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "C:/Users/Jared/Desktop/School/UMBC/Fall 2020/CMSC 313/Projects/Project 2/GeneralPurposeProcessor_skeleton/bit_8_register.vhf" -w "C:/Users/Jared/Desktop/School/UMBC/Fall 2020/CMSC 313/Projects/Project 2/GeneralPurposeProcessor_skeleton/bit_8_register.sch"
--Design Name: bit_8_register
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

entity bit_8_register is
   port ( C : in    std_logic; 
          D : in    std_logic_vector (7 downto 0); 
          E : in    std_logic; 
          O : out   std_logic_vector (7 downto 0));
end bit_8_register;

architecture BEHAVIORAL of bit_8_register is
   attribute BOX_TYPE   : string ;
   component FDE
      generic( INIT : bit :=  '0');
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDE : component is "BLACK_BOX";
   
begin
   XLXI_1 : FDE
      port map (C=>C,
                CE=>E,
                D=>D(0),
                Q=>O(0));
   
   XLXI_2 : FDE
      port map (C=>C,
                CE=>E,
                D=>D(1),
                Q=>O(1));
   
   XLXI_3 : FDE
      port map (C=>C,
                CE=>E,
                D=>D(2),
                Q=>O(2));
   
   XLXI_4 : FDE
      port map (C=>C,
                CE=>E,
                D=>D(3),
                Q=>O(3));
   
   XLXI_5 : FDE
      port map (C=>C,
                CE=>E,
                D=>D(4),
                Q=>O(4));
   
   XLXI_6 : FDE
      port map (C=>C,
                CE=>E,
                D=>D(5),
                Q=>O(5));
   
   XLXI_7 : FDE
      port map (C=>C,
                CE=>E,
                D=>D(6),
                Q=>O(6));
   
   XLXI_8 : FDE
      port map (C=>C,
                CE=>E,
                D=>D(7),
                Q=>O(7));
   
end BEHAVIORAL;


