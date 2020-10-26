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

use work.COMMON_PACKAGE.all;
use work.NVME_FRAMEWORK_PACKAGE.all;


entity power_approximation is
    port(
        sys_clk                 : in std_logic; -- system clock
        power_state_en          : in std_logic_vector(NUM_PWR_STATES - 1 downto 0); -- array of power state that are enable
        power_counter_val       : out power_approx_counter_type(NUM_PWR_STATES - 1 downto 0) := (others => 0); -- array of state counter values
        power_counter_full      : out std_logic_vector(NUM_PWR_STATES - 1 downto 0) := (others => '0'); -- array of terminal counters 
        power_counter_reset     : in std_logic_vector(NUM_PWR_STATES - 1 downto 0) -- array to reset counters
    );
end power_approximation;

architecture Behavioral of power_approximation is

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
    
begin
    
    -- counter generator
    GEN_COUNTERS : for i in 0 to NUM_PWR_STATES - 1 generate 
        COUTER : counter 
            generic map(
                MAX         => 2**PWR_APPROX_COUNTER_NUM_BITS-1,
                INIT_VALUE  => 0,
                INCREASE_BY => 1
            )
            port map(
                clk         => sys_clk,
                resetn      => '1',
                INIT        => power_counter_reset(i),
                CE          => power_state_en(i),
                TC          => power_counter_full(i),
                value       => power_counter_val(i)
            );
    end generate;
    
    
    
end Behavioral;
