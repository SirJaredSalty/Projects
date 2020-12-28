--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : EightBitMultiplier.vhf
-- /___/   /\     Timestamp : 10/07/2020 10:27:57
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Jared/Desktop/SimpleProcessor/EightBitMultiplier.vhf -w C:/Users/Jared/Desktop/SimpleProcessor/EightBitMultiplier.sch
--Design Name: EightBitMultiplier
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

entity FullAdder_MUSER_EightBitMultiplier is
   port ( A    : in    std_logic; 
          B    : in    std_logic; 
          Cin  : in    std_logic; 
          Cout : out   std_logic; 
          Sum  : out   std_logic);
end FullAdder_MUSER_EightBitMultiplier;

architecture BEHAVIORAL of FullAdder_MUSER_EightBitMultiplier is
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

entity adder8_MUSER_EightBitMultiplier is
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
end adder8_MUSER_EightBitMultiplier;

architecture BEHAVIORAL of adder8_MUSER_EightBitMultiplier is
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
   
   component FullAdder_MUSER_EightBitMultiplier
      port ( A    : in    std_logic; 
             B    : in    std_logic; 
             Cin  : in    std_logic; 
             Sum  : out   std_logic; 
             Cout : out   std_logic);
   end component;
   
begin
   XLXI_11 : GND
      port map (G=>XLXN_10);
   
   XLXI_25 : FullAdder_MUSER_EightBitMultiplier
      port map (A=>A7,
                B=>B7,
                Cin=>XLXN_31,
                Cout=>Cout,
                Sum=>Sum7);
   
   XLXI_26 : FullAdder_MUSER_EightBitMultiplier
      port map (A=>A6,
                B=>B6,
                Cin=>XLXN_27,
                Cout=>XLXN_31,
                Sum=>Sum6);
   
   XLXI_27 : FullAdder_MUSER_EightBitMultiplier
      port map (A=>A5,
                B=>B5,
                Cin=>XLXN_23,
                Cout=>XLXN_27,
                Sum=>Sum5);
   
   XLXI_29 : FullAdder_MUSER_EightBitMultiplier
      port map (A=>A4,
                B=>B4,
                Cin=>XLXN_147,
                Cout=>XLXN_23,
                Sum=>Sum4);
   
   XLXI_30 : FullAdder_MUSER_EightBitMultiplier
      port map (A=>A3,
                B=>B3,
                Cin=>XLXN_9,
                Cout=>XLXN_147,
                Sum=>Sum3);
   
   XLXI_32 : FullAdder_MUSER_EightBitMultiplier
      port map (A=>A2,
                B=>B2,
                Cin=>XLXN_8,
                Cout=>XLXN_9,
                Sum=>Sum2);
   
   XLXI_33 : FullAdder_MUSER_EightBitMultiplier
      port map (A=>A1,
                B=>B1,
                Cin=>XLXN_7,
                Cout=>XLXN_8,
                Sum=>Sum1);
   
   XLXI_34 : FullAdder_MUSER_EightBitMultiplier
      port map (A=>A0,
                B=>B0,
                Cin=>XLXN_10,
                Cout=>XLXN_7,
                Sum=>Sum0);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity EightBitMultiplier is
   port ( A       : in    std_logic_vector (7 downto 0); 
          B       : in    std_logic_vector (7 downto 0); 
          Cout    : out   std_logic; 
          Product : out   std_logic_vector (7 downto 0));
end EightBitMultiplier;

