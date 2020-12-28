--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ControlALU.vhf
-- /___/   /\     Timestamp : 10/21/2020 21:20:51
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "C:/Users/Jared/Desktop/School/UMBC/Fall 2020/CMSC 313/Projects/Project 2/GeneralPurposeProcessor_skeleton/ControlALU.vhf" -w "C:/Users/Jared/Desktop/School/UMBC/Fall 2020/CMSC 313/Projects/Project 2/GeneralPurposeProcessor_skeleton/ControlALU.sch"
--Design Name: ControlALU
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

entity ControlALU is
   port ( a      : in    std_logic_vector (3 downto 0); 
          B      : in    std_logic_vector (3 downto 0); 
          C      : in    std_logic; 
          N      : in    std_logic; 
          OPCODE : in    std_logic_vector (3 downto 0); 
          Z      : in    std_logic; 
          O      : out   std_logic_vector (3 downto 0));
end ControlALU;

architecture BEHAVIORAL of ControlALU is
   attribute BusWidth   : string ;
   signal a_plus_one   : std_logic_vector (3 downto 0);
   signal operation_9  : std_logic_vector (3 downto 0);
   signal operation_10 : std_logic_vector (3 downto 0);
   signal operation_11 : std_logic_vector (3 downto 0);
   signal operation_12 : std_logic_vector (3 downto 0);
   signal operation_13 : std_logic_vector (3 downto 0);
   signal operation_14 : std_logic_vector (3 downto 0);
   signal XLXN_5       : std_logic_vector (3 downto 0);
   signal XLXN_35      : std_logic_vector (3 downto 0);
   component Mux16_4
      generic( BusWidth : integer :=  4);
      port ( i0  : in    std_logic_vector (3 downto 0); 
             i1  : in    std_logic_vector (3 downto 0); 
             i2  : in    std_logic_vector (3 downto 0); 
             i3  : in    std_logic_vector (3 downto 0); 
             i4  : in    std_logic_vector (3 downto 0); 
             i5  : in    std_logic_vector (3 downto 0); 
             i6  : in    std_logic_vector (3 downto 0); 
             i7  : in    std_logic_vector (3 downto 0); 
             i8  : in    std_logic_vector (3 downto 0); 
             i9  : in    std_logic_vector (3 downto 0); 
             i10 : in    std_logic_vector (3 downto 0); 
             i11 : in    std_logic_vector (3 downto 0); 
             i12 : in    std_logic_vector (3 downto 0); 
             i13 : in    std_logic_vector (3 downto 0); 
             i14 : in    std_logic_vector (3 downto 0); 
             i15 : in    std_logic_vector (3 downto 0); 
             sel : in    std_logic_vector (3 downto 0); 
             o   : out   std_logic_vector (3 downto 0));
   end component;
   attribute BusWidth of Mux16_4 : component is "4";
   
   component Adder_4
      port ( a     : in    std_logic_vector (3 downto 0); 
             b     : in    std_logic_vector (3 downto 0); 
             sum   : out   std_logic_vector (3 downto 0); 
             carry : out   std_logic);
   end component;
   
   component Mux2_4
      port ( O  : out   std_logic_vector (3 downto 0); 
             D0 : in    std_logic_vector (3 downto 0); 
             D1 : in    std_logic_vector (3 downto 0); 
             S  : in    std_logic);
   end component;
   
begin
   XLXN_5(3 downto 0) <= x"1";
   XLXN_35(3 downto 0) <= x"0";
   XLXI_1 : Mux16_4
      port map (i0(3 downto 0)=>a_plus_one(3 downto 0),
                i1(3 downto 0)=>a_plus_one(3 downto 0),
                i2(3 downto 0)=>a_plus_one(3 downto 0),
                i3(3 downto 0)=>a_plus_one(3 downto 0),
                i4(3 downto 0)=>a_plus_one(3 downto 0),
                i5(3 downto 0)=>a_plus_one(3 downto 0),
                i6(3 downto 0)=>a_plus_one(3 downto 0),
                i7(3 downto 0)=>a_plus_one(3 downto 0),
                i8(3 downto 0)=>B(3 downto 0),
                i9(3 downto 0)=>operation_9(3 downto 0),
                i10(3 downto 0)=>operation_10(3 downto 0),
                i11(3 downto 0)=>operation_11(3 downto 0),
                i12(3 downto 0)=>operation_12(3 downto 0),
                i13(3 downto 0)=>operation_13(3 downto 0),
                i14(3 downto 0)=>operation_14(3 downto 0),
                i15(3 downto 0)=>XLXN_35(3 downto 0),
                sel(3 downto 0)=>OPCODE(3 downto 0),
                o(3 downto 0)=>O(3 downto 0));
   
   XLXI_2 : Adder_4
      port map (a(3 downto 0)=>a(3 downto 0),
                b(3 downto 0)=>XLXN_5(3 downto 0),
                carry=>open,
                sum(3 downto 0)=>a_plus_one(3 downto 0));
   
   XLXI_25 : Mux2_4
      port map (D0(3 downto 0)=>a_plus_one(3 downto 0),
                D1(3 downto 0)=>B(3 downto 0),
                S=>N,
                O(3 downto 0)=>operation_14(3 downto 0));
   
   XLXI_26 : Mux2_4
      port map (D0(3 downto 0)=>B(3 downto 0),
                D1(3 downto 0)=>a_plus_one(3 downto 0),
                S=>N,
                O(3 downto 0)=>operation_13(3 downto 0));
   
   XLXI_27 : Mux2_4
      port map (D0(3 downto 0)=>a_plus_one(3 downto 0),
                D1(3 downto 0)=>B(3 downto 0),
                S=>Z,
                O(3 downto 0)=>operation_12(3 downto 0));
   
   XLXI_28 : Mux2_4
      port map (D0(3 downto 0)=>B(3 downto 0),
                D1(3 downto 0)=>a_plus_one(3 downto 0),
                S=>Z,
                O(3 downto 0)=>operation_11(3 downto 0));
   
   XLXI_30 : Mux2_4
      port map (D0(3 downto 0)=>a_plus_one(3 downto 0),
                D1(3 downto 0)=>B(3 downto 0),
                S=>C,
                O(3 downto 0)=>operation_10(3 downto 0));
   
   XLXI_31 : Mux2_4
      port map (D0(3 downto 0)=>B(3 downto 0),
                D1(3 downto 0)=>a_plus_one(3 downto 0),
                S=>C,
                O(3 downto 0)=>operation_9(3 downto 0));
   
end BEHAVIORAL;


