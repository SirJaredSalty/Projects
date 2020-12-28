-- Vhdl test bench created from schematic C:\Users\ugly\Google Drive\CMSC 313\Fall 2019\Project 3\Skeleton_v1\GeneralPurposeProcessor\RegFile.sch - Fri Nov 08 12:25:19 2019
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
ENTITY RegFile_RegFile_sch_tb IS
END RegFile_RegFile_sch_tb;
ARCHITECTURE behavioral OF RegFile_RegFile_sch_tb IS 

   COMPONENT RegFile
   PORT( R_addr_a	:	IN	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          R_addr_b	:	IN	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          W_data	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          W_addr	:	IN	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          W_enable	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          R_data_a	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          R_data_b	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL R_addr_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL R_addr_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL W_data	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL W_addr	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL W_enable	:	STD_LOGIC;
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL R_data_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL R_data_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	
	
	SIGNAL in_data : unsigned (7 downto 0) := (others => '0');
	SIGNAL in_wradd : unsigned (1 downto 0) := (others => '0');
	SIGNAL in_radd_a : unsigned (1 downto 0) := (others => '0');
	SIGNAL in_radd_b : unsigned (1 downto 0) := (others => '0');
	
	signal write_enable : std_logic := '1';
	constant clk_period : time := 10 ns;

BEGIN

   UUT: RegFile PORT MAP(
		R_addr_a => R_addr_a, 
		R_addr_b => R_addr_b, 
		W_data => W_data, 
		W_addr => W_addr, 
		W_enable => W_enable, 
		clk => clk, 
		R_data_a => R_data_a, 
		R_data_b => R_data_b
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
		--------Initial write --------------
		for i in 0 to 9 loop
			R_addr_a <= std_logic_vector(in_radd_a);
			R_addr_b <= std_logic_vector (in_radd_b);
			in_data <= in_data + 8 ;
			in_wradd <= in_wradd + 1;
			W_data <= std_logic_vector(in_data);
			W_addr <= std_logic_vector (in_wradd);
			write_enable <=  write_enable xor '1';
			w_enable <= write_enable;
			wait for clk_period;	
		end loop;
		
		-----Changing the write enabe--------
		wait for clk_period;	
		w_enable <= '1';
		wait for clk_period;
		w_enable <= '0';
		
		for i in 0 to 9 loop
			------Write data ---------------
			in_data <= in_data + 8 ;
			in_wradd <= in_wradd + 1;
			W_data <= std_logic_vector(in_data);
			W_addr <= std_logic_vector (in_wradd);
			--write_enable <=  write_enable xor '1';
			w_enable <= '1';
			------Read data ----------------
			in_radd_a <= in_radd_a + 1;
			in_radd_b <= in_radd_a + 1;
			R_addr_a <= std_logic_vector(in_radd_a);
			R_addr_b <= std_logic_vector (in_radd_b);
			wait for clk_period;	
		end loop;
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
