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
use work.INTERMITTENCY_PKG.all;
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
            power_state_en          : in std_logic_vector(NUM_PWR_STATE - 1 downto 0); -- array of power state that are enable
            power_state_out         : out power_state_out_type(NUM_PWR_STATE - 1 downto 0) := (others => 0); -- array of state counter values
            power_counter_full      : out power_counter_full_type(NUM_PWR_STATE - 1 downto 0) := (others => '0'); -- array of terminal counters 
            power_counter_reset    : in power_counter_resetN_type(NUM_PWR_STATE - 1 downto 0) -- array to reset counters
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
            evaluate_result         : out std_logic_vector(41 downto 0) -- evaluation result
        );
    end component;
    
    component INTERMITTENCY_EMULATOR is
        port(
            sys_clk             : in std_logic;
            resetN              : in std_logic;
            reset_emulator      : out std_logic;
            threshold_value     : in intermittency_arr_int_type(INTERMITTENCY_NUM_THRESHOLD - 1 downto 0);
            threshold_compared  : out std_logic_vector(INTERMITTENCY_NUM_THRESHOLD - 1 downto 0);
            select_threshold    : in integer range 0 to INTERMITTENCY_NUM_THRESHOLD -1
        );
    end component;
    
    component adder is    
        port(
            sys_clk     : in std_logic;
            resetN      : in std_logic;
            prescaler   : in std_logic_vector(NUM_PWR_STATE - 1 downto 0);
            BRAM_enb    : in std_logic;
            BRAM_addrb  : in std_logic_vector(0 downto 0);
            BRAM_doutb  : out std_logic_vector(63 downto 0);
            BRAM_busy   : out std_logic;
            BRAM_clk    : out std_logic;
            init_val    : in std_logic_vector(63 downto 0)
            
        );
    end component;
    
    --- POWER APPROXIMATION SIGNALS ---
    signal resetN                   : std_logic := '1';
    signal power_state_en           : std_logic_vector(NUM_PWR_STATE - 1 downto 0) := (others => '0');
    signal power_state_out          : power_state_out_type(NUM_PWR_STATE - 1 downto 0);
    signal power_counter_full       : power_counter_full_type(NUM_PWR_STATE - 1 downto 0) := (others => '0');
    signal power_counter_reset      : power_counter_resetN_type(NUM_PWR_STATE - 1 downto 0) := (others => '0');
    
    --- INSTANT PWR CALC ---
    signal start_evaluation        : std_logic; 
    signal evaluation_ready        : std_logic; 
    signal num_state_to_evaluate   : integer range 0 to NUM_PWR_STATE; 
    signal input_counter_val       : power_state_out_type(NUM_PWR_STATE -1 downto 0); 
    signal evaluate_result         : std_logic_vector(41 downto 0);
    
    --- INTERMITTENCY_EMULATOR ---
    signal reset_emulator      : std_logic;
    signal threshold_value     : intermittency_arr_int_type(INTERMITTENCY_NUM_THRESHOLD - 1 downto 0);
    signal threshold_compared  : std_logic_vector(INTERMITTENCY_NUM_THRESHOLD - 1 downto 0);
    signal select_threshold    : integer range 0 to INTERMITTENCY_NUM_THRESHOLD -1;
    
    --- ADDER signals ---
    signal adder_resetN     : std_logic;
    signal adder_prescaler  : std_logic_vector(NUM_PWR_STATE - 1 downto 0);
    signal BRAM_enb         : std_logic;
    signal BRAM_addrb       : std_logic_vector(0 downto 0);
    signal BRAM_doutb       : std_logic_vector(63 downto 0);
    signal BRAM_busy        : std_logic;
    signal BRAM_clk         : std_logic;
    signal init_val         : std_logic_vector(63 downto 0) := (others => '0');
    
    
    signal start_saving     : std_logic;
    type state_type is(
        wait_state,
        save_state_1,
        save_state_2,
        save_state_3
    );  
    signal present_state :  state_type := wait_state;
    
    signal reset_counter : integer := 0; 
begin
    
    PWR_APPROX_1 : POWER_APPROXIMATION
    port map(
        sys_clk                 => sys_clk,
        resetN                  => resetN,
        power_state_en          => power_state_en,
        power_state_out         => power_state_out,
        power_counter_full      => power_counter_full,
        power_counter_reset     => power_counter_reset
    );
    
    INSTANT_PWR_CALC_1 : INSTANT_PWR_CALC
    port map(
        sys_clk                 => sys_clk,
        resetN                  => resetN,
        start_evaluation        => start_evaluation,
        evaluation_ready        => evaluation_ready,
        num_state_to_evaluate   => num_state_to_evaluate,
        input_counter_val       => input_counter_val,
        evaluate_result         => evaluate_result
    );
        
    INTERMITTENCY_EMULATOR_1 : INTERMITTENCY_EMULATOR
    port map(
        sys_clk             => sys_clk,
        resetN              => resetN,
        reset_emulator      => reset_emulator,
        threshold_value     => threshold_value,
        threshold_compared  => threshold_compared,
        select_threshold    => select_threshold
    );
    
    ADDER_1 : adder
    port map(
        sys_clk     => sys_clk,
        resetN      => adder_resetN,
        prescaler   => adder_prescaler,
        BRAM_enb    => BRAM_enb,
        BRAM_addrb  => BRAM_addrb,
        BRAM_doutb  => BRAM_doutb,
        BRAM_busy   => BRAM_busy,
        BRAM_clk    => BRAM_clk,
        init_val    => init_val
    );
    
    adder_resetN <= not reset_emulator;
    power_state_en <= adder_prescaler;
    adder_prescaler <= "010";
    
    threshold_value(0) <= 300;
    threshold_value(1) <= 310;
--    threshold_value(2) <= 210;

    select_threshold <= 0;    
    
    start_saving <= threshold_compared(1);
    
    saving_process : process(BRAM_clk) begin
        
        if rising_edge(BRAM_clk) then
            present_state <= present_state;
            BRAM_enb <= '0';
            init_val <= init_val;
            case present_state is
                when wait_state =>
                    if start_saving = '1' and BRAM_busy = '0' then
                        present_state <= save_state_1;
                        BRAM_enb <= '1';
                        BRAM_addrb <= (others => '0');
                    end if;                                        
                when save_state_1 =>
                    present_state <= save_state_2;
                when save_state_2 =>
                    present_state <= save_state_3; 
                when save_state_3 =>
                    init_val <= BRAM_doutb;
                    present_state <= wait_state;                         
            end case;            
        end if;
    end process;
    
    count_reset_clk : process(sys_clk) begin
        if rising_edge(sys_clk) then
            if reset_emulator = '1' then
                reset_counter <= reset_counter + 1;
            end if;            
        end if;
    end process;

end Behavioral;
