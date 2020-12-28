--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : GPP.vhf
-- /___/   /\     Timestamp : 10/22/2020 17:53:34
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "C:/Users/Jared/Desktop/School/UMBC/Fall 2020/CMSC 313/Projects/Project 2/GeneralPurposeProcessor_skeleton/GPP.vhf" -w "C:/Users/Jared/Desktop/School/UMBC/Fall 2020/CMSC 313/Projects/Project 2/GeneralPurposeProcessor_skeleton/GPP.sch"
--Design Name: GPP
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M8_1E_HXILINX_GPP -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M8_1E_HXILINX_GPP is
  
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
end M8_1E_HXILINX_GPP;

architecture M8_1E_HXILINX_GPP_V of M8_1E_HXILINX_GPP is
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
end M8_1E_HXILINX_GPP_V;
----- CELL M4_1E_HXILINX_GPP -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_GPP is
  
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
end M4_1E_HXILINX_GPP;

architecture M4_1E_HXILINX_GPP_V of M4_1E_HXILINX_GPP is
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
end M4_1E_HXILINX_GPP_V;
----- CELL D2_4E_HXILINX_GPP -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D2_4E_HXILINX_GPP is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    E   : in std_logic
  );
end D2_4E_HXILINX_GPP;

architecture D2_4E_HXILINX_GPP_V of D2_4E_HXILINX_GPP is
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

end D2_4E_HXILINX_GPP_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FullAdder_MUSER_GPP is
   port ( A    : in    std_logic; 
          B    : in    std_logic; 
          Cin  : in    std_logic; 
          Cout : out   std_logic; 
          Sum  : out   std_logic);
end FullAdder_MUSER_GPP;

architecture BEHAVIORAL of FullAdder_MUSER_GPP is
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

entity EightBitAdder_MUSER_GPP is
   port ( A    : in    std_logic_vector (7 downto 0); 
          B    : in    std_logic_vector (7 downto 0); 
          Cout : out   std_logic; 
          Sum  : out   std_logic_vector (7 downto 0));
end EightBitAdder_MUSER_GPP;

