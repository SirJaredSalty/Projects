-- Vhdl test bench created from schematic C:\Users\ugly\Google Drive\CMSC 313\Fall 2019\Project 3\Skeleton\GeneralPurposeProcessor\GPPTestCircuit.sch - Thu Nov 07 11:45:07 2019
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY GPPTestCircuit_GPPTestCircuit_sch_tb IS
END GPPTestCircuit_GPPTestCircuit_sch_tb;
ARCHITECTURE behavioral OF GPPTestCircuit_GPPTestCircuit_sch_tb IS 

   COMPONENT GPPTestCircuit
   PORT( Input	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          ALU_Result	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          clk	:	IN	STD_LOGIC; 
          Instruction	:	OUT	STD_LOGIC_VECTOR (8 DOWNTO 0); 
          Current_Instruction	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          Carry_Flag	:	OUT	STD_LOGIC; 
          Zero_Flag	:	OUT	STD_LOGIC; 
          Sign_Flag	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL Input	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL ALU_Result	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL Instruction	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
   SIGNAL Current_Instruction	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL Carry_Flag	:	STD_LOGIC;
   SIGNAL Zero_Flag	:	STD_LOGIC;
   SIGNAL Sign_Flag	:	STD_LOGIC;
	
	constant clk_period : time := 10 ns;
BEGIN

   UUT: GPPTestCircuit PORT MAP(
		Input => Input, 
		ALU_Result => ALU_Result, 
		clk => clk, 
		Instruction => Instruction, 
		Current_Instruction => Current_Instruction, 
		Carry_Flag => Carry_Flag, 
		Zero_Flag => Zero_Flag, 
		Sign_Flag => Sign_Flag
   );
	
	clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		Input <= "00001010";
		wait for clk_period;
		Input <= "00000010";
		wait for clk_period;
		Input <= "00000001";
		wait for clk_period;
		
      WAIT; -- will wait forever
		
		
--		Input <= "01111111";
--		wait for clk_period*16;
--		Input <= "00001010";
--		wait for clk_period*16;
--		Input <= "00010000";
--		wait for clk_period*16;
--		
--		Input <= "01111111";
--		wait for clk_period*16;
--		Input <= "00000101";
--		wait for clk_period*16;
--		Input <= "00000011";
--		wait for clk_period*16;
--		
--		Input <= "11111110";
--		wait for clk_period*16;
--		Input <= "00000001";
--		wait for clk_period*16;
--		Input <= "00010000";
--		wait for clk_period*16;
--		Input <= "00000100";
--      WAIT; -- will wait forever
		
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
