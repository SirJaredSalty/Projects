--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : RegFile.vhf
-- /___/   /\     Timestamp : 10/22/2020 11:03:26
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "C:/Users/Jared/Desktop/School/UMBC/Fall 2020/CMSC 313/Projects/Project 2/GeneralPurposeProcessor_skeleton/RegFile.vhf" -w "C:/Users/Jared/Desktop/School/UMBC/Fall 2020/CMSC 313/Projects/Project 2/GeneralPurposeProcessor_skeleton/RegFile.sch"
--Design Name: RegFile
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M4_1E_HXILINX_RegFile -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_RegFile is
  
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
end M4_1E_HXILINX_RegFile;

architecture M4_1E_HXILINX_RegFile_V of M4_1E_HXILINX_RegFile is
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
end M4_1E_HXILINX_RegFile_V;
----- CELL D2_4E_HXILINX_RegFile -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D2_4E_HXILINX_RegFile is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    E   : in std_logic
  );
end D2_4E_HXILINX_RegFile;

architecture D2_4E_HXILINX_RegFile_V of D2_4E_HXILINX_RegFile is
  signal d_tmp : std_logic_vector(3 downto 0);
begin
  process (A0, A1, E)
  variable sel   : std_logic_vector(1 downto 0);
  begin
    sel := A1&A0;
    if( E = '0') then
    d_tmp <= "0000";
    else
      case sel is
      when "00" => d_tmp <= "0001";
      when "01" => d_tmp <= "0010";
      when "10" => d_tmp <= "0100";
      when "11" => d_tmp <= "1000";
      when others => NULL;
      end case;
    end if;
  end process; 

    D3 <= d_tmp(3);
    D2 <= d_tmp(2);
    D1 <= d_tmp(1);
    D0 <= d_tmp(0);

end D2_4E_HXILINX_RegFile_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Mux4_MUSER_RegFile is
   port ( A       : in    std_logic_vector (7 downto 0); 
          B       : in    std_logic_vector (7 downto 0); 
          C       : in    std_logic_vector (7 downto 0); 
          D       : in    std_logic_vector (7 downto 0); 
          OPCODE0 : in    std_logic; 
          OPCODE1 : in    std_logic; 
          MuxOut  : out   std_logic_vector (7 downto 0));
end Mux4_MUSER_RegFile;

architecture BEHAVIORAL of Mux4_MUSER_RegFile is
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
   
   component M4_1E_HXILINX_RegFile
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_43 : label is "XLXI_43_0";
   attribute HU_SET of XLXI_44 : label is "XLXI_44_4";
   attribute HU_SET of XLXI_45 : label is "XLXI_45_6";
   attribute HU_SET of XLXI_47 : label is "XLXI_47_1";
   attribute HU_SET of XLXI_48 : label is "XLXI_48_7";
   attribute HU_SET of XLXI_49 : label is "XLXI_49_3";
   attribute HU_SET of XLXI_50 : label is "XLXI_50_5";
   attribute HU_SET of XLXI_51 : label is "XLXI_51_2";
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
   
   XLXI_43 : M4_1E_HXILINX_RegFile
      port map (D0=>A(0),
                D1=>B(0),
                D2=>C(0),
                D3=>D(0),
                E=>XLXN_35,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(0));
   
   XLXI_44 : M4_1E_HXILINX_RegFile
      port map (D0=>A(3),
                D1=>B(3),
                D2=>C(3),
                D3=>D(3),
                E=>XLXN_40,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(3));
   
   XLXI_45 : M4_1E_HXILINX_RegFile
      port map (D0=>A(4),
                D1=>B(4),
                D2=>C(4),
                D3=>D(4),
                E=>XLXN_39,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(4));
   
   XLXI_47 : M4_1E_HXILINX_RegFile
      port map (D0=>A(2),
                D1=>B(2),
                D2=>C(2),
                D3=>D(2),
                E=>XLXN_37,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(2));
   
   XLXI_48 : M4_1E_HXILINX_RegFile
      port map (D0=>A(5),
                D1=>B(5),
                D2=>C(5),
                D3=>D(5),
                E=>XLXN_331,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(5));
   
   XLXI_49 : M4_1E_HXILINX_RegFile
      port map (D0=>A(6),
                D1=>B(6),
                D2=>C(6),
                D3=>D(6),
                E=>XLXN_41,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(6));
   
   XLXI_50 : M4_1E_HXILINX_RegFile
      port map (D0=>A(7),
                D1=>B(7),
                D2=>C(7),
                D3=>D(7),
                E=>XLXN_42,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(7));
   
   XLXI_51 : M4_1E_HXILINX_RegFile
      port map (D0=>A(1),
                D1=>B(1),
                D2=>C(1),
                D3=>D(1),
                E=>XLXN_36,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(1));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bit_8_register_MUSER_RegFile is
   port ( C : in    std_logic; 
          D : in    std_logic_vector (7 downto 0); 
          E : in    std_logic; 
          O : out   std_logic_vector (7 downto 0));
