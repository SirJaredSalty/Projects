--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Instruction_Decoder.vhf
-- /___/   /\     Timestamp : 10/21/2020 21:20:50
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "C:/Users/Jared/Desktop/School/UMBC/Fall 2020/CMSC 313/Projects/Project 2/GeneralPurposeProcessor_skeleton/Instruction_Decoder.vhf" -w "C:/Users/Jared/Desktop/School/UMBC/Fall 2020/CMSC 313/Projects/Project 2/GeneralPurposeProcessor_skeleton/Instruction_Decoder.sch"
--Design Name: Instruction_Decoder
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M8_1E_HXILINX_Instruction_Decoder -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M8_1E_HXILINX_Instruction_Decoder is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    D4  : in std_logic;
    D5  : in std_logic;
    D6  : in std_logic;
    D7  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic;
    S2  : in std_logic
  );
end M8_1E_HXILINX_Instruction_Decoder;

architecture M8_1E_HXILINX_Instruction_Decoder_V of M8_1E_HXILINX_Instruction_Decoder is
begin
  process (D0, D1, D2, D3, D4, D5, D6, D7, E, S0, S1, S2)
  variable sel : std_logic_vector(2 downto 0);
  begin
    sel := S2&S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "000" => O <= D0;
      when "001" => O <= D1;
      when "010" => O <= D2;
      when "011" => O <= D3;
      when "100" => O <= D4;
      when "101" => O <= D5;
      when "110" => O <= D6;
      when "111" => O <= D7;
      when others => NULL;
      end case;
    end if;
    end process; 
end M8_1E_HXILINX_Instruction_Decoder_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Instruction_Decoder is
   port ( OPCODE    : in    std_logic_vector (3 downto 0); 
          capture_C : out   std_logic; 
          capture_N : out   std_logic; 
          capture_Z : out   std_logic);
end Instruction_Decoder;

architecture BEHAVIORAL of Instruction_Decoder is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal one             : std_logic;
   signal XLXN_4          : std_logic;
   signal zero            : std_logic;
   signal capture_Z_DUMMY : std_logic;
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component M8_1E_HXILINX_Instruction_Decoder
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             D4 : in    std_logic; 
             D5 : in    std_logic; 
             D6 : in    std_logic; 
             D7 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             S2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_29 : label is "XLXI_29_54";
   attribute HU_SET of XLXI_30 : label is "XLXI_30_55";
begin
   capture_Z <= capture_Z_DUMMY;
   XLXI_27 : VCC
      port map (P=>one);
   
   XLXI_28 : GND
      port map (G=>zero);
   
   XLXI_29 : M8_1E_HXILINX_Instruction_Decoder
      port map (D0=>zero,
                D1=>zero,
                D2=>zero,
                D3=>zero,
                D4=>one,
                D5=>one,
                D6=>one,
                D7=>one,
                E=>one,
                S0=>OPCODE(0),
                S1=>OPCODE(1),
                S2=>XLXN_4,
                O=>capture_C);
   
   XLXI_30 : M8_1E_HXILINX_Instruction_Decoder
      port map (D0=>zero,
                D1=>one,
                D2=>one,
                D3=>one,
                D4=>one,
                D5=>one,
                D6=>one,
                D7=>one,
                E=>one,
                S0=>OPCODE(0),
                S1=>OPCODE(1),
                S2=>XLXN_4,
                O=>capture_Z_DUMMY);
   
   XLXI_31 : BUF
      port map (I=>capture_Z_DUMMY,
                O=>capture_N);
   
   XLXI_32 : AND2B1
      port map (I0=>OPCODE(3),
                I1=>OPCODE(2),
                O=>XLXN_4);
   
end BEHAVIORAL;


