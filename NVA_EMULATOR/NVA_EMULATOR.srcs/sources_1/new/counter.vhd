----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/17/2020 05:59:12 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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

entity counter is
    Generic(
        MAX         : INTEGER;
        INIT_VALUE  : INTEGER;
        INCREASE_BY : INTEGER
    );
    Port ( 
        clk         : in STD_LOGIC;
        resetn      : in STD_LOGIC;
        INIT        : in STD_LOGIC;
        CE          : in STD_LOGIC;
        TC          : out STD_LOGIC;
        value       : out INTEGER RANGE 0 TO MAX
    );
end counter;

architecture Behavioral of counter is
    signal counter : INTEGER RANGE 0 TO MAX := INIT_VALUE;
begin
    -----------------------------------------------------------------------
    --                          Constraints                              --
    -----------------------------------------------------------------------
    value <= counter;
    TC <= '1' when counter = MAX else '0';
    
    COUNT:process(clk,resetn) is
    begin
        if resetn = '0' then
            counter <= 0;
        elsif rising_edge(clk) then
            if INIT = '1' then
                counter <= INIT_VALUE;
            elsif CE = '1' then
                if(counter = MAX ) then
                    counter <= 0;
                else
                    counter <= counter + INCREASE_BY;
                end if;
            end if;
        end if;
    end process;

end Behavioral;