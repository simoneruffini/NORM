----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2020 10:43:43 PM
-- Design Name: 
-- Module Name: PWR_CONSUMPTION_VAL_ROM - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pwr_consumption_val_ROM is
    generic(
        NUM_ELEMENTS_ROM : integer;
        MAX_VAL         : integer
    );
    port(	
	   	clk       : in	std_logic;
		addr      : in	integer range 0 to NUM_ELEMENTS_ROM - 1;
		data_out  : out	integer range 0 to MAX_VAL - 1
    );
end pwr_consumption_val_ROM;

architecture Behavioral of pwr_consumption_val_ROM is
    type rom_type is array (0 to NUM_ELEMENTS_ROM - 1) of integer range 0 to  MAX_VAL - 1;
    signal ROM: rom_type := (
        100,
        50,
        50
    );
begin
    get_data:process (clk) is begin
        if rising_edge(clk) then
            data_out <= ROM(addr);	--get the address read it as unsigned and convert to integer to get the value from ROM(integer)
        end if;
	end process;

end Behavioral;
