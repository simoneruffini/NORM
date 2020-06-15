----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/14/2020 12:13:18 PM
-- Design Name: 
-- Module Name: INSTANT_PWR_CALC_TESTBENCH - Behavioral
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

entity INSTANT_PWR_CALC_TESTBENCH is
--  Port ( );
end INSTANT_PWR_CALC_TESTBENCH;

architecture Behavioral of INSTANT_PWR_CALC_TESTBENCH is

    component INSTANT_PWR_CALC is
        port (
            sys_clk                 : in std_logic;
            resetN                  : in std_logic;
            start_evaluation        : in std_logic;
            evaluation_ready        : out std_logic;
            num_state_to_evaluate   : in integer range 0 to NUM_PWR_STATE;
            input_counter_val       : in power_state_out_type(NUM_PWR_STATE -1 downto 0);
            evaluate_result         : out std_logic_vector((2*COUNTER_MAX_NUM_BIT)-1 downto 0)
        );
    end component;
    
    constant NUM_PWR_STATE         : integer := 3;
    signal sys_clk                 : std_logic;
    signal resetN                  : std_logic;
    signal start_evaluation        : std_logic;
    signal evaluation_ready        : std_logic;
    signal num_state_to_evaluate   : integer range 0 to NUM_PWR_STATE;
    signal input_counter_val       : power_state_out_type(NUM_PWR_STATE -1 downto 0);
    signal evaluate_result         : std_logic_vector((2*COUNTER_MAX_NUM_BIT)-1 downto 0);
    
begin

    INSTANT_PWR_CALC_1 : INSTANT_PWR_CALC
        port map(
            sys_clk => sys_clk,
            resetN => resetN,
            start_evaluation => start_evaluation,
            evaluation_ready => evaluation_ready,
            num_state_to_evaluate => num_state_to_evaluate,
            input_counter_val => input_counter_val,
            evaluate_result => evaluate_result
        );
        
    clock_proc : process begin
        sys_clk <= '0';
        wait for 5 ns;
        sys_clk <= '1';
        wait for 5 ns;
    end process;
    
    signal_proc : process begin
        wait for 20 ns;
        resetN <= '1';
        start_evaluation <= '1';
        num_state_to_evaluate <= 1;
        input_counter_val(1) <= 1023;
        wait for 10 ns;
        start_evaluation <= '0';
        num_state_to_evaluate <= 2;
        input_counter_val(2) <= 512;
        wait for 100 ns;
        start_evaluation <= '1';
        wait for 10 ns;
        start_evaluation <= '0';
        wait;
    end process;

end Behavioral;
