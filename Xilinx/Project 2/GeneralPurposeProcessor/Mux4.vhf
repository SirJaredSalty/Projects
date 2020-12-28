--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Mux4.vhf
-- /___/   /\     Timestamp : 10/21/2020 21:20:23
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "C:/Users/Jared/Desktop/School/UMBC/Fall 2020/CMSC 313/Projects/Project 2/GeneralPurposeProcessor_skeleton/Mux4.vhf" -w "C:/Users/Jared/Desktop/School/UMBC/Fall 2020/CMSC 313/Projects/Project 2/GeneralPurposeProcessor_skeleton/Mux4.sch"
--Design Name: Mux4
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M4_1E_HXILINX_Mux4 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_Mux4 is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic
  );
end M4_1E_HXILINX_Mux4;

architecture M4_1E_HXILINX_Mux4_V of M4_1E_HXILINX_Mux4 is
begin
  process (D0, D1, D2, D3, E, S0, S1)
  variable sel : std_logic_vector(1 downto 0);
  begin
    sel := S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "00" => O <= D0;
      when "01" => O <= D1;
      when "10" => O <= D2;
      when "11" => O <= D3;
      when others => NULL;
      end case;
    end if;
    end process; 
end M4_1E_HXILINX_Mux4_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Mux4 is
   port ( A       : in    std_logic_vector (7 downto 0); 
          B       : in    std_logic_vector (7 downto 0); 
          C       : in    std_logic_vector (7 downto 0); 
          D       : in    std_logic_vector (7 downto 0); 
          OPCODE0 : in    std_logic; 
          OPCODE1 : in    std_logic; 
          MuxOut  : out   std_logic_vector (7 downto 0));
end Mux4;

architecture BEHAVIORAL of Mux4 is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_35  : std_logic;
   signal XLXN_36  : std_logic;
   signal XLXN_37  : std_logic;
   signal XLXN_39  : std_logic;
   signal XLXN_40  : std_logic;
   signal XLXN_41  : std_logic;
   signal XLXN_42  : std_logic;
   signal XLXN_331 : std_logic;
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component M4_1E_HXILINX_Mux4
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_43 : label is "XLXI_43_8";
   attribute HU_SET of XLXI_44 : label is "XLXI_44_12";
   attribute HU_SET of XLXI_45 : label is "XLXI_45_14";
   attribute HU_SET of XLXI_47 : label is "XLXI_47_9";
   attribute HU_SET of XLXI_48 : label is "XLXI_48_15";
   attribute HU_SET of XLXI_49 : label is "XLXI_49_11";
   attribute HU_SET of XLXI_50 : label is "XLXI_50_13";
   attribute HU_SET of XLXI_51 : label is "XLXI_51_10";
begin
   XLXI_10 : VCC
      port map (P=>XLXN_37);
   
   XLXI_11 : VCC
      port map (P=>XLXN_36);
   
   XLXI_12 : VCC
      port map (P=>XLXN_35);
   
   XLXI_13 : VCC
      port map (P=>XLXN_40);
   
   XLXI_14 : VCC
      port map (P=>XLXN_39);
   
   XLXI_15 : VCC
      port map (P=>XLXN_331);
   
   XLXI_16 : VCC
      port map (P=>XLXN_42);
   
   XLXI_17 : VCC
      port map (P=>XLXN_41);
   
   XLXI_43 : M4_1E_HXILINX_Mux4
      port map (D0=>A(0),
                D1=>B(0),
                D2=>C(0),
                D3=>D(0),
                E=>XLXN_35,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(0));
   
   XLXI_44 : M4_1E_HXILINX_Mux4
      port map (D0=>A(3),
                D1=>B(3),
                D2=>C(3),
                D3=>D(3),
                E=>XLXN_40,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(3));
   
   XLXI_45 : M4_1E_HXILINX_Mux4
      port map (D0=>A(4),
                D1=>B(4),
                D2=>C(4),
                D3=>D(4),
                E=>XLXN_39,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(4));
   
   XLXI_47 : M4_1E_HXILINX_Mux4
      port map (D0=>A(2),
                D1=>B(2),
                D2=>C(2),
                D3=>D(2),
                E=>XLXN_37,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(2));
   
   XLXI_48 : M4_1E_HXILINX_Mux4
      port map (D0=>A(5),
                D1=>B(5),
                D2=>C(5),
                D3=>D(5),
                E=>XLXN_331,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(5));
   
   XLXI_49 : M4_1E_HXILINX_Mux4
      port map (D0=>A(6),
                D1=>B(6),
                D2=>C(6),
                D3=>D(6),
                E=>XLXN_41,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(6));
   
   XLXI_50 : M4_1E_HXILINX_Mux4
      port map (D0=>A(7),
                D1=>B(7),
                D2=>C(7),
                D3=>D(7),
                E=>XLXN_42,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(7));
   
   XLXI_51 : M4_1E_HXILINX_Mux4
      port map (D0=>A(1),
                D1=>B(1),
                D2=>C(1),
                D3=>D(1),
                E=>XLXN_36,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(1));
   
end BEHAVIORAL;


