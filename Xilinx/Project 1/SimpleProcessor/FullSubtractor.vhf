--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : FullSubtractor.vhf
-- /___/   /\     Timestamp : 10/07/2020 10:27:52
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Jared/Desktop/SimpleProcessor/FullSubtractor.vhf -w C:/Users/Jared/Desktop/SimpleProcessor/FullSubtractor.sch
--Design Name: FullSubtractor
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

entity FullSubtractor is
   port ( A    : in    std_logic; 
          B    : in    std_logic; 
          Bin  : in    std_logic; 
          Bout : out   std_logic; 
          D    : out   std_logic);
end FullSubtractor;

architecture BEHAVIORAL of FullSubtractor is
   attribute BOX_TYPE   : string ;
   signal XLXN_27 : std_logic;
   signal XLXN_42 : std_logic;
   signal XLXN_44 : std_logic;
   signal XLXN_45 : std_logic;
   signal XLXN_46 : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : XOR2
      port map (I0=>Bin,
                I1=>XLXN_42,
                O=>D);
   
   XLXI_2 : XOR2
      port map (I0=>B,
                I1=>A,
                O=>XLXN_42);
   
   XLXI_3 : AND2
      port map (I0=>XLXN_27,
                I1=>B,
                O=>XLXN_45);
   
   XLXI_4 : AND2
      port map (I0=>XLXN_44,
                I1=>Bin,
                O=>XLXN_46);
   
   XLXI_5 : INV
      port map (I=>XLXN_42,
                O=>XLXN_44);
   
   XLXI_6 : INV
      port map (I=>A,
                O=>XLXN_27);
   
   XLXI_7 : OR2
      port map (I0=>XLXN_45,
                I1=>XLXN_46,
                O=>Bout);
   
end BEHAVIORAL;


