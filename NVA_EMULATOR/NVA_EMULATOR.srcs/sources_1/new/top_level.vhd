----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/17/2020 02:27:33 PM
-- Design Name: 
-- Module Name: top_level - Behavioral
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

entity top_level is
    port(
        sys_clk : in std_logic
    );
end top_level;

architecture Behavioral of top_level is
    component POWER_APPROXIMATION is
        port(
            sys_clk                 : in std_logic; -- system clock
            resetN                  : in std_logic; -- reset active low
            power_state_en          : in power_state_en_type(NUM_PWR_STATE - 1 downto 0); -- array of power state that are enable
            power_state_out         : out power_state_out_type(NUM_PWR_STATE - 1 downto 0) := (others => 0); -- array of state counter values
            power_counter_full      : out power_counter_full_type(NUM_PWR_STATE - 1 downto 0) := (others => '0'); -- array of terminal counters 
            power_counter_resetN    : in power_counter_resetN_type(NUM_PWR_STATE - 1 downto 0) -- array to reset counters
        );
    end component;
    
    component INSTANT_PWR_CALC is
        port (
            sys_clk                 : in std_logic; -- system clock
            resetN                  : in std_logic; -- reset active low
            start_evaluation        : in std_logic; -- start evaluation signal 
            evaluation_ready        : out std_logic; -- evaluation ready singal 
            num_state_to_evaluate   : in integer range 0 to NUM_PWR_STATE; -- number of state to evaluate
            input_counter_val       : in power_state_out_type(NUM_PWR_STATE -1 downto 0); -- array of each state counter
            evaluate_result         : out std_logic_vector((2*COUNTER_MAX_NUM_BIT)-1 downto 0) -- evaluation result
        );
    end component;
    
    --- POWER APPROXIMATION SIGNALS ---
    signal resetN                   : std_logic := '0';
    signal power_state_en           : power_state_en_type(NUM_PWR_STATE - 1 downto 0) := (others => '0');
    signal power_state_out          : power_state_out_type(NUM_PWR_STATE - 1 downto 0);
    signal power_counter_full       : power_counter_full_type(NUM_PWR_STATE - 1 downto 0) := (others => '0');
    signal power_counter_resetN     : power_counter_resetN_type(NUM_PWR_STATE - 1 downto 0) := (others => '1');
    
    --- INSTANT PWR CALC ---
    signal start_evaluation        : std_logic; 
    signal evaluation_ready        : std_logic; 
    signal num_state_to_evaluate   : integer range 0 to NUM_PWR_STATE; 
    signal input_counter_val       : power_state_out_type(NUM_PWR_STATE -1 downto 0); 
    signal evaluate_result         : std_logic_vector((2*COUNTER_MAX_NUM_BIT)-1 downto 0);
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


end Behavioral;
