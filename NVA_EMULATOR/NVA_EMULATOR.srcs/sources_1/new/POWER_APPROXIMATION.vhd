----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2020 06:53:03 PM
-- Design Name: 
-- Module Name: POWER_APPROXIMATION - Behavioral
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

use work.POWER_APPROXIMATION_PKG.all;
use work.GLOBAL_SETTINGS.all;


entity POWER_APPROXIMATION is
    port(
        sys_clk                 : in std_logic; -- system clock
        power_state_en          : in std_logic_vector(NUM_PWR_STATE - 1 downto 0); -- array of power state that are enable
        power_state_out         : out power_state_out_type(NUM_PWR_STATE - 1 downto 0) := (others => 0); -- array of state counter values
        power_counter_full      : out power_counter_full_type(NUM_PWR_STATE - 1 downto 0) := (others => '0'); -- array of terminal counters 
        power_counter_reset     : in power_counter_resetN_type(NUM_PWR_STATE - 1 downto 0) -- array to reset counters
    );
end POWER_APPROXIMATION;

architecture Behavioral of POWER_APPROXIMATION is

    component counter is
        Generic(
            MAX         : INTEGER;
            INIT_VALUE  : INTEGER;
            INCREASE_BY : INTEGER
        );
        Port ( 
            clk         : in STD_LOGIC;
            INIT        : in STD_LOGIC;
            CE          : in STD_LOGIC;
            TC          : out STD_LOGIC;
            value       : out INTEGER RANGE 0 TO MAX
        );
        
        
    end component;
    
begin

    GEN_COUNTERS : for i in 0 to NUM_PWR_STATE - 1 generate 
        COUTER : counter 
            generic map(
                MAX         => 2**COUNTER_MAX_NUM_BIT-1,
                INIT_VALUE  => 0,
                INCREASE_BY => 1
            )
            port map(
                clk         => sys_clk,
                INIT        => power_counter_reset(i),
                CE          => power_state_en(i),
                TC          => power_counter_full(i),
                value       => power_state_out(i)
            );
    end generate;
    
    
    
end Behavioral;