architecture BEHAVIORAL of EightBitAdder_MUSER_GPP is
   attribute BOX_TYPE   : string ;
   signal Ground  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_24 : std_logic;
   signal XLXN_26 : std_logic;
   signal XLXN_28 : std_logic;
   signal XLXN_30 : std_logic;
   component FullAdder_MUSER_GPP
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
   XLXI_1 : FullAdder_MUSER_GPP
      port map (A=>A(0),
                B=>B(0),
                Cin=>Ground,
                Cout=>XLXN_10,
                Sum=>Sum(0));
   
   XLXI_2 : GND
      port map (G=>Ground);
   
   XLXI_3 : FullAdder_MUSER_GPP
      port map (A=>A(1),
                B=>B(1),
                Cin=>XLXN_10,
                Cout=>XLXN_12,
                Sum=>Sum(1));
   
   XLXI_4 : FullAdder_MUSER_GPP
      port map (A=>A(2),
                B=>B(2),
                Cin=>XLXN_12,
                Cout=>XLXN_8,
                Sum=>Sum(2));
   
   XLXI_5 : FullAdder_MUSER_GPP
      port map (A=>A(3),
                B=>B(3),
                Cin=>XLXN_8,
                Cout=>XLXN_30,
                Sum=>Sum(3));
   
   XLXI_16 : FullAdder_MUSER_GPP
      port map (A=>A(4),
                B=>B(4),
                Cin=>XLXN_30,
                Cout=>XLXN_26,
                Sum=>Sum(4));
   
   XLXI_18 : FullAdder_MUSER_GPP
      port map (A=>A(5),
                B=>B(5),
                Cin=>XLXN_26,
                Cout=>XLXN_28,
                Sum=>Sum(5));
   
   XLXI_19 : FullAdder_MUSER_GPP
      port map (A=>A(6),
                B=>B(6),
                Cin=>XLXN_28,
                Cout=>XLXN_24,
                Sum=>Sum(6));
   
   XLXI_20 : FullAdder_MUSER_GPP
      port map (A=>A(7),
                B=>B(7),
                Cin=>XLXN_24,
                Cout=>Cout,
                Sum=>Sum(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity EightBitMux_MUSER_GPP is
   port ( A      : in    std_logic_vector (7 downto 0); 
          B      : in    std_logic_vector (7 downto 0); 
          C      : in    std_logic_vector (7 downto 0); 
          D      : in    std_logic_vector (7 downto 0); 
          E      : in    std_logic_vector (7 downto 0); 
          F      : in    std_logic_vector (7 downto 0); 
          G      : in    std_logic_vector (7 downto 0); 
          H      : in    std_logic_vector (7 downto 0); 
          OPCODE : in    std_logic_vector (2 downto 0); 
          MuxOut : out   std_logic_vector (7 downto 0));
end EightBitMux_MUSER_GPP;

architecture BEHAVIORAL of EightBitMux_MUSER_GPP is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_35 : std_logic;
   signal XLXN_36 : std_logic;
   signal XLXN_37 : std_logic;
   signal XLXN_38 : std_logic;
   signal XLXN_39 : std_logic;
   signal XLXN_40 : std_logic;
   signal XLXN_41 : std_logic;
   signal XLXN_42 : std_logic;
   component M8_1E_HXILINX_GPP
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
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_20";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_21";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_22";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_23";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_24";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_25";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_26";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_27";
begin
   XLXI_1 : M8_1E_HXILINX_GPP
      port map (D0=>A(3),
                D1=>B(3),
                D2=>C(3),
                D3=>D(3),
                D4=>E(3),
                D5=>F(3),
                D6=>G(3),
                D7=>H(3),
                E=>XLXN_40,
                S0=>OPCODE(0),
                S1=>OPCODE(1),
                S2=>OPCODE(2),
                O=>MuxOut(3));
   
   XLXI_2 : M8_1E_HXILINX_GPP
      port map (D0=>A(2),
                D1=>B(2),
                D2=>C(2),
                D3=>D(2),
                D4=>E(2),
                D5=>F(2),
                D6=>G(2),
                D7=>H(2),
                E=>XLXN_37,
                S0=>OPCODE(0),
                S1=>OPCODE(1),
                S2=>OPCODE(2),
                O=>MuxOut(2));
   
   XLXI_3 : M8_1E_HXILINX_GPP
      port map (D0=>A(1),
                D1=>B(1),
                D2=>C(1),
                D3=>D(1),
                D4=>E(1),
                D5=>F(1),
                D6=>G(1),
                D7=>H(1),
                E=>XLXN_36,
                S0=>OPCODE(0),
                S1=>OPCODE(1),
                S2=>OPCODE(2),
                O=>MuxOut(1));
   
   XLXI_4 : M8_1E_HXILINX_GPP
      port map (D0=>A(5),
                D1=>B(5),
                D2=>C(5),
                D3=>D(5),
                D4=>E(5),
                D5=>F(5),
                D6=>G(5),
                D7=>H(5),
                E=>XLXN_38,
                S0=>OPCODE(0),
                S1=>OPCODE(1),
                S2=>OPCODE(2),
                O=>MuxOut(5));
   
   XLXI_5 : M8_1E_HXILINX_GPP
      port map (D0=>A(0),
                D1=>B(0),
                D2=>C(0),
                D3=>D(0),
                D4=>E(0),
                D5=>F(0),
                D6=>G(0),
                D7=>H(0),
                E=>XLXN_35,
                S0=>OPCODE(0),
                S1=>OPCODE(1),
                S2=>OPCODE(2),
                O=>MuxOut(0));
   
   XLXI_6 : M8_1E_HXILINX_GPP
      port map (D0=>A(6),
                D1=>B(6),
                D2=>C(6),
                D3=>D(6),
                D4=>E(6),
                D5=>F(6),
                D6=>G(6),
                D7=>H(6),
                E=>XLXN_41,
                S0=>OPCODE(0),
                S1=>OPCODE(1),
                S2=>OPCODE(2),
                O=>MuxOut(6));
   
   XLXI_7 : M8_1E_HXILINX_GPP
      port map (D0=>A(7),
                D1=>B(7),
                D2=>C(7),
                D3=>D(7),
                D4=>E(7),
                D5=>F(7),
                D6=>G(7),
                D7=>H(7),
                E=>XLXN_42,
                S0=>OPCODE(0),
                S1=>OPCODE(1),
                S2=>OPCODE(2),
                O=>MuxOut(7));
   
   XLXI_8 : M8_1E_HXILINX_GPP
      port map (D0=>A(4),
                D1=>B(4),
                D2=>C(4),
                D3=>D(4),
                D4=>E(4),
                D5=>F(4),
                D6=>G(4),
                D7=>H(4),
                E=>XLXN_39,
                S0=>OPCODE(0),
                S1=>OPCODE(1),
                S2=>OPCODE(2),
                O=>MuxOut(4));
   
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
      port map (P=>XLXN_38);
   
   XLXI_16 : VCC
      port map (P=>XLXN_42);
   
   XLXI_17 : VCC
      port map (P=>XLXN_41);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity adder8_MUSER_GPP is
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
end adder8_MUSER_GPP;

architecture BEHAVIORAL of adder8_MUSER_GPP is
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
   
   component FullAdder_MUSER_GPP
      port ( A    : in    std_logic; 
             B    : in    std_logic; 
             Cin  : in    std_logic; 
             Sum  : out   std_logic; 
             Cout : out   std_logic);
   end component;
   
begin
   XLXI_11 : GND
      port map (G=>XLXN_10);
   
   XLXI_25 : FullAdder_MUSER_GPP
      port map (A=>A7,
                B=>B7,
                Cin=>XLXN_31,
                Cout=>Cout,
                Sum=>Sum7);
   
   XLXI_26 : FullAdder_MUSER_GPP
      port map (A=>A6,
                B=>B6,
                Cin=>XLXN_27,
                Cout=>XLXN_31,
                Sum=>Sum6);
   
   XLXI_27 : FullAdder_MUSER_GPP
      port map (A=>A5,
                B=>B5,
                Cin=>XLXN_23,
                Cout=>XLXN_27,
                Sum=>Sum5);
   
   XLXI_29 : FullAdder_MUSER_GPP
      port map (A=>A4,
                B=>B4,
                Cin=>XLXN_147,
                Cout=>XLXN_23,
                Sum=>Sum4);
   
   XLXI_30 : FullAdder_MUSER_GPP
      port map (A=>A3,
                B=>B3,
                Cin=>XLXN_9,
                Cout=>XLXN_147,
                Sum=>Sum3);
   
   XLXI_32 : FullAdder_MUSER_GPP
      port map (A=>A2,
                B=>B2,
                Cin=>XLXN_8,
                Cout=>XLXN_9,
                Sum=>Sum2);
   
   XLXI_33 : FullAdder_MUSER_GPP
      port map (A=>A1,
                B=>B1,
                Cin=>XLXN_7,
                Cout=>XLXN_8,
                Sum=>Sum1);
   
   XLXI_34 : FullAdder_MUSER_GPP
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

entity EightBitMultiplier_MUSER_GPP is
   port ( A       : in    std_logic_vector (7 downto 0); 
          B       : in    std_logic_vector (7 downto 0); 
          Pout    : out   std_logic; 
          Product : out   std_logic_vector (7 downto 0));
end EightBitMultiplier_MUSER_GPP;

architecture BEHAVIORAL of EightBitMultiplier_MUSER_GPP is
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
   
   component adder8_MUSER_GPP
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
   
   XLXI_518 : adder8_MUSER_GPP
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
   
   XLXI_519 : adder8_MUSER_GPP
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
   
   XLXI_520 : adder8_MUSER_GPP
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
   
   XLXI_521 : adder8_MUSER_GPP
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
   
   XLXI_522 : adder8_MUSER_GPP
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
   
   XLXI_523 : adder8_MUSER_GPP
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
                Cout=>Pout,
                Sum0=>Product(7),
                Sum1=>open,
                Sum2=>open,
                Sum3=>open,
                Sum4=>open,
                Sum5=>open,
                Sum6=>open,
                Sum7=>open);
   
   XLXI_549 : adder8_MUSER_GPP
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Shifter_MUSER_GPP is
   port ( B     : in    std_logic_vector (7 downto 0); 
          Shift : out   std_logic_vector (7 downto 0));
end Shifter_MUSER_GPP;

architecture BEHAVIORAL of Shifter_MUSER_GPP is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FullSubtractor_MUSER_GPP is
   port ( A    : in    std_logic; 
          B    : in    std_logic; 
          Bin  : in    std_logic; 
          Bout : out   std_logic; 
          D    : out   std_logic);
end FullSubtractor_MUSER_GPP;

architecture BEHAVIORAL of FullSubtractor_MUSER_GPP is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity EightBitSubtractor_MUSER_GPP is
   port ( A    : in    std_logic_vector (7 downto 0); 
          B    : in    std_logic_vector (7 downto 0); 
          Bout : out   std_logic; 
          Diff : out   std_logic_vector (7 downto 0));
end EightBitSubtractor_MUSER_GPP;

architecture BEHAVIORAL of EightBitSubtractor_MUSER_GPP is
   attribute BOX_TYPE   : string ;
   signal Ground : std_logic;
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_3 : std_logic;
   signal XLXN_6 : std_logic;
   signal XLXN_7 : std_logic;
   signal XLXN_8 : std_logic;
   signal XLXN_9 : std_logic;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FullSubtractor_MUSER_GPP
      port ( A    : in    std_logic; 
             B    : in    std_logic; 
             Bin  : in    std_logic; 
             D    : out   std_logic; 
             Bout : out   std_logic);
   end component;
   
begin
   XLXI_16 : GND
      port map (G=>Ground);
   
   XLXI_17 : FullSubtractor_MUSER_GPP
      port map (A=>A(0),
                B=>B(0),
                Bin=>Ground,
                Bout=>XLXN_1,
                D=>Diff(0));
   
   XLXI_18 : FullSubtractor_MUSER_GPP
      port map (A=>A(1),
                B=>B(1),
                Bin=>XLXN_1,
                Bout=>XLXN_3,
                D=>Diff(1));
   
   XLXI_20 : FullSubtractor_MUSER_GPP
      port map (A=>A(3),
                B=>B(3),
                Bin=>XLXN_2,
                Bout=>XLXN_9,
                D=>Diff(3));
   
   XLXI_21 : FullSubtractor_MUSER_GPP
      port map (A=>A(4),
                B=>B(4),
                Bin=>XLXN_9,
                Bout=>XLXN_6,
                D=>Diff(4));
   
   XLXI_22 : FullSubtractor_MUSER_GPP
      port map (A=>A(5),
                B=>B(5),
                Bin=>XLXN_6,
                Bout=>XLXN_7,
                D=>Diff(5));
   
   XLXI_23 : FullSubtractor_MUSER_GPP
      port map (A=>A(6),
                B=>B(6),
                Bin=>XLXN_7,
                Bout=>XLXN_8,
                D=>Diff(6));
   
   XLXI_24 : FullSubtractor_MUSER_GPP
      port map (A=>A(7),
                B=>B(7),
                Bin=>XLXN_8,
                Bout=>Bout,
                D=>Diff(7));
   
   XLXI_25 : FullSubtractor_MUSER_GPP
      port map (A=>A(2),
                B=>B(2),
                Bin=>XLXN_3,
                Bout=>XLXN_2,
                D=>Diff(2));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity EightBitOr_MUSER_GPP is
   port ( A     : in    std_logic_vector (7 downto 0); 
          B     : in    std_logic_vector (7 downto 0); 
          OrOut : out   std_logic_vector (7 downto 0));
end EightBitOr_MUSER_GPP;

architecture BEHAVIORAL of EightBitOr_MUSER_GPP is
   attribute BOX_TYPE   : string ;
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   XLXI_11 : OR2
      port map (I0=>B(0),
                I1=>A(0),
                O=>OrOut(0));
   
   XLXI_12 : OR2
      port map (I0=>B(1),
                I1=>A(1),
                O=>OrOut(1));
   
   XLXI_13 : OR2
      port map (I0=>B(2),
                I1=>A(2),
                O=>OrOut(2));
   
   XLXI_14 : OR2
      port map (I0=>B(3),
                I1=>A(3),
                O=>OrOut(3));
   
   XLXI_15 : OR2
      port map (I0=>B(4),
                I1=>A(4),
                O=>OrOut(4));
   
   XLXI_16 : OR2
      port map (I0=>B(5),
                I1=>A(5),
                O=>OrOut(5));
   
   XLXI_17 : OR2
      port map (I0=>B(6),
                I1=>A(6),
                O=>OrOut(6));
   
   XLXI_18 : OR2
      port map (I0=>B(7),
                I1=>A(7),
                O=>OrOut(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity EightBitAnd_MUSER_GPP is
   port ( A      : in    std_logic_vector (7 downto 0); 
          B      : in    std_logic_vector (7 downto 0); 
          AndOut : out   std_logic_vector (7 downto 0));
end EightBitAnd_MUSER_GPP;

architecture BEHAVIORAL of EightBitAnd_MUSER_GPP is
   attribute BOX_TYPE   : string ;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>B(0),
                I1=>A(0),
                O=>AndOut(0));
   
   XLXI_2 : AND2
      port map (I0=>B(1),
                I1=>A(1),
                O=>AndOut(1));
   
   XLXI_3 : AND2
      port map (I0=>B(2),
                I1=>A(2),
                O=>AndOut(2));
   
   XLXI_4 : AND2
      port map (I0=>B(3),
                I1=>A(3),
                O=>AndOut(3));
   
   XLXI_5 : AND2
      port map (I0=>B(4),
                I1=>A(4),
                O=>AndOut(4));
   
   XLXI_6 : AND2
      port map (I0=>B(5),
                I1=>A(5),
                O=>AndOut(5));
   
   XLXI_9 : AND2
      port map (I0=>B(6),
                I1=>A(6),
                O=>AndOut(6));
   
   XLXI_10 : AND2
      port map (I0=>B(7),
                I1=>A(7),
                O=>AndOut(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity EightBitXor_MUSER_GPP is
   port ( A      : in    std_logic_vector (7 downto 0); 
          B      : in    std_logic_vector (7 downto 0); 
          XorOut : out   std_logic_vector (7 downto 0));
end EightBitXor_MUSER_GPP;

architecture BEHAVIORAL of EightBitXor_MUSER_GPP is
   attribute BOX_TYPE   : string ;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
begin
   XLXI_2 : XOR2
      port map (I0=>B(0),
                I1=>A(0),
                O=>XorOut(0));
   
   XLXI_3 : XOR2
      port map (I0=>B(1),
                I1=>A(1),
                O=>XorOut(1));
   
   XLXI_4 : XOR2
      port map (I0=>B(2),
                I1=>A(2),
                O=>XorOut(2));
   
   XLXI_5 : XOR2
      port map (I0=>B(3),
                I1=>A(3),
                O=>XorOut(3));
   
   XLXI_6 : XOR2
      port map (I0=>B(4),
                I1=>A(4),
                O=>XorOut(4));
   
   XLXI_7 : XOR2
      port map (I0=>B(5),
                I1=>A(5),
                O=>XorOut(5));
   
   XLXI_8 : XOR2
      port map (I0=>B(6),
                I1=>A(6),
                O=>XorOut(6));
   
   XLXI_9 : XOR2
      port map (I0=>B(7),
                I1=>A(7),
                O=>XorOut(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ALU_MUSER_GPP is
   port ( A      : in    std_logic_vector (7 downto 0); 
          B      : in    std_logic_vector (7 downto 0); 
          OPCODE : in    std_logic_vector (2 downto 0); 
          C      : out   std_logic; 
          N      : out   std_logic; 
          O      : out   std_logic_vector (7 downto 0); 
          Z      : out   std_logic);
end ALU_MUSER_GPP;

architecture BEHAVIORAL of ALU_MUSER_GPP is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal add_overflow : std_logic;
   signal mul_overflow : std_logic;
   signal sub_overflow : std_logic;
   signal XLXN_46      : std_logic_vector (7 downto 0);
   signal XLXN_48      : std_logic_vector (7 downto 0);
   signal XLXN_55      : std_logic_vector (7 downto 0);
   signal XLXN_61      : std_logic_vector (7 downto 0);
   signal XLXN_62      : std_logic_vector (7 downto 0);
   signal XLXN_65      : std_logic_vector (7 downto 0);
   signal XLXN_70      : std_logic_vector (7 downto 0);
   signal XLXN_87      : std_logic;
   signal XLXN_158     : std_logic;
   signal XLXN_159     : std_logic;
   signal XLXN_160     : std_logic;
   signal XLXN_161     : std_logic;
   signal XLXN_209     : std_logic_vector (7 downto 0);
   signal O_DUMMY      : std_logic_vector (7 downto 0);
   component EightBitMux_MUSER_GPP
      port ( A      : in    std_logic_vector (7 downto 0); 
             B      : in    std_logic_vector (7 downto 0); 
             MuxOut : out   std_logic_vector (7 downto 0); 
             C      : in    std_logic_vector (7 downto 0); 
             D      : in    std_logic_vector (7 downto 0); 
             E      : in    std_logic_vector (7 downto 0); 
             F      : in    std_logic_vector (7 downto 0); 
             G      : in    std_logic_vector (7 downto 0); 
             H      : in    std_logic_vector (7 downto 0); 
             OPCODE : in    std_logic_vector (2 downto 0));
   end component;
   
   component EightBitXor_MUSER_GPP
      port ( A      : in    std_logic_vector (7 downto 0); 
             B      : in    std_logic_vector (7 downto 0); 
             XorOut : out   std_logic_vector (7 downto 0));
   end component;
   
   component EightBitOr_MUSER_GPP
      port ( A     : in    std_logic_vector (7 downto 0); 
             B     : in    std_logic_vector (7 downto 0); 
             OrOut : out   std_logic_vector (7 downto 0));
   end component;
   
   component EightBitAnd_MUSER_GPP
      port ( A      : in    std_logic_vector (7 downto 0); 
             B      : in    std_logic_vector (7 downto 0); 
             AndOut : out   std_logic_vector (7 downto 0));
   end component;
   
   component Shifter_MUSER_GPP
      port ( B     : in    std_logic_vector (7 downto 0); 
             Shift : out   std_logic_vector (7 downto 0));
   end component;
   
   component EightBitAdder_MUSER_GPP
      port ( A    : in    std_logic_vector (7 downto 0); 
             B    : in    std_logic_vector (7 downto 0); 
             Sum  : out   std_logic_vector (7 downto 0); 
             Cout : out   std_logic);
   end component;
   
   component EqualityComp_8
      port ( a  : in    std_logic_vector (7 downto 0); 
             b  : in    std_logic_vector (7 downto 0); 
             eq : out   std_logic);
   end component;
   
   component EightBitSubtractor_MUSER_GPP
      port ( A    : in    std_logic_vector (7 downto 0); 
             B    : in    std_logic_vector (7 downto 0); 
             Diff : out   std_logic_vector (7 downto 0); 
             Bout : out   std_logic);
   end component;
   
   component EightBitMultiplier_MUSER_GPP
      port ( A       : in    std_logic_vector (7 downto 0); 
             B       : in    std_logic_vector (7 downto 0); 
             Product : out   std_logic_vector (7 downto 0); 
             Pout    : out   std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component M8_1E_HXILINX_GPP
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
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_41 : label is "XLXI_41_28";
begin
   XLXN_55(7 downto 0) <= x"00";
   O(7 downto 0) <= O_DUMMY(7 downto 0);
   XLXI_10 : EightBitMux_MUSER_GPP
      port map (A(7 downto 0)=>B(7 downto 0),
                B(7 downto 0)=>XLXN_48(7 downto 0),
                C(7 downto 0)=>XLXN_61(7 downto 0),
                D(7 downto 0)=>XLXN_62(7 downto 0),
                E(7 downto 0)=>XLXN_209(7 downto 0),
                F(7 downto 0)=>XLXN_46(7 downto 0),
                G(7 downto 0)=>XLXN_65(7 downto 0),
                H(7 downto 0)=>XLXN_70(7 downto 0),
                OPCODE(2 downto 0)=>OPCODE(2 downto 0),
                MuxOut(7 downto 0)=>O_DUMMY(7 downto 0));
   
   XLXI_11 : EightBitXor_MUSER_GPP
      port map (A(7 downto 0)=>A(7 downto 0),
                B(7 downto 0)=>B(7 downto 0),
                XorOut(7 downto 0)=>XLXN_48(7 downto 0));
   
   XLXI_12 : EightBitOr_MUSER_GPP
      port map (A(7 downto 0)=>A(7 downto 0),
                B(7 downto 0)=>B(7 downto 0),
                OrOut(7 downto 0)=>XLXN_62(7 downto 0));
   
   XLXI_13 : EightBitAnd_MUSER_GPP
      port map (A(7 downto 0)=>A(7 downto 0),
                B(7 downto 0)=>B(7 downto 0),
                AndOut(7 downto 0)=>XLXN_61(7 downto 0));
   
   XLXI_16 : Shifter_MUSER_GPP
      port map (B(7 downto 0)=>B(7 downto 0),
                Shift(7 downto 0)=>XLXN_65(7 downto 0));
   
   XLXI_25 : EightBitAdder_MUSER_GPP
      port map (A(7 downto 0)=>A(7 downto 0),
                B(7 downto 0)=>B(7 downto 0),
                Cout=>add_overflow,
                Sum(7 downto 0)=>XLXN_209(7 downto 0));
   
   XLXI_26 : EqualityComp_8
      port map (a(7 downto 0)=>XLXN_55(7 downto 0),
                b(7 downto 0)=>O_DUMMY(7 downto 0),
                eq=>Z);
   
   XLXI_29 : EightBitSubtractor_MUSER_GPP
      port map (A(7 downto 0)=>A(7 downto 0),
                B(7 downto 0)=>B(7 downto 0),
                Bout=>sub_overflow,
                Diff(7 downto 0)=>XLXN_46(7 downto 0));
   
   XLXI_31 : EightBitMultiplier_MUSER_GPP
      port map (A(7 downto 0)=>A(7 downto 0),
                B(7 downto 0)=>B(7 downto 0),
                Pout=>mul_overflow,
                Product(7 downto 0)=>XLXN_70(7 downto 0));
   
   XLXI_32 : BUF
      port map (I=>O_DUMMY(7),
                O=>N);
   
   XLXI_41 : M8_1E_HXILINX_GPP
      port map (D0=>XLXN_158,
                D1=>XLXN_159,
                D2=>XLXN_160,
                D3=>XLXN_161,
                D4=>add_overflow,
                D5=>sub_overflow,
                D6=>B(0),
                D7=>mul_overflow,
                E=>XLXN_87,
                S0=>OPCODE(0),
                S1=>OPCODE(1),
                S2=>OPCODE(2),
                O=>C);
   
   XLXI_42 : VCC
      port map (P=>XLXN_87);
   
   XLXI_72 : GND
      port map (G=>XLXN_158);
   
   XLXI_73 : GND
      port map (G=>XLXN_159);
   
   XLXI_74 : GND
      port map (G=>XLXN_160);
   
   XLXI_75 : GND
      port map (G=>XLXN_161);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Mux4_MUSER_GPP is
   port ( A       : in    std_logic_vector (7 downto 0); 
          B       : in    std_logic_vector (7 downto 0); 
          C       : in    std_logic_vector (7 downto 0); 
          D       : in    std_logic_vector (7 downto 0); 
          OPCODE0 : in    std_logic; 
          OPCODE1 : in    std_logic; 
          MuxOut  : out   std_logic_vector (7 downto 0));
end Mux4_MUSER_GPP;

architecture BEHAVIORAL of Mux4_MUSER_GPP is
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
   
   component M4_1E_HXILINX_GPP
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_43 : label is "XLXI_43_29";
   attribute HU_SET of XLXI_44 : label is "XLXI_44_33";
   attribute HU_SET of XLXI_45 : label is "XLXI_45_35";
   attribute HU_SET of XLXI_47 : label is "XLXI_47_30";
   attribute HU_SET of XLXI_48 : label is "XLXI_48_36";
   attribute HU_SET of XLXI_49 : label is "XLXI_49_32";
   attribute HU_SET of XLXI_50 : label is "XLXI_50_34";
   attribute HU_SET of XLXI_51 : label is "XLXI_51_31";
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
   
   XLXI_43 : M4_1E_HXILINX_GPP
      port map (D0=>A(0),
                D1=>B(0),
                D2=>C(0),
                D3=>D(0),
                E=>XLXN_35,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(0));
   
   XLXI_44 : M4_1E_HXILINX_GPP
      port map (D0=>A(3),
                D1=>B(3),
                D2=>C(3),
                D3=>D(3),
                E=>XLXN_40,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(3));
   
   XLXI_45 : M4_1E_HXILINX_GPP
      port map (D0=>A(4),
                D1=>B(4),
                D2=>C(4),
                D3=>D(4),
                E=>XLXN_39,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(4));
   
   XLXI_47 : M4_1E_HXILINX_GPP
      port map (D0=>A(2),
                D1=>B(2),
                D2=>C(2),
                D3=>D(2),
                E=>XLXN_37,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(2));
   
   XLXI_48 : M4_1E_HXILINX_GPP
      port map (D0=>A(5),
                D1=>B(5),
                D2=>C(5),
                D3=>D(5),
                E=>XLXN_331,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(5));
   
   XLXI_49 : M4_1E_HXILINX_GPP
      port map (D0=>A(6),
                D1=>B(6),
                D2=>C(6),
                D3=>D(6),
                E=>XLXN_41,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(6));
   
   XLXI_50 : M4_1E_HXILINX_GPP
      port map (D0=>A(7),
                D1=>B(7),
                D2=>C(7),
                D3=>D(7),
                E=>XLXN_42,
                S0=>OPCODE0,
                S1=>OPCODE1,
                O=>MuxOut(7));
   
   XLXI_51 : M4_1E_HXILINX_GPP
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

entity bit_8_register_MUSER_GPP is
   port ( C : in    std_logic; 
          D : in    std_logic_vector (7 downto 0); 
          E : in    std_logic; 
          O : out   std_logic_vector (7 downto 0));
end bit_8_register_MUSER_GPP;

architecture BEHAVIORAL of bit_8_register_MUSER_GPP is
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

entity RegFile_MUSER_GPP is
   port ( clk      : in    std_logic; 
          R_addr_a : in    std_logic_vector (1 downto 0); 
          R_addr_b : in    std_logic_vector (1 downto 0); 
          W_addr   : in    std_logic_vector (1 downto 0); 
          W_data   : in    std_logic_vector (7 downto 0); 
          W_enable : in    std_logic; 
          R_data_a : out   std_logic_vector (7 downto 0); 
          R_data_b : out   std_logic_vector (7 downto 0));
end RegFile_MUSER_GPP;

architecture BEHAVIORAL of RegFile_MUSER_GPP is
   attribute HU_SET     : string ;
   signal E0       : std_logic;
   signal E1       : std_logic;
   signal E2       : std_logic;
   signal E3       : std_logic;
   signal XLXN_89  : std_logic_vector (7 downto 0);
   signal XLXN_90  : std_logic_vector (7 downto 0);
   signal XLXN_92  : std_logic_vector (7 downto 0);
   signal XLXN_94  : std_logic_vector (7 downto 0);
   component bit_8_register_MUSER_GPP
      port ( D : in    std_logic_vector (7 downto 0); 
             C : in    std_logic; 
             E : in    std_logic; 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   component D2_4E_HXILINX_GPP
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
   end component;
   
   component Mux4_MUSER_GPP
      port ( OPCODE0 : in    std_logic; 
             OPCODE1 : in    std_logic; 
             B       : in    std_logic_vector (7 downto 0); 
             A       : in    std_logic_vector (7 downto 0); 
             C       : in    std_logic_vector (7 downto 0); 
             D       : in    std_logic_vector (7 downto 0); 
             MuxOut  : out   std_logic_vector (7 downto 0));
   end component;
   
   attribute HU_SET of XLXI_57 : label is "XLXI_57_37";
begin
   R0 : bit_8_register_MUSER_GPP
      port map (C=>clk,
                D(7 downto 0)=>W_data(7 downto 0),
                E=>E0,
                O(7 downto 0)=>XLXN_92(7 downto 0));
   
   R1 : bit_8_register_MUSER_GPP
      port map (C=>clk,
                D(7 downto 0)=>W_data(7 downto 0),
                E=>E1,
                O(7 downto 0)=>XLXN_94(7 downto 0));
   
   R2 : bit_8_register_MUSER_GPP
      port map (C=>clk,
                D(7 downto 0)=>W_data(7 downto 0),
                E=>E2,
                O(7 downto 0)=>XLXN_90(7 downto 0));
   
   R3 : bit_8_register_MUSER_GPP
      port map (C=>clk,
                D(7 downto 0)=>W_data(7 downto 0),
                E=>E3,
                O(7 downto 0)=>XLXN_89(7 downto 0));
   
   XLXI_57 : D2_4E_HXILINX_GPP
      port map (A0=>W_addr(0),
                A1=>W_addr(1),
                E=>W_enable,
                D0=>E0,
                D1=>E1,
                D2=>E2,
                D3=>E3);
   
   XLXI_79 : Mux4_MUSER_GPP
      port map (A(7 downto 0)=>XLXN_92(7 downto 0),
                B(7 downto 0)=>XLXN_94(7 downto 0),
                C(7 downto 0)=>XLXN_90(7 downto 0),
                D(7 downto 0)=>XLXN_89(7 downto 0),
                OPCODE0=>R_addr_a(0),
                OPCODE1=>R_addr_a(1),
                MuxOut(7 downto 0)=>R_data_a(7 downto 0));
   
   XLXI_80 : Mux4_MUSER_GPP
      port map (A(7 downto 0)=>XLXN_92(7 downto 0),
                B(7 downto 0)=>XLXN_94(7 downto 0),
                C(7 downto 0)=>XLXN_90(7 downto 0),
                D(7 downto 0)=>XLXN_89(7 downto 0),
                OPCODE0=>R_addr_b(0),
                OPCODE1=>R_addr_b(1),
                MuxOut(7 downto 0)=>R_data_b(7 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Instruction_ROM_MUSER_GPP is
   port ( Instruction_addr : in    std_logic_vector (3 downto 0); 
          Instruction      : out   std_logic_vector (8 downto 0));
end Instruction_ROM_MUSER_GPP;

architecture BEHAVIORAL of Instruction_ROM_MUSER_GPP is
   attribute BusWidth   : string ;
   signal XLXN_2           : std_logic_vector (8 downto 0);
   signal XLXN_3           : std_logic_vector (8 downto 0);
   signal XLXN_4           : std_logic_vector (8 downto 0);
   signal XLXN_5           : std_logic_vector (8 downto 0);
   signal XLXN_6           : std_logic_vector (8 downto 0);
   signal XLXN_7           : std_logic_vector (8 downto 0);
   signal XLXN_8           : std_logic_vector (8 downto 0);
   signal XLXN_9           : std_logic_vector (8 downto 0);
   signal XLXN_10          : std_logic_vector (8 downto 0);
   signal XLXN_11          : std_logic_vector (8 downto 0);
   signal XLXN_12          : std_logic_vector (8 downto 0);
   signal XLXN_13          : std_logic_vector (8 downto 0);
   signal XLXN_14          : std_logic_vector (8 downto 0);
   signal XLXN_15          : std_logic_vector (8 downto 0);
   signal XLXN_16          : std_logic_vector (8 downto 0);
   signal XLXN_17          : std_logic_vector (8 downto 0);
   component Mux16_9
      generic( BusWidth : integer :=  9);
      port ( i0  : in    std_logic_vector (8 downto 0); 
             i1  : in    std_logic_vector (8 downto 0); 
             i2  : in    std_logic_vector (8 downto 0); 
             i3  : in    std_logic_vector (8 downto 0); 
             i4  : in    std_logic_vector (8 downto 0); 
             i5  : in    std_logic_vector (8 downto 0); 
             i6  : in    std_logic_vector (8 downto 0); 
             i7  : in    std_logic_vector (8 downto 0); 
             i8  : in    std_logic_vector (8 downto 0); 
             i9  : in    std_logic_vector (8 downto 0); 
             i10 : in    std_logic_vector (8 downto 0); 
             i11 : in    std_logic_vector (8 downto 0); 
             i12 : in    std_logic_vector (8 downto 0); 
             i13 : in    std_logic_vector (8 downto 0); 
             i14 : in    std_logic_vector (8 downto 0); 
             i15 : in    std_logic_vector (8 downto 0); 
             sel : in    std_logic_vector (3 downto 0); 
             o   : out   std_logic_vector (8 downto 0));
   end component;
   attribute BusWidth of Mux16_9 : component is "9";
   
begin
   XLXN_2(8 downto 0) <= b"100000000";
   XLXN_3(8 downto 0) <= b"000110000";
   XLXN_4(8 downto 0) <= b"011001111";
   XLXN_5(8 downto 0) <= b"000011111";
   XLXN_6(8 downto 0) <= b"100000100";
   XLXN_7(8 downto 0) <= b"000110101";
   XLXN_8(8 downto 0) <= b"011101001";
   XLXN_9(8 downto 0) <= b"000011101";
   XLXN_10(8 downto 0) <= b"010001010";
   XLXN_11(8 downto 0) <= b"001011101";
   XLXN_12(8 downto 0) <= b"000000111";
   XLXN_13(8 downto 0) <= b"001011100";
   XLXN_14(8 downto 0) <= b"011011110";
   XLXN_15(8 downto 0) <= b"000000001";
   XLXN_16(8 downto 0) <= b"010000001";
   XLXN_17(8 downto 0) <= b"010001111";
   INSTRUCTION_SELECT : Mux16_9
      port map (i0(8 downto 0)=>XLXN_2(8 downto 0),
                i1(8 downto 0)=>XLXN_3(8 downto 0),
                i2(8 downto 0)=>XLXN_4(8 downto 0),
                i3(8 downto 0)=>XLXN_5(8 downto 0),
                i4(8 downto 0)=>XLXN_6(8 downto 0),
                i5(8 downto 0)=>XLXN_7(8 downto 0),
                i6(8 downto 0)=>XLXN_8(8 downto 0),
                i7(8 downto 0)=>XLXN_9(8 downto 0),
                i8(8 downto 0)=>XLXN_10(8 downto 0),
                i9(8 downto 0)=>XLXN_11(8 downto 0),
                i10(8 downto 0)=>XLXN_12(8 downto 0),
                i11(8 downto 0)=>XLXN_13(8 downto 0),
                i12(8 downto 0)=>XLXN_14(8 downto 0),
                i13(8 downto 0)=>XLXN_15(8 downto 0),
                i14(8 downto 0)=>XLXN_16(8 downto 0),
                i15(8 downto 0)=>XLXN_17(8 downto 0),
                sel(3 downto 0)=>Instruction_addr(3 downto 0),
                o(8 downto 0)=>Instruction(8 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ControlALU_MUSER_GPP is
   port ( a      : in    std_logic_vector (3 downto 0); 
          B      : in    std_logic_vector (3 downto 0); 
          C      : in    std_logic; 
          N      : in    std_logic; 
          OPCODE : in    std_logic_vector (3 downto 0); 
          Z      : in    std_logic; 
          O      : out   std_logic_vector (3 downto 0));
end ControlALU_MUSER_GPP;

architecture BEHAVIORAL of ControlALU_MUSER_GPP is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Instruction_Decoder_MUSER_GPP is
   port ( OPCODE    : in    std_logic_vector (3 downto 0); 
          capture_C : out   std_logic; 
          capture_N : out   std_logic; 
          capture_Z : out   std_logic);
end Instruction_Decoder_MUSER_GPP;

architecture BEHAVIORAL of Instruction_Decoder_MUSER_GPP is
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
   
   component M8_1E_HXILINX_GPP
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
   
   attribute HU_SET of XLXI_29 : label is "XLXI_29_38";
   attribute HU_SET of XLXI_30 : label is "XLXI_30_39";
begin
   capture_Z <= capture_Z_DUMMY;
   XLXI_27 : VCC
      port map (P=>one);
   
   XLXI_28 : GND
      port map (G=>zero);
   
   XLXI_29 : M8_1E_HXILINX_GPP
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
   
   XLXI_30 : M8_1E_HXILINX_GPP
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity RegParallelLoad_1_MUSER_GPP is
   port ( clk : in    std_logic; 
          d   : in    std_logic; 
          LD  : in    std_logic; 
          q   : out   std_logic);
end RegParallelLoad_1_MUSER_GPP;

architecture BEHAVIORAL of RegParallelLoad_1_MUSER_GPP is
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
      port map (C=>clk,
                CE=>LD,
                D=>d,
                Q=>q);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity GPP is
   port ( clk                      : in    std_logic; 
          Input                    : in    std_logic_vector (7 downto 0); 
          ALU_RESULT               : out   std_logic_vector (7 downto 0); 
          C                        : out   std_logic; 
          Current_Instruction_Addr : out   std_logic_vector (3 downto 0); 
          Instruction              : out   std_logic_vector (8 downto 0); 
          N                        : out   std_logic; 
          Z                        : out   std_logic);
end GPP;

architecture BEHAVIORAL of GPP is
   attribute BOX_TYPE   : string ;
   signal alu_C                          : std_logic;
   signal alu_N                          : std_logic;
   signal alu_Z                          : std_logic;
   signal capture_C                      : std_logic;
   signal capture_N                      : std_logic;
   signal capture_Z                      : std_logic;
   signal Output_A                       : std_logic_vector (7 downto 0);
   signal Output_B                       : std_logic_vector (7 downto 0);
   signal PC_NEXT                        : std_logic_vector (3 downto 0);
   signal write_enable_registers         : std_logic;
   signal XLXN_73                        : std_logic_vector (7 downto 0);
   signal XLXN_140                       : std_logic;
   signal Current_Instruction_Addr_DUMMY : std_logic_vector (3 downto 0);
   signal ALU_RESULT_DUMMY               : std_logic_vector (7 downto 0);
   signal C_DUMMY                        : std_logic;
   signal N_DUMMY                        : std_logic;
   signal Z_DUMMY                        : std_logic;
   signal Instruction_DUMMY              : std_logic_vector (8 downto 0);
   component ControlALU_MUSER_GPP
      port ( A      : in    std_logic_vector (3 downto 0); 
             B      : in    std_logic_vector (3 downto 0); 
             O      : out   std_logic_vector (3 downto 0); 
             OPCODE : in    std_logic_vector (3 downto 0); 
             N      : in    std_logic; 
             Z      : in    std_logic; 
             C      : in    std_logic);
   end component;
   
   component RegParallelLoad_1_MUSER_GPP
      port ( LD  : in    std_logic; 
             clk : in    std_logic; 
             d   : in    std_logic; 
             q   : out   std_logic);
   end component;
   
   component ALU_MUSER_GPP
      port ( A      : in    std_logic_vector (7 downto 0); 
             B      : in    std_logic_vector (7 downto 0); 
             OPCODE : in    std_logic_vector (2 downto 0); 
             C      : out   std_logic; 
             Z      : out   std_logic; 
             N      : out   std_logic; 
             O      : out   std_logic_vector (7 downto 0));
   end component;
   
   component Mux2_8
      port ( O  : out   std_logic_vector (7 downto 0); 
             D0 : in    std_logic_vector (7 downto 0); 
             D1 : in    std_logic_vector (7 downto 0); 
             S  : in    std_logic);
   end component;
   
   component Instruction_ROM_MUSER_GPP
      port ( Instruction_addr : in    std_logic_vector (3 downto 0); 
             Instruction      : out   std_logic_vector (8 downto 0));
   end component;
   
   component Instruction_Decoder_MUSER_GPP
      port ( OPCODE    : in    std_logic_vector (3 downto 0); 
             capture_C : out   std_logic; 
             capture_Z : out   std_logic; 
             capture_N : out   std_logic);
   end component;
   
   component RegParallelLoad_4
      port ( clk  : in    std_logic; 
             load : in    std_logic; 
             d    : in    std_logic_vector (3 downto 0); 
             q    : out   std_logic_vector (3 downto 0));
   end component;
   
   component RegFile_MUSER_GPP
      port ( R_addr_b : in    std_logic_vector (1 downto 0); 
             R_addr_a : in    std_logic_vector (1 downto 0); 
             clk      : in    std_logic; 
             W_data   : in    std_logic_vector (7 downto 0); 
             W_addr   : in    std_logic_vector (1 downto 0); 
             W_enable : in    std_logic; 
             R_data_a : out   std_logic_vector (7 downto 0); 
             R_data_b : out   std_logic_vector (7 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
begin
   ALU_RESULT(7 downto 0) <= ALU_RESULT_DUMMY(7 downto 0);
   C <= C_DUMMY;
   Current_Instruction_Addr(3 downto 0) <= Current_Instruction_Addr_DUMMY(3 
         downto 0);
   Instruction(8 downto 0) <= Instruction_DUMMY(8 downto 0);
   N <= N_DUMMY;
   Z <= Z_DUMMY;
   CONTROL_ALU : ControlALU_MUSER_GPP
      port map (A(3 downto 0)=>Current_Instruction_Addr_DUMMY(3 downto 0),
                B(3 downto 0)=>Instruction_DUMMY(3 downto 0),
                C=>C_DUMMY,
                N=>N_DUMMY,
                OPCODE(3 downto 0)=>Instruction_DUMMY(7 downto 4),
                Z=>Z_DUMMY,
                O(3 downto 0)=>PC_NEXT(3 downto 0));
   
   C_FLAG : RegParallelLoad_1_MUSER_GPP
      port map (clk=>clk,
                d=>alu_C,
                LD=>capture_C,
                q=>C_DUMMY);
   
   DATA_ALU : ALU_MUSER_GPP
      port map (A(7 downto 0)=>Output_A(7 downto 0),
                B(7 downto 0)=>XLXN_73(7 downto 0),
                OPCODE(2 downto 0)=>Instruction_DUMMY(6 downto 4),
                C=>alu_C,
                N=>alu_N,
                O(7 downto 0)=>ALU_RESULT_DUMMY(7 downto 0),
                Z=>alu_Z);
   
   INPUT_SEL : Mux2_8
      port map (D0(7 downto 0)=>Output_B(7 downto 0),
                D1(7 downto 0)=>Input(7 downto 0),
                S=>Instruction_DUMMY(8),
                O(7 downto 0)=>XLXN_73(7 downto 0));
   
   INSTRUCTION_PROM : Instruction_ROM_MUSER_GPP
      port map (Instruction_addr(3 downto 0)=>Current_Instruction_Addr_DUMMY(3 
            downto 0),
                Instruction(8 downto 0)=>Instruction_DUMMY(8 downto 0));
   
   INSTR_DEC : Instruction_Decoder_MUSER_GPP
      port map (OPCODE(3 downto 0)=>Instruction_DUMMY(7 downto 4),
                capture_C=>capture_C,
                capture_N=>capture_N,
                capture_Z=>capture_Z);
   
   N_FLAG : RegParallelLoad_1_MUSER_GPP
      port map (clk=>clk,
                d=>alu_N,
                LD=>capture_N,
                q=>N_DUMMY);
   
   PROGRAM_COUNTER : RegParallelLoad_4
      port map (clk=>clk,
                d(3 downto 0)=>PC_NEXT(3 downto 0),
                load=>XLXN_140,
                q(3 downto 0)=>Current_Instruction_Addr_DUMMY(3 downto 0));
   
   REG_FILE : RegFile_MUSER_GPP
      port map (clk=>clk,
                R_addr_a(1 downto 0)=>Instruction_DUMMY(3 downto 2),
                R_addr_b(1 downto 0)=>Instruction_DUMMY(1 downto 0),
                W_addr(1 downto 0)=>Instruction_DUMMY(3 downto 2),
                W_data(7 downto 0)=>ALU_RESULT_DUMMY(7 downto 0),
                W_enable=>write_enable_registers,
                R_data_a(7 downto 0)=>Output_A(7 downto 0),
                R_data_b(7 downto 0)=>Output_B(7 downto 0));
   
   XLXI_52 : INV
      port map (I=>Instruction_DUMMY(7),
                O=>write_enable_registers);
   
   XLXI_53 : VCC
      port map (P=>XLXN_140);
   
   Z_FLAG : RegParallelLoad_1_MUSER_GPP
      port map (clk=>clk,
                d=>alu_Z,
                LD=>capture_Z,
                q=>Z_DUMMY);
   
end BEHAVIORAL;