end bit_8_register_MUSER_RegFile;

architecture BEHAVIORAL of bit_8_register_MUSER_RegFile is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity RegFile is
   port ( clk      : in    std_logic; 
          R_addr_a : in    std_logic_vector (1 downto 0); 
          R_addr_b : in    std_logic_vector (1 downto 0); 
          W_addr   : in    std_logic_vector (1 downto 0); 
          W_data   : in    std_logic_vector (7 downto 0); 
          W_enable : in    std_logic; 
          R_data_a : out   std_logic_vector (7 downto 0); 
          R_data_b : out   std_logic_vector (7 downto 0));
end RegFile;

architecture BEHAVIORAL of RegFile is
   attribute HU_SET     : string ;
   signal E0       : std_logic;
   signal E1       : std_logic;
   signal E2       : std_logic;
   signal E3       : std_logic;
   signal XLXN_89  : std_logic_vector (7 downto 0);
   signal XLXN_90  : std_logic_vector (7 downto 0);
   signal XLXN_92  : std_logic_vector (7 downto 0);
   signal XLXN_94  : std_logic_vector (7 downto 0);
   component bit_8_register_MUSER_RegFile
      port ( D : in    std_logic_vector (7 downto 0); 
             C : in    std_logic; 
             E : in    std_logic; 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   component D2_4E_HXILINX_RegFile
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
   end component;
   
   component Mux4_MUSER_RegFile
      port ( OPCODE0 : in    std_logic; 
             OPCODE1 : in    std_logic; 
             B       : in    std_logic_vector (7 downto 0); 
             A       : in    std_logic_vector (7 downto 0); 
             C       : in    std_logic_vector (7 downto 0); 
             D       : in    std_logic_vector (7 downto 0); 
             MuxOut  : out   std_logic_vector (7 downto 0));
   end component;
   
   attribute HU_SET of XLXI_57 : label is "XLXI_57_8";
begin
   R0 : bit_8_register_MUSER_RegFile
      port map (C=>clk,
                D(7 downto 0)=>W_data(7 downto 0),
                E=>E0,
                O(7 downto 0)=>XLXN_92(7 downto 0));
   
   R1 : bit_8_register_MUSER_RegFile
      port map (C=>clk,
                D(7 downto 0)=>W_data(7 downto 0),
                E=>E1,
                O(7 downto 0)=>XLXN_94(7 downto 0));
   
   R2 : bit_8_register_MUSER_RegFile
      port map (C=>clk,
                D(7 downto 0)=>W_data(7 downto 0),
                E=>E2,
                O(7 downto 0)=>XLXN_90(7 downto 0));
   
   R3 : bit_8_register_MUSER_RegFile
      port map (C=>clk,
                D(7 downto 0)=>W_data(7 downto 0),
                E=>E3,
                O(7 downto 0)=>XLXN_89(7 downto 0));
   
   XLXI_57 : D2_4E_HXILINX_RegFile
      port map (A0=>W_addr(0),
                A1=>W_addr(1),
                E=>W_enable,
                D0=>E0,
                D1=>E1,
                D2=>E2,
                D3=>E3);
   
   XLXI_79 : Mux4_MUSER_RegFile
      port map (A(7 downto 0)=>XLXN_92(7 downto 0),
                B(7 downto 0)=>XLXN_94(7 downto 0),
                C(7 downto 0)=>XLXN_90(7 downto 0),
                D(7 downto 0)=>XLXN_89(7 downto 0),
                OPCODE0=>R_addr_a(0),
                OPCODE1=>R_addr_a(1),
                MuxOut(7 downto 0)=>R_data_a(7 downto 0));
   
   XLXI_80 : Mux4_MUSER_RegFile
      port map (A(7 downto 0)=>XLXN_92(7 downto 0),
                B(7 downto 0)=>XLXN_94(7 downto 0),
                C(7 downto 0)=>XLXN_90(7 downto 0),
                D(7 downto 0)=>XLXN_89(7 downto 0),
                OPCODE0=>R_addr_b(0),
                OPCODE1=>R_addr_b(1),
                MuxOut(7 downto 0)=>R_data_b(7 downto 0));
   
end BEHAVIORAL;


