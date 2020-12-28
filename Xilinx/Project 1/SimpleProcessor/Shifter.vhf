--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Shifter.vhf
-- /___/   /\     Timestamp : 10/07/2020 10:27:56
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Jared/Desktop/SimpleProcessor/Shifter.vhf -w C:/Users/Jared/Desktop/SimpleProcessor/Shifter.sch
--Design Name: Shifter
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

entity Shifter is
   port ( B     : in    std_logic_vector (7 downto 0); 
          Shift : out   std_logic_vector (7 downto 0));
end Shifter;

architecture BEHAVIORAL of Shifter is
   attribute BOX_TYPE   : string ;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_15 : GND
      port map (G=>Shift(7));
   
   XLXI_16 : BUF
      port map (I=>B(7),
                O=>Shift(6));
   
   XLXI_17 : BUF
      port map (I=>B(6),
                O=>Shift(5));
   
   XLXI_18 : BUF
      port map (I=>B(5),
                O=>Shift(4));
   
   XLXI_19 : BUF
      port map (I=>B(4),
                O=>Shift(3));
   
   XLXI_20 : BUF
      port map (I=>B(3),
                O=>Shift(2));
   
   XLXI_21 : BUF
      port map (I=>B(2),
                O=>Shift(1));
   
   XLXI_22 : BUF
      port map (I=>B(1),
                O=>Shift(0));
   
end BEHAVIORAL;


