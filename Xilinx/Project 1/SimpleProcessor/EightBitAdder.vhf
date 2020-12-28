--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : EightBitAdder.vhf
-- /___/   /\     Timestamp : 10/07/2020 10:28:17
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Jared/Desktop/SimpleProcessor/EightBitAdder.vhf -w C:/Users/Jared/Desktop/SimpleProcessor/EightBitAdder.sch
--Design Name: EightBitAdder
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

entity FullAdder_MUSER_EightBitAdder is
   port ( A    : in    std_logic; 
          B    : in    std_logic; 
          Cin  : in    std_logic; 
          Cout : out   std_logic; 
          Sum  : out   std_logic);
end FullAdder_MUSER_EightBitAdder;

architecture BEHAVIORAL of FullAdder_MUSER_EightBitAdder is
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

entity EightBitAdder is
   port ( A    : in    std_logic_vector (7 downto 0); 
          B    : in    std_logic_vector (7 downto 0); 
          Cout : out   std_logic; 
          Sum  : out   std_logic_vector (7 downto 0));
end EightBitAdder;

architecture BEHAVIORAL of EightBitAdder is
   attribute BOX_TYPE   : string ;
   signal Ground  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_24 : std_logic;
   signal XLXN_26 : std_logic;
   signal XLXN_28 : std_logic;
   signal XLXN_30 : std_logic;
   component FullAdder_MUSER_EightBitAdder
      port ( A    : in    std_logic; 
             B    : in    std_logic; 
             Cin  : in    std_logic; 
             Sum  : out   std_logic; 
             Cout : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_1 : FullAdder_MUSER_EightBitAdder
      port map (A=>A(0),
                B=>B(0),
                Cin=>Ground,
                Cout=>XLXN_10,
                Sum=>Sum(0));
   
   XLXI_2 : GND
      port map (G=>Ground);
   
   XLXI_3 : FullAdder_MUSER_EightBitAdder
      port map (A=>A(1),
                B=>B(1),
                Cin=>XLXN_10,
                Cout=>XLXN_12,
                Sum=>Sum(1));
   
   XLXI_4 : FullAdder_MUSER_EightBitAdder
      port map (A=>A(2),
                B=>B(2),
                Cin=>XLXN_12,
                Cout=>XLXN_8,
                Sum=>Sum(2));
   
   XLXI_5 : FullAdder_MUSER_EightBitAdder
      port map (A=>A(3),
                B=>B(3),
                Cin=>XLXN_8,
                Cout=>XLXN_30,
                Sum=>Sum(3));
   
   XLXI_16 : FullAdder_MUSER_EightBitAdder
      port map (A=>A(4),
                B=>B(4),
                Cin=>XLXN_30,
                Cout=>XLXN_26,
                Sum=>Sum(4));
   
   XLXI_18 : FullAdder_MUSER_EightBitAdder
      port map (A=>A(5),
                B=>B(5),
                Cin=>XLXN_26,
                Cout=>XLXN_28,
                Sum=>Sum(5));
   
   XLXI_19 : FullAdder_MUSER_EightBitAdder
      port map (A=>A(6),
                B=>B(6),
                Cin=>XLXN_28,
                Cout=>XLXN_24,
                Sum=>Sum(6));
   
   XLXI_20 : FullAdder_MUSER_EightBitAdder
      port map (A=>A(7),
                B=>B(7),
                Cin=>XLXN_24,
                Cout=>Cout,
                Sum=>Sum(7));
   
end BEHAVIORAL;


