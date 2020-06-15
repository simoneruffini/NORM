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
            resetN                  : in std_logic;
            power_state_en          : in power_state_en_type(NUM_PWR_STATE - 1 downto 0);
            power_state_out         : out power_state_out_type(NUM_PWR_STATE - 1 downto 0) := (others => 0);
            power_counter_full      : out power_counter_full_type(NUM_PWR_STATE - 1 downto 0) := (others => '0');
            power_counter_resetN    : in power_counter_resetN_type(NUM_PWR_STATE - 1 downto 0)
        );
    end component;
        
    signal sys_clk                  : std_logic := '0';
    signal resetN                   : std_logic := '0';
    signal power_state_en           : power_state_en_type(NUM_PWR_STATE - 1 downto 0) := (others => '0');
    signal power_state_out          : power_state_out_type(NUM_PWR_STATE - 1 downto 0);
    signal power_counter_full       : power_counter_full_type(NUM_PWR_STATE - 1 downto 0) := (others => '0');
    signal power_counter_resetN     : power_counter_resetN_type(NUM_PWR_STATE - 1 downto 0);
begin
    
    PWR_APPROX_1 : POWER_APPROXIMATION
        port map(
            sys_clk                 => sys_clk,
            resetN                  => resetN,
            power_state_en          => power_state_en,
            power_state_out         => power_state_out,
            power_counter_full      => power_counter_full,
            power_counter_resetN    => power_counter_resetN
        );
        
    clk_proc : process begin
        sys_clk <= '0';
        wait for 5 ns;
        sys_clk <= '1';
        wait for 5 ns;
    end process;
    
    reset_proc : process begin
        wait for 50 ns;
        resetN <= '1';
        wait;
    end process;
    
    power_management : process begin
        power_counter_resetN <= (others => '0');
        wait for 100 ns;
        power_state_en(0) <= '1';
        wait for 100 ns;
        power_state_en(2) <= '1';
        wait for 100 ns;
        power_state_en(0) <= '0';
        wait;
        
    end process;

end Behavioral;
