----------------------------------------------------------------------------------
-- Binghamton University
-- Engineer: Kyle J. Temkin <ktemkin@binghamton.edu>
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux16_9 is
  generic(BusWidth : integer := 9);
  port(
        i0, i1, i2, i3, i4, i5, i6, i7, 
        i8, i9, i10, i11, i12, i13, i14, i15 : in std_logic_vector(BusWidth - 1 downto 0);
        sel : in std_logic_vector(3 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end Mux16_9;

architecture Behavioral of Mux16_9 is
begin

  --Ugly hardcoded multiplexer.
  --Unfortunaely, these need to be hard coded, or ISE's schematic tool will consolidate
  --all of the inputs into a single bus.
  o <= 
    i0  when sel = "0000" else
    i1  when sel = "0001" else
    i2  when sel = "0010" else
    i3  when sel = "0011" else
    i4  when sel = "0100" else
    i5  when sel = "0101" else
    i6  when sel = "0110" else
    i7  when sel = "0111" else
    i8  when sel = "1000" else
    i9  when sel = "1001" else
    i10 when sel = "1010" else
    i11 when sel = "1011" else
    i12 when sel = "1100" else
    i13 when sel = "1101" else
    i14 when sel = "1110" else
    i15;

end Behavioral;

