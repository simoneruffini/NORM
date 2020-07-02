----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2020 10:00:25 PM
-- Design Name: 
-- Module Name: POWER_APPROXIMATION_TESTBENCH - Behavioral
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

use work.POWER_APPROXIMATION_PKG.all;
use work.GLOBAL_SETTINGS.all;

entity POWER_APPROXIMATION_TESTBENCH is
--  Port ( );
end POWER_APPROXIMATION_TESTBENCH;

architecture Behavioral of POWER_APPROXIMATION_TESTBENCH is
    component POWER_APPROXIMATION is
        port(
            sys_clk                 : in std_logic;
            power_state_en          : in std_logic_vector(NUM_PWR_STATES - 1 downto 0); -- array of power state that are enable
            power_counter_val       : out power_approx_counter_type(NUM_PWR_STATES - 1 downto 0) := (others => 0); -- array of state counter values
            power_counter_full      : out std_logic_vector(NUM_PWR_STATES - 1 downto 0) := (others => '0'); -- array of terminal counters 
            power_counter_reset     : in std_logic_vector(NUM_PWR_STATES - 1 downto 0) -- array to reset counters
        );
    end component;
        
    signal sys_clk                  : std_logic := '0';
    signal power_state_en           : std_logic_vector(NUM_PWR_STATES - 1 downto 0) := (others => '0');
    signal power_counter_val        : power_approx_counter_type(NUM_PWR_STATES - 1 downto 0);
    signal power_counter_full       : std_logic_vector(NUM_PWR_STATES - 1 downto 0);
    signal power_counter_reset      : std_logic_vector(NUM_PWR_STATES - 1 downto 0) := (others => '0');
begin
    
    PWR_APPROX_1 : POWER_APPROXIMATION
        port map(
            sys_clk                 => sys_clk,
            power_state_en          => power_state_en,
            power_counter_val       => power_counter_val,
            power_counter_full      => power_counter_full,
            power_counter_reset     => power_counter_reset
        );
        
    clk_proc : process begin
        sys_clk <= '0';
        wait for 5 ns;
        sys_clk <= '1';
        wait for 5 ns;
    end process;
    
    power_management : process begin
        power_counter_reset <= (others => '0');
        wait for 100 ns;
        power_state_en(0) <= '1';
        wait for 100 ns;
        power_state_en(2) <= '1';
        wait for 100 ns;
        power_state_en(0) <= '0';
        wait;
        
    end process;

end Behavioral;
