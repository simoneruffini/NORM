----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/17/2020 06:52:04 PM
-- Design Name: 
-- Module Name: intermittency_emulator_testbench - Behavioral
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

use work.COMMON_PACKAGE.all;
use work.NVME_FRAMEWORK_PACKAGE.all;

entity intermittency_emulator_testbench is
--  Port ( );
end intermittency_emulator_testbench;

architecture Behavioral of intermittency_emulator_testbench is
    component INTERMITTENCY_EMULATOR is
        port(
            sys_clk             : in std_logic; 
            reset_emulator      : out std_logic; 
            threshold_value     : in intermittency_arr_int_type(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0);
            threshold_compared  : out std_logic_vector(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0); 
            select_threshold    : in integer range 0 to INTERMITTENCY_NUM_THRESHOLDS -1
        );
    end component;
    
    signal sys_clk             : std_logic;
    signal reset_emulator      : std_logic;
    signal threshold_value     : intermittency_arr_int_type(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0) := (300, 310);
    signal select_threshold    : integer range 0 to INTERMITTENCY_NUM_THRESHOLDS -1;
    signal threshold_compared  : std_logic_vector(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0); 
begin
    
    INTERMITTENCY_EMULATOR_1 : INTERMITTENCY_EMULATOR
        port map(
            sys_clk             => sys_clk,
            reset_emulator      => reset_emulator,
            threshold_value     => threshold_value,
            threshold_compared  => threshold_compared,
            select_threshold    => select_threshold
        );
    
    clock_proc : process begin
        sys_clk <= '0';
        wait for 5 ns;
        sys_clk <= '1';
        wait for 5 ns;
    end process;
    
    signal_process : process begin
        select_threshold <= 0;
        wait for 10 us;
        select_threshold <= 1;
        wait;
    end process;

end Behavioral;