architecture BEHAVIORAL of EightBitMultiplier is
   attribute BOX_TYPE   : string ;
   signal A0B1      : std_logic;
   signal A0B2      : std_logic;
   signal A0B3      : std_logic;
   signal A0B4      : std_logic;
   signal A0B5      : std_logic;
   signal A0B6      : std_logic;
   signal A0B7      : std_logic;
   signal A1B0      : std_logic;
   signal A1B1      : std_logic;
   signal A1B2      : std_logic;
   signal A1B3      : std_logic;
   signal A1B4      : std_logic;
   signal A1B5      : std_logic;
   signal A1B6      : std_logic;
   signal A1B7      : std_logic;
   signal A2B0      : std_logic;
   signal A2B1      : std_logic;
   signal A2B2      : std_logic;
   signal A2B3      : std_logic;
   signal A2B4      : std_logic;
   signal A2B5      : std_logic;
   signal A2B6      : std_logic;
   signal A2B7      : std_logic;
   signal A3B0      : std_logic;
   signal A3B1      : std_logic;
   signal A3B2      : std_logic;
   signal A3B3      : std_logic;
   signal A3B4      : std_logic;
   signal A3B5      : std_logic;
   signal A3B6      : std_logic;
   signal A3B7      : std_logic;
   signal A4B0      : std_logic;
   signal A4B1      : std_logic;
   signal A4B2      : std_logic;
   signal A4B3      : std_logic;
   signal A4B4      : std_logic;
   signal A4B5      : std_logic;
   signal A4B6      : std_logic;
   signal A4B7      : std_logic;
   signal A5B0      : std_logic;
   signal A5B1      : std_logic;
   signal A5B2      : std_logic;
   signal A5B3      : std_logic;
   signal A5B4      : std_logic;
   signal A5B5      : std_logic;
   signal A5B6      : std_logic;
   signal A5B7      : std_logic;
   signal A6B0      : std_logic;
   signal A6B1      : std_logic;
   signal A6B2      : std_logic;
   signal A6B3      : std_logic;
   signal A6B4      : std_logic;
   signal A6B5      : std_logic;
   signal A6B6      : std_logic;
   signal A6B7      : std_logic;
   signal A7B0      : std_logic;
   signal A7B1      : std_logic;
   signal A7B2      : std_logic;
   signal A7B3      : std_logic;
   signal A7B4      : std_logic;
   signal A7B5      : std_logic;
   signal A7B6      : std_logic;
   signal A7B7      : std_logic;
   signal XLXN_638  : std_logic;
   signal XLXN_1408 : std_logic;
   signal XLXN_1409 : std_logic;
   signal XLXN_1410 : std_logic;
   signal XLXN_1411 : std_logic;
   signal XLXN_1412 : std_logic;
   signal XLXN_1413 : std_logic;
   signal XLXN_1414 : std_logic;
   signal XLXN_1415 : std_logic;
   signal XLXN_1416 : std_logic;
   signal XLXN_1514 : std_logic;
   signal XLXN_1515 : std_logic;
   signal XLXN_1516 : std_logic;
   signal XLXN_1517 : std_logic;
   signal XLXN_1518 : std_logic;
   signal XLXN_1519 : std_logic;
   signal XLXN_1520 : std_logic;
   signal XLXN_1521 : std_logic;
   signal XLXN_1522 : std_logic;
   signal XLXN_1523 : std_logic;
   signal XLXN_1524 : std_logic;
   signal XLXN_1525 : std_logic;
   signal XLXN_1526 : std_logic;
   signal XLXN_1527 : std_logic;
   signal XLXN_1528 : std_logic;
   signal XLXN_1545 : std_logic;
   signal XLXN_1546 : std_logic;
   signal XLXN_1547 : std_logic;
   signal XLXN_1548 : std_logic;
   signal XLXN_1549 : std_logic;
   signal XLXN_1550 : std_logic;
   signal XLXN_1551 : std_logic;
   signal XLXN_1552 : std_logic;
   signal XLXN_1570 : std_logic;
   signal XLXN_1571 : std_logic;
   signal XLXN_1572 : std_logic;
   signal XLXN_1573 : std_logic;
   signal XLXN_1574 : std_logic;
   signal XLXN_1575 : std_logic;
   signal XLXN_1576 : std_logic;
   signal XLXN_1577 : std_logic;
   signal XLXN_1595 : std_logic;
   signal XLXN_1596 : std_logic;
   signal XLXN_1597 : std_logic;
   signal XLXN_1598 : std_logic;
   signal XLXN_1599 : std_logic;
   signal XLXN_1600 : std_logic;
   signal XLXN_1601 : std_logic;
   signal XLXN_1602 : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component adder8_MUSER_EightBitMultiplier
      port ( A0   : in    std_logic; 
             B0   : in    std_logic; 
             A1   : in    std_logic; 
             B6   : in    std_logic; 
             B7   : in    std_logic; 
             B5   : in    std_logic; 
             B4   : in    std_logic; 
             B3   : in    std_logic; 
             B2   : in    std_logic; 
             B1   : in    std_logic; 
             A2   : in    std_logic; 
             A3   : in    std_logic; 
             A4   : in    std_logic; 
             A5   : in    std_logic; 
             A6   : in    std_logic; 
             A7   : in    std_logic; 
             Sum6 : out   std_logic; 
             Cout : out   std_logic; 
             Sum7 : out   std_logic; 
             Sum5 : out   std_logic; 
             Sum4 : out   std_logic; 
             Sum3 : out   std_logic; 
             Sum2 : out   std_logic; 
             Sum0 : out   std_logic; 
             Sum1 : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_21 : AND2
      port map (I0=>B(0),
                I1=>A(0),
                O=>Product(0));
   
   XLXI_22 : AND2
      port map (I0=>B(0),
                I1=>A(1),
                O=>A1B0);
   
   XLXI_23 : AND2
      port map (I0=>B(0),
                I1=>A(2),
                O=>A2B0);
   
   XLXI_24 : AND2
      port map (I0=>B(0),
                I1=>A(3),
                O=>A3B0);
   
   XLXI_26 : AND2
      port map (I0=>B(0),
                I1=>A(4),
                O=>A4B0);
   
   XLXI_27 : AND2
      port map (I0=>B(0),
                I1=>A(5),
                O=>A5B0);
   
   XLXI_28 : AND2
      port map (I0=>B(0),
                I1=>A(6),
                O=>A6B0);
   
   XLXI_29 : AND2
      port map (I0=>B(0),
                I1=>A(7),
                O=>A7B0);
   
   XLXI_39 : AND2
      port map (I0=>B(1),
                I1=>A(0),
                O=>A0B1);
   
   XLXI_40 : AND2
      port map (I0=>B(1),
                I1=>A(1),
                O=>A1B1);
   
   XLXI_41 : AND2
      port map (I0=>B(1),
                I1=>A(2),
                O=>A2B1);
   
   XLXI_42 : AND2
      port map (I0=>B(1),
                I1=>A(3),
                O=>A3B1);
   
   XLXI_43 : AND2
      port map (I0=>B(1),
                I1=>A(4),
                O=>A4B1);
   
   XLXI_44 : AND2
      port map (I0=>B(1),
                I1=>A(5),
                O=>A5B1);
   
   XLXI_45 : AND2
      port map (I0=>B(1),
                I1=>A(6),
                O=>A6B1);
   
   XLXI_46 : AND2
      port map (I0=>B(1),
                I1=>A(7),
                O=>A7B1);
   
   XLXI_63 : AND2
      port map (I0=>B(2),
                I1=>A(0),
                O=>A0B2);
   
   XLXI_64 : AND2
      port map (I0=>B(2),
                I1=>A(1),
                O=>A1B2);
   
   XLXI_65 : AND2
      port map (I0=>B(2),
                I1=>A(2),
                O=>A2B2);
   
   XLXI_66 : AND2
      port map (I0=>B(2),
                I1=>A(3),
                O=>A3B2);
   
   XLXI_67 : AND2
      port map (I0=>B(2),
                I1=>A(4),
                O=>A4B2);
   
   XLXI_68 : AND2
      port map (I0=>B(2),
                I1=>A(5),
                O=>A5B2);
   
   XLXI_69 : AND2
      port map (I0=>B(2),
                I1=>A(6),
                O=>A6B2);
   
   XLXI_70 : AND2
      port map (I0=>B(2),
                I1=>A(7),
                O=>A7B2);
   
   XLXI_151 : AND2
      port map (I0=>B(3),
                I1=>A(0),
                O=>A0B3);
   
   XLXI_152 : AND2
      port map (I0=>B(3),
                I1=>A(1),
                O=>A1B3);
   
   XLXI_153 : AND2
      port map (I0=>B(3),
                I1=>A(2),
                O=>A2B3);
   
   XLXI_154 : AND2
      port map (I0=>B(3),
                I1=>A(3),
                O=>A3B3);
   
   XLXI_155 : AND2
      port map (I0=>B(3),
                I1=>A(4),
                O=>A4B3);
   
   XLXI_156 : AND2
      port map (I0=>B(3),
                I1=>A(5),
                O=>A5B3);
   
   XLXI_157 : AND2
      port map (I0=>B(3),
                I1=>A(6),
                O=>A6B3);
   
   XLXI_158 : AND2
      port map (I0=>B(3),
                I1=>A(7),
                O=>A7B3);
   
   XLXI_323 : AND2
      port map (I0=>B(4),
                I1=>A(7),
                O=>A7B4);
   
   XLXI_324 : AND2
      port map (I0=>B(4),
                I1=>A(6),
                O=>A6B4);
   
   XLXI_325 : AND2
      port map (I0=>B(4),
                I1=>A(5),
                O=>A5B4);
   
   XLXI_326 : AND2
      port map (I0=>B(4),
                I1=>A(4),
                O=>A4B4);
   
   XLXI_327 : AND2
      port map (I0=>B(4),
                I1=>A(3),
                O=>A3B4);
   
   XLXI_328 : AND2
      port map (I0=>B(4),
                I1=>A(2),
                O=>A2B4);
   
   XLXI_329 : AND2
      port map (I0=>B(4),
                I1=>A(1),
                O=>A1B4);
   
   XLXI_330 : AND2
      port map (I0=>B(4),
                I1=>A(0),
                O=>A0B4);
   
   XLXI_331 : AND2
      port map (I0=>B(5),
                I1=>A(7),
                O=>A7B5);
   
   XLXI_332 : AND2
      port map (I0=>B(5),
                I1=>A(6),
                O=>A6B5);
   
   XLXI_333 : AND2
      port map (I0=>B(5),
                I1=>A(5),
                O=>A5B5);
   
   XLXI_334 : AND2
      port map (I0=>B(5),
                I1=>A(4),
                O=>A4B5);
   
   XLXI_335 : AND2
      port map (I0=>B(5),
                I1=>A(3),
                O=>A3B5);
   
   XLXI_336 : AND2
      port map (I0=>B(5),
                I1=>A(2),
                O=>A2B5);
   
   XLXI_337 : AND2
      port map (I0=>B(5),
                I1=>A(1),
                O=>A1B5);
   
   XLXI_338 : AND2
      port map (I0=>B(5),
                I1=>A(0),
                O=>A0B5);
   
   XLXI_363 : AND2
      port map (I0=>B(6),
                I1=>A(7),
                O=>A7B6);
   
   XLXI_364 : AND2
      port map (I0=>B(6),
                I1=>A(6),
                O=>A6B6);
   
   XLXI_365 : AND2
      port map (I0=>B(6),
                I1=>A(5),
                O=>A5B6);
   
   XLXI_366 : AND2
      port map (I0=>B(6),
                I1=>A(4),
                O=>A4B6);
   
   XLXI_367 : AND2
      port map (I0=>B(6),
                I1=>A(3),
                O=>A3B6);
   
   XLXI_368 : AND2
      port map (I0=>B(6),
                I1=>A(2),
                O=>A2B6);
   
   XLXI_369 : AND2
      port map (I0=>B(6),
                I1=>A(1),
                O=>A1B6);
   
   XLXI_370 : AND2
      port map (I0=>B(6),
                I1=>A(0),
                O=>A0B6);
   
   XLXI_427 : AND2
      port map (I0=>B(7),
                I1=>A(7),
                O=>A7B7);
   
   XLXI_428 : AND2
      port map (I0=>B(7),
                I1=>A(6),
                O=>A6B7);
   
   XLXI_429 : AND2
      port map (I0=>B(7),
                I1=>A(5),
                O=>A5B7);
   
   XLXI_430 : AND2
      port map (I0=>B(7),
                I1=>A(4),
                O=>A4B7);
   
   XLXI_431 : AND2
      port map (I0=>B(7),
                I1=>A(3),
                O=>A3B7);
   
   XLXI_432 : AND2
      port map (I0=>B(7),
                I1=>A(2),
                O=>A2B7);
   
   XLXI_433 : AND2
      port map (I0=>B(7),
                I1=>A(1),
                O=>A1B7);
   
   XLXI_434 : AND2
      port map (I0=>B(7),
                I1=>A(0),
                O=>A0B7);
   
   XLXI_518 : adder8_MUSER_EightBitMultiplier
      port map (A0=>A0B2,
                A1=>A1B2,
                A2=>A2B2,
                A3=>A3B2,
                A4=>A4B2,
                A5=>A5B2,
                A6=>A6B2,
                A7=>A7B2,
                B0=>XLXN_1408,
                B1=>XLXN_1409,
                B2=>XLXN_1410,
                B3=>XLXN_1411,
                B4=>XLXN_1412,
                B5=>XLXN_1413,
                B6=>XLXN_1414,
                B7=>XLXN_1415,
                Cout=>XLXN_1514,
                Sum0=>Product(2),
                Sum1=>XLXN_1520,
                Sum2=>XLXN_1519,
                Sum3=>XLXN_1518,
                Sum4=>XLXN_1517,
                Sum5=>XLXN_1516,
                Sum6=>XLXN_638,
                Sum7=>XLXN_1515);
   
   XLXI_519 : adder8_MUSER_EightBitMultiplier
      port map (A0=>A0B3,
                A1=>A1B3,
                A2=>A2B3,
                A3=>A3B3,
                A4=>A4B3,
                A5=>A5B3,
                A6=>A6B3,
                A7=>A7B3,
                B0=>XLXN_1520,
                B1=>XLXN_1519,
                B2=>XLXN_1518,
                B3=>XLXN_1517,
                B4=>XLXN_1516,
                B5=>XLXN_638,
                B6=>XLXN_1515,
                B7=>XLXN_1514,
                Cout=>XLXN_1521,
                Sum0=>Product(3),
                Sum1=>XLXN_1528,
                Sum2=>XLXN_1527,
                Sum3=>XLXN_1526,
                Sum4=>XLXN_1525,
                Sum5=>XLXN_1524,
                Sum6=>XLXN_1523,
                Sum7=>XLXN_1522);
   
   XLXI_520 : adder8_MUSER_EightBitMultiplier
      port map (A0=>A0B4,
                A1=>A1B4,
                A2=>A2B4,
                A3=>A3B4,
                A4=>A4B4,
                A5=>A5B4,
                A6=>A6B4,
                A7=>A7B4,
                B0=>XLXN_1528,
                B1=>XLXN_1527,
                B2=>XLXN_1526,
                B3=>XLXN_1525,
                B4=>XLXN_1524,
                B5=>XLXN_1523,
                B6=>XLXN_1522,
                B7=>XLXN_1521,
                Cout=>XLXN_1545,
                Sum0=>Product(4),
                Sum1=>XLXN_1552,
                Sum2=>XLXN_1551,
                Sum3=>XLXN_1550,
                Sum4=>XLXN_1549,
                Sum5=>XLXN_1548,
                Sum6=>XLXN_1547,
                Sum7=>XLXN_1546);
   
   XLXI_521 : adder8_MUSER_EightBitMultiplier
      port map (A0=>A0B5,
                A1=>A1B5,
                A2=>A2B5,
                A3=>A3B5,
                A4=>A4B5,
                A5=>A5B5,
                A6=>A6B5,
                A7=>A7B5,
                B0=>XLXN_1552,
                B1=>XLXN_1551,
                B2=>XLXN_1550,
                B3=>XLXN_1549,
                B4=>XLXN_1548,
                B5=>XLXN_1547,
                B6=>XLXN_1546,
                B7=>XLXN_1545,
                Cout=>XLXN_1570,
                Sum0=>Product(5),
                Sum1=>XLXN_1577,
                Sum2=>XLXN_1576,
                Sum3=>XLXN_1575,
                Sum4=>XLXN_1574,
                Sum5=>XLXN_1573,
                Sum6=>XLXN_1572,
                Sum7=>XLXN_1571);
   
   XLXI_522 : adder8_MUSER_EightBitMultiplier
      port map (A0=>A0B6,
                A1=>A1B6,
                A2=>A2B6,
                A3=>A3B6,
                A4=>A4B6,
                A5=>A5B6,
                A6=>A6B6,
                A7=>A7B6,
                B0=>XLXN_1577,
                B1=>XLXN_1576,
                B2=>XLXN_1575,
                B3=>XLXN_1574,
                B4=>XLXN_1573,
                B5=>XLXN_1572,
                B6=>XLXN_1571,
                B7=>XLXN_1570,
                Cout=>XLXN_1595,
                Sum0=>Product(6),
                Sum1=>XLXN_1602,
                Sum2=>XLXN_1601,
                Sum3=>XLXN_1600,
                Sum4=>XLXN_1599,
                Sum5=>XLXN_1598,
                Sum6=>XLXN_1597,
                Sum7=>XLXN_1596);
   
   XLXI_523 : adder8_MUSER_EightBitMultiplier
      port map (A0=>A0B7,
                A1=>A1B7,
                A2=>A2B7,
                A3=>A3B7,
                A4=>A4B7,
                A5=>A5B7,
                A6=>A6B7,
                A7=>A7B7,
                B0=>XLXN_1602,
                B1=>XLXN_1601,
                B2=>XLXN_1600,
                B3=>XLXN_1599,
                B4=>XLXN_1598,
                B5=>XLXN_1597,
                B6=>XLXN_1596,
                B7=>XLXN_1595,
                Cout=>Cout,
                Sum0=>Product(7),
                Sum1=>open,
                Sum2=>open,
                Sum3=>open,
                Sum4=>open,
                Sum5=>open,
                Sum6=>open,
                Sum7=>open);
   
   XLXI_549 : adder8_MUSER_EightBitMultiplier
      port map (A0=>A1B0,
                A1=>A2B0,
                A2=>A3B0,
                A3=>A4B0,
                A4=>A5B0,
                A5=>A6B0,
                A6=>A7B0,
                A7=>A7B1,
                B0=>A0B1,
                B1=>A1B1,
                B2=>A2B1,
                B3=>A3B1,
                B4=>A4B1,
                B5=>A5B1,
                B6=>A6B1,
                B7=>XLXN_1416,
                Cout=>XLXN_1415,
                Sum0=>Product(1),
                Sum1=>XLXN_1408,
                Sum2=>XLXN_1409,
                Sum3=>XLXN_1410,
                Sum4=>XLXN_1411,
                Sum5=>XLXN_1412,
                Sum6=>XLXN_1413,
                Sum7=>XLXN_1414);
   
   XLXI_552 : GND
      port map (G=>XLXN_1416);
   
end BEHAVIORAL;


