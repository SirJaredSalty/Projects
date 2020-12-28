--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : EightBitSubtractor.vhf
-- /___/   /\     Timestamp : 10/07/2020 10:28:16
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Jared/Desktop/SimpleProcessor/EightBitSubtractor.vhf -w C:/Users/Jared/Desktop/SimpleProcessor/EightBitSubtractor.sch
--Design Name: EightBitSubtractor
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

entity FullSubtractor_MUSER_EightBitSubtractor is
   port ( A    : in    std_logic; 
          B    : in    std_logic; 
          Bin  : in    std_logic; 
          Bout : out   std_logic; 
          D    : out   std_logic);
end FullSubtractor_MUSER_EightBitSubtractor;

architecture BEHAVIORAL of FullSubtractor_MUSER_EightBitSubtractor is
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

entity EightBitSubtractor is
   port ( A    : in    std_logic_vector (7 downto 0); 
          B    : in    std_logic_vector (7 downto 0); 
          Diff : out   std_logic_vector (7 downto 0));
end EightBitSubtractor;

architecture BEHAVIORAL of EightBitSubtractor is
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
   
   component FullSubtractor_MUSER_EightBitSubtractor
      port ( A    : in    std_logic; 
             B    : in    std_logic; 
             Bin  : in    std_logic; 
             D    : out   std_logic; 
             Bout : out   std_logic);
   end component;
   
begin
   XLXI_16 : GND
      port map (G=>Ground);
   
   XLXI_17 : FullSubtractor_MUSER_EightBitSubtractor
      port map (A=>A(0),
                B=>B(0),
                Bin=>Ground,
                Bout=>XLXN_1,
                D=>Diff(0));
   
   XLXI_18 : FullSubtractor_MUSER_EightBitSubtractor
      port map (A=>A(1),
                B=>B(1),
                Bin=>XLXN_1,
                Bout=>XLXN_3,
                D=>Diff(1));
   
   XLXI_20 : FullSubtractor_MUSER_EightBitSubtractor
      port map (A=>A(3),
                B=>B(3),
                Bin=>XLXN_2,
                Bout=>XLXN_9,
                D=>Diff(3));
   
   XLXI_21 : FullSubtractor_MUSER_EightBitSubtractor
      port map (A=>A(4),
                B=>B(4),
                Bin=>XLXN_9,
                Bout=>XLXN_6,
                D=>Diff(4));
   
   XLXI_22 : FullSubtractor_MUSER_EightBitSubtractor
      port map (A=>A(5),
                B=>B(5),
                Bin=>XLXN_6,
                Bout=>XLXN_7,
                D=>Diff(5));
   
   XLXI_23 : FullSubtractor_MUSER_EightBitSubtractor
      port map (A=>A(6),
                B=>B(6),
                Bin=>XLXN_7,
                Bout=>XLXN_8,
                D=>Diff(6));
   
   XLXI_24 : FullSubtractor_MUSER_EightBitSubtractor
      port map (A=>A(7),
                B=>B(7),
                Bin=>XLXN_8,
                Bout=>open,
                D=>Diff(7));
   
   XLXI_25 : FullSubtractor_MUSER_EightBitSubtractor
      port map (A=>A(2),
                B=>B(2),
                Bin=>XLXN_3,
                Bout=>XLXN_2,
                D=>Diff(2));
   
end BEHAVIORAL;


