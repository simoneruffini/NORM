----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/26/2020 05:19:23 PM
-- Design Name: 
-- Module Name: var_cnt - Behavioral
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

entity var_cnt is
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
        end_value   : in INTEGER RANGE 0 TO MAX;
        TC          : out STD_LOGIC;
        value       : out INTEGER RANGE 0 TO MAX
    );
end var_cnt;

architecture Behavioral of var_cnt is
    signal counter : INTEGER RANGE 0 TO MAX;
begin
     -----------------------------------------------------------------------
    --                          Constraints                              --
    -----------------------------------------------------------------------
    value <= counter;
    TC <= '1' when counter = end_value else '0';
    
    COUNT:process(clk,INIT,resetn) is
    begin
        if resetn = '0' then
            counter <= 0;
--            TC <= '0';
        elsif(INIT = '1') then
            counter <= INIT_VALUE;
        elsif rising_edge(clk) then
--            TC <= '0';
            if CE = '1' then
                if(counter >= end_value ) then
                    counter <= 0;
                else
                    counter <= counter + INCREASE_BY;
                end if;
            end if;
--            if( counter = MAX-1 ) then 
--                    TC <= '1';
--            end if;
        end if;
    end process;

end Behavioral;
