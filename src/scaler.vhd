----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/17/2020 05:51:16 PM
-- Design Name: 
-- Module Name: scaler - Behavioral
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

entity scaler is
    generic(
        PRESCALER : integer -- must be multiple of 2  
    );
    port(
        sys_clk         : in std_logic; -- system clock
        prescaler_clk   : out std_logic -- output clock
    );
end scaler;

architecture Behavioral of scaler is
    component counter is
        Generic(
            MAX         : INTEGER;
            INIT_VALUE  : INTEGER;
            INCREASE_BY : INTEGER
        );
        Port ( 
            clk         : in STD_LOGIC;
            resetN      : in STD_LOGIC;
            INIT        : in STD_LOGIC;
            CE          : in STD_LOGIC;
            TC          : out STD_LOGIC;
            value       : out INTEGER RANGE 0 TO MAX
        );
    end component;
    signal prescaler_clk_signal : std_logic := '0';
    signal TC_counter           : std_logic;
    signal value_counter        : integer range 0 to (PRESCALER / 2) - 1;
    
begin
    scaler_counter : counter
        generic map(
            MAX         => (PRESCALER / 2) - 1 ,
            INIT_VALUE  => 0,
            INCREASE_BY => 1
        )
        port map(
            clk     => sys_clk,
            resetN  => '1',
            INIT    => '0',
            CE      => '1',
            TC      => TC_counter,
            value   => value_counter 
        );

    create_clock : process(sys_clk) begin     
        if rising_edge(sys_clk) then
            if TC_counter = '1' then
                prescaler_clk_signal <= not prescaler_clk_signal; -- when terminal count goes high, change clock state
            end if;
        end if;
    end process;
    
    prescaler_clk <= prescaler_clk_signal;

end Behavioral;
