----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/19/2020 04:38:17 PM
-- Design Name: 
-- Module Name: clock_divider - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

use work.GLOBAL_SETTINGS.all;

entity clock_divider is
    port(
        sys_clk     : in std_logic;
        resetN      : in std_logic;
        prescaler   : in std_logic_vector(NUM_PWR_STATE - 1 downto 0);
        output_clk  : out std_logic 
    );    
end clock_divider;

architecture Behavioral of clock_divider is
    signal counter  : integer := 0;
    signal sig_output_clk   : std_logic := '0';
begin

    output_clk <= sig_output_clk;
    
    clock_divider : process(sys_clk) begin
        if rising_edge(sys_clk) then
            counter <= counter + 1;
            if counter = (unsigned(prescaler(NUM_PWR_STATE - 1 downto 1)) - 1)  then
                counter <= 0;
                sig_output_clk <= not sig_output_clk;
            end if;                            
        end if;
    end process;

end Behavioral;
