--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : adder8.vhf
-- /___/   /\     Timestamp : 10/21/2020 21:20:17
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "C:/Users/Jared/Desktop/School/UMBC/Fall 2020/CMSC 313/Projects/Project 2/GeneralPurposeProcessor_skeleton/adder8.vhf" -w "C:/Users/Jared/Desktop/School/UMBC/Fall 2020/CMSC 313/Projects/Project 2/GeneralPurposeProcessor_skeleton/adder8.sch"
--Design Name: adder8
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

entity FullAdder_MUSER_adder8 is
   port ( A    : in    std_logic; 
          B    : in    std_logic; 
          Cin  : in    std_logic; 
          Cout : out   std_logic; 
          Sum  : out   std_logic);
end FullAdder_MUSER_adder8;

architecture BEHAVIORAL of FullAdder_MUSER_adder8 is
   attribute BOX_TYPE   : string ;
   signal XLXN_22 : std_logic;
   signal XLXN_23 : std_logic;
   signal XLXN_24 : std_logic;
   component XOR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR3 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
begin
   XLXI_1 : XOR3
      port map (I0=>Cin,
                I1=>B,
                I2=>A,
                O=>Sum);
   
   XLXI_2 : AND2
      port map (I0=>B,
                I1=>A,
                O=>XLXN_22);
   
   XLXI_3 : AND2
      port map (I0=>B,
                I1=>Cin,
                O=>XLXN_23);
   
   XLXI_4 : AND2
      port map (I0=>A,
                I1=>Cin,
                O=>XLXN_24);
   
   XLXI_5 : OR3
      port map (I0=>XLXN_24,
                I1=>XLXN_23,
                I2=>XLXN_22,
                O=>Cout);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity adder8 is
   port ( A0   : in    std_logic; 
          A1   : in    std_logic; 
          A2   : in    std_logic; 
          A3   : in    std_logic; 
          A4   : in    std_logic; 
          A5   : in    std_logic; 
          A6   : in    std_logic; 
          A7   : in    std_logic; 
          B0   : in    std_logic; 
          B1   : in    std_logic; 
          B2   : in    std_logic; 
          B3   : in    std_logic; 
          B4   : in    std_logic; 
          B5   : in    std_logic; 
          B6   : in    std_logic; 
          B7   : in    std_logic; 
          Cout : out   std_logic; 
          Sum0 : out   std_logic; 
          Sum1 : out   std_logic; 
          Sum2 : out   std_logic; 
          Sum3 : out   std_logic; 
          Sum4 : out   std_logic; 
          Sum5 : out   std_logic; 
          Sum6 : out   std_logic; 
          Sum7 : out   std_logic);
end adder8;

architecture BEHAVIORAL of adder8 is
   attribute BOX_TYPE   : string ;
   signal XLXN_7   : std_logic;
   signal XLXN_8   : std_logic;
   signal XLXN_9   : std_logic;
   signal XLXN_10  : std_logic;
   signal XLXN_23  : std_logic;
   signal XLXN_27  : std_logic;
   signal XLXN_31  : std_logic;
   signal XLXN_147 : std_logic;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FullAdder_MUSER_adder8
      port ( A    : in    std_logic; 
             B    : in    std_logic; 
             Cin  : in    std_logic; 
             Sum  : out   std_logic; 
             Cout : out   std_logic);
   end component;
   
begin
   XLXI_11 : GND
      port map (G=>XLXN_10);
   
   XLXI_25 : FullAdder_MUSER_adder8
      port map (A=>A7,
                B=>B7,
                Cin=>XLXN_31,
                Cout=>Cout,
                Sum=>Sum7);
   
   XLXI_26 : FullAdder_MUSER_adder8
      port map (A=>A6,
                B=>B6,
                Cin=>XLXN_27,
                Cout=>XLXN_31,
                Sum=>Sum6);
   
   XLXI_27 : FullAdder_MUSER_adder8
      port map (A=>A5,
                B=>B5,
                Cin=>XLXN_23,
                Cout=>XLXN_27,
                Sum=>Sum5);
   
   XLXI_29 : FullAdder_MUSER_adder8
      port map (A=>A4,
                B=>B4,
                Cin=>XLXN_147,
                Cout=>XLXN_23,
                Sum=>Sum4);
   
   XLXI_30 : FullAdder_MUSER_adder8
      port map (A=>A3,
                B=>B3,
                Cin=>XLXN_9,
                Cout=>XLXN_147,
                Sum=>Sum3);
   
   XLXI_32 : FullAdder_MUSER_adder8
      port map (A=>A2,
                B=>B2,
                Cin=>XLXN_8,
                Cout=>XLXN_9,
                Sum=>Sum2);
   
   XLXI_33 : FullAdder_MUSER_adder8
      port map (A=>A1,
                B=>B1,
                Cin=>XLXN_7,
                Cout=>XLXN_8,
                Sum=>Sum1);
   
   XLXI_34 : FullAdder_MUSER_adder8
      port map (A=>A0,
                B=>B0,
                Cin=>XLXN_10,
                Cout=>XLXN_7,
                Sum=>Sum0);
   
end BEHAVIORAL;


