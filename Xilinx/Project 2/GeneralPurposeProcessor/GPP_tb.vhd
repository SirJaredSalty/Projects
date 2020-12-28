-- Vhdl test bench created from schematic D:\UMBC G Drive\CMSC 313\Spring 2020\Projects\Project 2\Skeleton_v1\GeneralPurposeProcessor\GPP.sch - Thu Feb 27 09:03:35 2020
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
ENTITY GPP_GPP_sch_tb IS
END GPP_GPP_sch_tb;
ARCHITECTURE behavioral OF GPP_GPP_sch_tb IS 

   COMPONENT GPP
   PORT( clk	:	IN	STD_LOGIC; 
          C	:	OUT	STD_LOGIC; 
          N	:	OUT	STD_LOGIC; 
          Z	:	OUT	STD_LOGIC; 
          Current_Instruction_Addr	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          Instruction	:	OUT	STD_LOGIC_VECTOR (8 DOWNTO 0); 
          ALU_RESULT	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          Input	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL C	:	STD_LOGIC;
   SIGNAL N	:	STD_LOGIC;
   SIGNAL Z	:	STD_LOGIC;
   SIGNAL Current_Instruction_Addr	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL Instruction	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
   SIGNAL ALU_RESULT	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL Input	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	
	constant clk_period : time := 10 ns;

BEGIN

   UUT: GPP PORT MAP(
		clk => clk, 
		C => C, 
		N => N, 
		Z => Z, 
		Current_Instruction_Addr => Current_Instruction_Addr, 
		Instruction => Instruction, 
		ALU_RESULT => ALU_RESULT, 
		Input => Input
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
	
--Test for first (default) algorithm.-------------------------
--Tests 10/2. If the processor is set up correctly------------
--the result should be in register R0 and remainder in R1-----
--Comment this section out to test the second algorithm-------
--To comment: highlight the lines below up to (and including)WAIT;
--Right click and seclect comment section---------------------

--		Input <= "00001010";
--		wait for clk_period;
--		Input <= "00000010";
--		wait for clk_period;
--		Input <= "00000001";
--		wait for clk_period;
--		
--      WAIT; -- will wait forever
--		
		
--This section tests the second algorithm-----------------------
--You need to first comment the section above-------------------
--Then uncomment this section-----------------------------------
--To uncomment: highlight section up to WAIT;-------------------
--Right click and select uncomment section----------------------
--This tests various values of X all lower than 127-------------		
		
		Input <= "01111111";
		wait for clk_period*16;
		Input <= "00001010";
		wait for clk_period*16;
		Input <= "00010000";
		wait for clk_period*16;
		
		Input <= "01111111";
		wait for clk_period*16;
		Input <= "00000101";
		wait for clk_period*16;
		Input <= "00000011";
		wait for clk_period*16;
		
		Input <= "11111110";
		wait for clk_period*16;
		Input <= "00010000";
		wait for clk_period*16;
		Input <= "00000001";
		wait for clk_period*16;
		Input <= "00010000";
		wait for clk_period*16;
		Input <= "00000100";
		wait for clk_period*16;
		Input <= "00000000";
		wait for clk_period*16;
		Input <= "00000100";
      WAIT; -- will wait forever



   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;