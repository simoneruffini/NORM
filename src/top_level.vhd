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
use IEEE.math_real.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

use work.NVME_FRAMEWORK_PACKAGE.all;
use work.COMMON_PACKAGE.all;
use work.TEST_ARCHITECTURE_PACKAGE.all;

entity top_level is
    port(
        sys_clk         : in std_logic;
        global_resetN   : in std_logic;
        val1            : out std_logic_vector(31 downto 0);
        val2            : out std_logic_vector(31 downto 0);
        val3            : out std_logic_vector(31 downto 0)
    );
end top_level;

architecture Behavioral_db of top_level is
    component POWER_APPROXIMATION is
        port(
            sys_clk                 : in std_logic; -- system clock
            power_state_en          : in std_logic_vector(NUM_PWR_STATES - 1 downto 0); -- array of power state that are enable
            power_counter_val       : out power_approx_counter_type(NUM_PWR_STATES - 1 downto 0) := (others => 0); -- array of state counter values
            power_counter_full      : out std_logic_vector(NUM_PWR_STATES - 1 downto 0) := (others => '0'); -- array of terminal counters 
            power_counter_reset     : in std_logic_vector(NUM_PWR_STATES - 1 downto 0) -- array to reset counters
        );
    end component;
    
    component INSTANT_PWR_CALC is
        port (
            sys_clk                 : in std_logic; -- system clock
            start_evaluation        : in std_logic; -- start evaluation signal 
            evaluation_ready        : out std_logic; -- evaluation ready singal 
            num_state_to_evaluate   : in integer range 0 to NUM_PWR_STATES; -- number of state to evaluate
            input_counter_val       : in power_approx_counter_type(NUM_PWR_STATES -1 downto 0); -- array of each state counter
            output_data             : out std_logic_vector(PWR_APPROX_COUNTER_NUM_BITS + PWR_CONSUMPTION_ROM_BITS downto 0) -- output data
        );
    end component;
    
    component INTERMITTENCY_EMULATOR is
        port(
            sys_clk             : in std_logic; 
            reset_emulator      : out std_logic; 
            threshold_value     : in intermittency_arr_int_type(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0);
            threshold_compared  : out std_logic_vector(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0); 
            select_threshold    : in integer range 0 to INTERMITTENCY_NUM_THRESHOLDS -1
        );
    end component;
    
    component vol_arc is    
        port(
            sys_clk             : in std_logic;
            resetN              : in std_logic;
            fsm_nv_reg_state    : in fsm_nv_reg_state_t;
            task_status         : out STD_LOGIC;
            nv_reg_en           : out STD_LOGIC;
            nv_reg_busy         : in STD_LOGIC;
            nv_reg_busy_sig     : in STD_LOGIC; 
            nv_reg_we           : out STD_LOGIC_VECTOR( 0 DOWNTO 0);  
            nv_reg_addr         : out STD_LOGIC_VECTOR(nv_reg_addr_width_bit-1 DOWNTO 0);
            nv_reg_din          : out STD_LOGIC_VECTOR( 31 DOWNTO 0);
            nv_reg_dout         : in STD_LOGIC_VECTOR( 31 DOWNTO 0);
            vol_cntr1_value     : out STD_LOGIC_VECTOR( 31 DOWNTO 0);
            vol_cntr2_value     : out STD_LOGIC_VECTOR( 31 DOWNTO 0);
            vol_cntr3_value     : out STD_LOGIC_VECTOR( 31 DOWNTO 0)
        );
    end component;
    
    component fsm_nv_reg_db is
        port ( 
            clk                     : in STD_LOGIC;
            resetN                  : in STD_LOGIC;
            thresh_stats            : in threshold_t;
            task_status             : in STD_LOGIC;
            fsm_state               : out fsm_nv_reg_state_t;
            fsm_state_sig           : out fsm_nv_reg_state_t --used with care (it is the future state of the machine, and it is combinatory so it is prone to glitces)
        );
    end component;
    
    component nv_reg is
        generic(
            MAX_DELAY_NS: INTEGER;
            NV_REG_WIDTH: INTEGER
        );
        port ( 
            clk             : in STD_LOGIC;
            resetN          : in STD_LOGIC;
            power_resetN    : in STD_LOGIC;
            busy_sig        : out STD_LOGIC;
            busy            : out STD_LOGIC;
            --------------------------- 
            en              : in STD_LOGIC;
            we              : in STD_LOGIC_VECTOR(0 DOWNTO 0);
            addr            : in STD_LOGIC_VECTOR(integer(ceil(log2(real(NV_REG_WIDTH))))-1 DOWNTO 0);
            din             : in STD_LOGIC_VECTOR(31 DOWNTO 0);
            dout            : out STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    end component;
    
    signal resetN_emulator  : std_logic := '1';
    
    --- POWER APPROXIMATION SIGNALS ---
    signal power_state_en           : std_logic_vector(NUM_PWR_STATES - 1 downto 0) := (others => '0');
    signal power_counter_val        : power_approx_counter_type(NUM_PWR_STATES - 1 downto 0);
    signal power_counter_full       : std_logic_vector(NUM_PWR_STATES - 1 downto 0) := (others => '0');
    signal power_counter_reset      : std_logic_vector(NUM_PWR_STATES - 1 downto 0);
    
    --- INSTANT PWR CALC ---
    signal start_evaluation        : std_logic; 
    signal evaluation_ready        : std_logic; 
    signal num_state_to_evaluate   : integer range 0 to NUM_PWR_STATES; 
    signal input_counter_val       : power_approx_counter_type(NUM_PWR_STATES -1 downto 0); 
    signal output_data             : std_logic_vector(41 downto 0);
    
    --- INTERMITTENCY_EMULATOR ---
    signal reset_emulator      : std_logic;
    signal threshold_value     : intermittency_arr_int_type(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0);
    signal threshold_compared  : std_logic_vector(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0); 
    signal select_threshold    : integer range 0 to INTERMITTENCY_NUM_THRESHOLDS -1;
    
    --- vol_arc signals ---
    signal fsm_nv_reg_state    : fsm_nv_reg_state_t;
    signal task_status         : STD_LOGIC;
    
    --- FSM NV REG ---
    signal fsm_nv_reg_thresh_stats         : threshold_t;
    signal fsm_nv_reg_task_status          : STD_LOGIC;
    signal fsm_nv_reg_state_internal       : fsm_nv_reg_state_t;
    signal fsm_nv_reg_state_sig_internal   : fsm_nv_reg_state_t;
    
    --- NV REG ---
    signal nv_reg_busy_sig    : STD_LOGIC;
    signal nv_reg_busy        : STD_LOGIC;
    signal nv_reg_en          : STD_LOGIC;
    signal nv_reg_we          : STD_LOGIC_VECTOR(0 DOWNTO 0);
    signal nv_reg_addr        : STD_LOGIC_VECTOR(integer(ceil(log2(real(NV_REG_WIDTH))))-1 DOWNTO 0);
    signal nv_reg_din         : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal nv_reg_dout        : STD_LOGIC_VECTOR(31 DOWNTO 0);
    
    
    signal warning_signal     : std_logic := '0';
    type state_type is(
        wait_state,
        save_state_1,
        save_state_2,
        save_state_3,
        save_state_4
    );  
    signal present_state :  state_type := wait_state;
    
    signal val1_sig, val2_sig, val3_sig : std_logic_vector(31 downto 0); 
begin
    
    PWR_APPROX_1 : power_approximation
    port map(
        sys_clk                 => sys_clk,
        power_state_en          => power_state_en,
        power_counter_val       => power_counter_val,
        power_counter_full      => power_counter_full,
        power_counter_reset     => power_counter_reset
    );
    
    INSTANT_PWR_CALC_1 : instant_pwr_calc
    port map(
        sys_clk                 => sys_clk,
        start_evaluation        => start_evaluation,
        evaluation_ready        => evaluation_ready,
        num_state_to_evaluate   => num_state_to_evaluate,
        input_counter_val       => input_counter_val,
        output_data             => output_data
    );
        
    INTERMITTENCY_EMULATOR_1 : intermittency_emulator
    port map(
        sys_clk             => sys_clk,
        reset_emulator      => reset_emulator,
        threshold_value     => threshold_value,
        threshold_compared  => threshold_compared,
        select_threshold    => select_threshold
    );
    
    VOL_ARC_1: vol_arc
    port map(
        sys_clk             => sys_clk,
        resetN              => resetN_emulator,
        fsm_nv_reg_state    => fsm_nv_reg_state,
        task_status         => task_status,
        nv_reg_en           => nv_reg_en,
        nv_reg_busy         => nv_reg_busy,
        nv_reg_busy_sig     => nv_reg_busy_sig,
        nv_reg_we           => nv_reg_we,
        nv_reg_addr         => nv_reg_addr,
        nv_reg_din          => nv_reg_din,
        nv_reg_dout         => nv_reg_dout,
        vol_cntr1_value     => val1_sig,
        vol_cntr2_value     => val2_sig,
        vol_cntr3_value     => val3_sig
    );
    
    FSM_NV_REG_1 : fsm_nv_reg_db
    port map(
        clk             => sys_clk,
        resetN          => resetN_emulator,
        thresh_stats    => fsm_nv_reg_thresh_stats,
        task_status     => fsm_nv_reg_task_status,       
        fsm_state       => fsm_nv_reg_state_internal,
        fsm_state_sig   => fsm_nv_reg_state_sig_internal
    );
    
    NV_REG_1 : nv_reg
    generic map(
        MAX_DELAY_NS => FRAM_MAX_DELAY_NS,
        NV_REG_WIDTH => NV_REG_WIDTH
    ) 
    port map(
        clk             => sys_clk,
        resetN          => global_resetN,
        power_resetN    => resetN_emulator,
        busy_sig        => nv_reg_busy_sig,
        busy            => nv_reg_busy,
        en              => nv_reg_en,
        we              => nv_reg_we,
        addr            => nv_reg_addr,
        din             => nv_reg_din,
        dout            => nv_reg_dout
    );
    
    
    resetN_emulator <= not reset_emulator;
    power_state_en(0) <= '1';
    power_state_en(2) <= warning_signal;
    power_state_en(1) <= reset_emulator;
    
    threshold_value(0) <= 300;
    threshold_value(1) <= 310;
--    threshold_value(2) <= 210;

    power_counter_reset <= (others => '1') when global_resetN = '0' else (others => '0');

    select_threshold <= 0;    
    
    warning_signal <= threshold_compared(1);
    
    fsm_nv_reg_state <= fsm_nv_reg_state_internal;
    fsm_nv_reg_task_status <= task_status;
    
    fsm_nv_reg_thresh_stats <= hazard when threshold_compared(1) = '1' else nothing; 
                               
    val1 <= val1_sig;
    val2 <= val2_sig;
    val3 <= val3_sig;
    
end Behavioral_db;

architecture Behavioral_cb of top_level is
    component POWER_APPROXIMATION is
        port(
            sys_clk                 : in std_logic; -- system clock
            power_state_en          : in std_logic_vector(NUM_PWR_STATES - 1 downto 0); -- array of power state that are enable
            power_counter_val       : out power_approx_counter_type(NUM_PWR_STATES - 1 downto 0) := (others => 0); -- array of state counter values
            power_counter_full      : out std_logic_vector(NUM_PWR_STATES - 1 downto 0) := (others => '0'); -- array of terminal counters 
            power_counter_reset     : in std_logic_vector(NUM_PWR_STATES - 1 downto 0) -- array to reset counters
        );
    end component;
    
    component INSTANT_PWR_CALC is
        port (
            sys_clk                 : in std_logic; -- system clock
            start_evaluation        : in std_logic; -- start evaluation signal 
            evaluation_ready        : out std_logic; -- evaluation ready singal 
            num_state_to_evaluate   : in integer range 0 to NUM_PWR_STATES; -- number of state to evaluate
            input_counter_val       : in power_approx_counter_type(NUM_PWR_STATES -1 downto 0); -- array of each state counter
            output_data             : out std_logic_vector(PWR_APPROX_COUNTER_NUM_BITS + PWR_CONSUMPTION_ROM_BITS downto 0) -- output data
        );
    end component;
    
    component INTERMITTENCY_EMULATOR is
        port(
            sys_clk             : in std_logic; 
            reset_emulator      : out std_logic; 
            threshold_value     : in intermittency_arr_int_type(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0);
            threshold_compared  : out std_logic_vector(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0); 
            select_threshold    : in integer range 0 to INTERMITTENCY_NUM_THRESHOLDS -1
        );
    end component;
    
    component vol_arc is    
        port(
            sys_clk             : in std_logic;
            resetN              : in std_logic;
            fsm_nv_reg_state    : in fsm_nv_reg_state_t;
            task_status         : out STD_LOGIC;
            nv_reg_en           : out STD_LOGIC;
            nv_reg_busy         : in STD_LOGIC;
            nv_reg_busy_sig     : in STD_LOGIC; 
            nv_reg_we           : out STD_LOGIC_VECTOR( 0 DOWNTO 0);  
            nv_reg_addr         : out STD_LOGIC_VECTOR(nv_reg_addr_width_bit-1 DOWNTO 0);
            nv_reg_din          : out STD_LOGIC_VECTOR( 31 DOWNTO 0);
            nv_reg_dout         : in STD_LOGIC_VECTOR( 31 DOWNTO 0);
            vol_cntr1_value     : out STD_LOGIC_VECTOR( 31 DOWNTO 0);
            vol_cntr2_value     : out STD_LOGIC_VECTOR( 31 DOWNTO 0);
            vol_cntr3_value     : out STD_LOGIC_VECTOR( 31 DOWNTO 0)
        );
    end component;
    
    component fsm_nv_reg_cb is
        port ( 
            clk                     : in STD_LOGIC;
            resetN                  : in STD_LOGIC;
            task_status             : in STD_LOGIC;
            period_backup_clks      : integer;
            fsm_state               : out fsm_nv_reg_state_t;
            fsm_state_sig           : out fsm_nv_reg_state_t --used with care (it is the future state of the machine, and it is combinatory so it is prone to glitces)
        );
    end component;

    component nv_reg is
        generic(
            MAX_DELAY_NS: INTEGER;
            NV_REG_WIDTH: INTEGER
        );
        port ( 
            clk             : in STD_LOGIC;
            resetN          : in STD_LOGIC;
            power_resetN    : in STD_LOGIC;
            busy_sig        : out STD_LOGIC;
            busy            : out STD_LOGIC;
            --------------------------- 
            en              : in STD_LOGIC;
            we              : in STD_LOGIC_VECTOR(0 DOWNTO 0);
            addr            : in STD_LOGIC_VECTOR(integer(ceil(log2(real(NV_REG_WIDTH))))-1 DOWNTO 0);
            din             : in STD_LOGIC_VECTOR(31 DOWNTO 0);
            dout            : out STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    end component;
    
    signal resetN_emulator  : std_logic := '1';
    
    --- POWER APPROXIMATION SIGNALS ---
    signal power_state_en           : std_logic_vector(NUM_PWR_STATES - 1 downto 0) := (others => '0');
    signal power_counter_val        : power_approx_counter_type(NUM_PWR_STATES - 1 downto 0);
    signal power_counter_full       : std_logic_vector(NUM_PWR_STATES - 1 downto 0) := (others => '0');
    signal power_counter_reset      : std_logic_vector(NUM_PWR_STATES - 1 downto 0);
    
    --- INSTANT PWR CALC ---
    signal start_evaluation        : std_logic; 
    signal evaluation_ready        : std_logic; 
    signal num_state_to_evaluate   : integer range 0 to NUM_PWR_STATES; 
    signal input_counter_val       : power_approx_counter_type(NUM_PWR_STATES -1 downto 0); 
    signal output_data             : std_logic_vector(41 downto 0);
    
    --- INTERMITTENCY_EMULATOR ---
    signal reset_emulator      : std_logic;
    signal threshold_value     : intermittency_arr_int_type(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0);
    signal threshold_compared  : std_logic_vector(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0); 
    signal select_threshold    : integer range 0 to INTERMITTENCY_NUM_THRESHOLDS -1;
    
    --- vol_arc signals ---
    signal fsm_nv_reg_state    : fsm_nv_reg_state_t;
    signal task_status         : STD_LOGIC;
    
    --- FSM NV REG ---
    signal fsm_nv_reg_thresh_stats         : threshold_t;
    signal fsm_nv_reg_task_status          : STD_LOGIC;
    signal fsm_nv_reg_state_internal       : fsm_nv_reg_state_t;
    signal fsm_nv_reg_state_sig_internal   : fsm_nv_reg_state_t;
    
    --- NV REG ---
    signal nv_reg_busy_sig    : STD_LOGIC;
    signal nv_reg_busy        : STD_LOGIC;
    signal nv_reg_en          : STD_LOGIC;
    signal nv_reg_we          : STD_LOGIC_VECTOR(0 DOWNTO 0);
    signal nv_reg_addr        : STD_LOGIC_VECTOR(integer(ceil(log2(real(NV_REG_WIDTH))))-1 DOWNTO 0);
    signal nv_reg_din         : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal nv_reg_dout        : STD_LOGIC_VECTOR(31 DOWNTO 0);
    
    
    signal warning_signal     : std_logic := '0';
    type state_type is(
        wait_state,
        save_state_1,
        save_state_2,
        save_state_3,
        save_state_4
    );  
    signal present_state :  state_type := wait_state;
    
    signal val1_sig, val2_sig, val3_sig : std_logic_vector(31 downto 0); 
begin
    
    PWR_APPROX_1 : power_approximation
    port map(
        sys_clk                 => sys_clk,
        power_state_en          => power_state_en,
        power_counter_val       => power_counter_val,
        power_counter_full      => power_counter_full,
        power_counter_reset     => power_counter_reset
    );
    
    INSTANT_PWR_CALC_1 : instant_pwr_calc
    port map(
        sys_clk                 => sys_clk,
        start_evaluation        => start_evaluation,
        evaluation_ready        => evaluation_ready,
        num_state_to_evaluate   => num_state_to_evaluate,
        input_counter_val       => input_counter_val,
        output_data             => output_data
    );
        
    INTERMITTENCY_EMULATOR_1 : intermittency_emulator
    port map(
        sys_clk             => sys_clk,
        reset_emulator      => reset_emulator,
        threshold_value     => threshold_value,
        threshold_compared  => threshold_compared,
        select_threshold    => select_threshold
    );
    
    VOL_ARC_1: vol_arc
    port map(
        sys_clk             => sys_clk,
        resetN              => resetN_emulator,
        fsm_nv_reg_state    => fsm_nv_reg_state,
        task_status         => task_status,
        nv_reg_en           => nv_reg_en,
        nv_reg_busy         => nv_reg_busy,
        nv_reg_busy_sig     => nv_reg_busy_sig,
        nv_reg_we           => nv_reg_we,
        nv_reg_addr         => nv_reg_addr,
        nv_reg_din          => nv_reg_din,
        nv_reg_dout         => nv_reg_dout,
        vol_cntr1_value     => val1_sig,
        vol_cntr2_value     => val2_sig,
        vol_cntr3_value     => val3_sig
    );

    FSM_NV_REG_1 : fsm_nv_reg_cb
    port map(
        clk                 => sys_clk,
        resetN              => resetN_emulator,
        task_status         => fsm_nv_reg_task_status,   
        period_backup_clks  => 975,    
        fsm_state           => fsm_nv_reg_state_internal,
        fsm_state_sig       => fsm_nv_reg_state_sig_internal
    );

    NV_REG_1 : nv_reg
    generic map(
        MAX_DELAY_NS => FRAM_MAX_DELAY_NS,
        NV_REG_WIDTH => NV_REG_WIDTH
    ) 
    port map(
        clk             => sys_clk,
        resetN          => global_resetN,
        power_resetN    => resetN_emulator,
        busy_sig        => nv_reg_busy_sig,
        busy            => nv_reg_busy,
        en              => nv_reg_en,
        we              => nv_reg_we,
        addr            => nv_reg_addr,
        din             => nv_reg_din,
        dout            => nv_reg_dout
    );
    
    
    resetN_emulator <= not reset_emulator;
    power_state_en(0) <= '1';
    power_state_en(2) <= warning_signal;
    power_state_en(1) <= reset_emulator;
    
    threshold_value(0) <= 300;
    threshold_value(1) <= 310;
--    threshold_value(2) <= 210;

    power_counter_reset <= (others => '1') when global_resetN = '0' else (others => '0');

    select_threshold <= 0;    
        
    warning_signal <= threshold_compared(1);
    
    fsm_nv_reg_state <= fsm_nv_reg_state_internal;
    fsm_nv_reg_task_status <= task_status;
    
    fsm_nv_reg_thresh_stats <= hazard when threshold_compared(1) = '1' else nothing; 
                               
    val1 <= val1_sig;
    val2 <= val2_sig;
    val3 <= val3_sig;

end Behavioral_cb;

architecture Behavioral_tb of top_level is
    component POWER_APPROXIMATION is
        port(
            sys_clk                 : in std_logic; -- system clock
            power_state_en          : in std_logic_vector(NUM_PWR_STATES - 1 downto 0); -- array of power state that are enable
            power_counter_val       : out power_approx_counter_type(NUM_PWR_STATES - 1 downto 0) := (others => 0); -- array of state counter values
            power_counter_full      : out std_logic_vector(NUM_PWR_STATES - 1 downto 0) := (others => '0'); -- array of terminal counters 
            power_counter_reset     : in std_logic_vector(NUM_PWR_STATES - 1 downto 0) -- array to reset counters
        );
    end component;
    
    component INSTANT_PWR_CALC is
        port (
            sys_clk                 : in std_logic; -- system clock
            start_evaluation        : in std_logic; -- start evaluation signal 
            evaluation_ready        : out std_logic; -- evaluation ready singal 
            num_state_to_evaluate   : in integer range 0 to NUM_PWR_STATES; -- number of state to evaluate
            input_counter_val       : in power_approx_counter_type(NUM_PWR_STATES -1 downto 0); -- array of each state counter
            output_data             : out std_logic_vector(PWR_APPROX_COUNTER_NUM_BITS + PWR_CONSUMPTION_ROM_BITS downto 0) -- output data
        );
    end component;
    
    component INTERMITTENCY_EMULATOR is
        port(
            sys_clk             : in std_logic; 
            reset_emulator      : out std_logic; 
            threshold_value     : in intermittency_arr_int_type(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0);
            threshold_compared  : out std_logic_vector(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0); 
            select_threshold    : in integer range 0 to INTERMITTENCY_NUM_THRESHOLDS -1
        );
    end component;
    
    component vol_arc is    
        port(
            sys_clk             : in std_logic;
            resetN              : in std_logic;
            fsm_nv_reg_state    : in fsm_nv_reg_state_t;
            task_status         : out STD_LOGIC;
            nv_reg_en           : out STD_LOGIC;
            nv_reg_busy         : in STD_LOGIC;
            nv_reg_busy_sig     : in STD_LOGIC; 
            nv_reg_we           : out STD_LOGIC_VECTOR( 0 DOWNTO 0);  
            nv_reg_addr         : out STD_LOGIC_VECTOR(nv_reg_addr_width_bit-1 DOWNTO 0);
            nv_reg_din          : out STD_LOGIC_VECTOR( 31 DOWNTO 0);
            nv_reg_dout         : in STD_LOGIC_VECTOR( 31 DOWNTO 0);
            vol_cntr1_value     : out STD_LOGIC_VECTOR( 31 DOWNTO 0);
            vol_cntr2_value     : out STD_LOGIC_VECTOR( 31 DOWNTO 0);
            vol_cntr3_value     : out STD_LOGIC_VECTOR( 31 DOWNTO 0)
        );
    end component;
    
    component fsm_nv_reg_tb is
        port ( 
            clk                     : in STD_LOGIC;
            resetN                  : in STD_LOGIC;
            volatile_counter_val    : in STD_LOGIC_VECTOR(31 downto 0);
            task_status             : in STD_LOGIC;
            fsm_state               : out fsm_nv_reg_state_t;
            fsm_state_sig           : out fsm_nv_reg_state_t --used with care (it is the future state of the machine, and it is combinatory so it is prone to glitces)
        );
    end component;
    
    component nv_reg is
        generic(
            MAX_DELAY_NS: INTEGER;
            NV_REG_WIDTH: INTEGER
        );
        port ( 
            clk             : in STD_LOGIC;
            resetN          : in STD_LOGIC;
            power_resetN    : in STD_LOGIC;
            busy_sig        : out STD_LOGIC;
            busy            : out STD_LOGIC;
            --------------------------- 
            en              : in STD_LOGIC;
            we              : in STD_LOGIC_VECTOR(0 DOWNTO 0);
            addr            : in STD_LOGIC_VECTOR(integer(ceil(log2(real(NV_REG_WIDTH))))-1 DOWNTO 0);
            din             : in STD_LOGIC_VECTOR(31 DOWNTO 0);
            dout            : out STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    end component;
    
    signal resetN_emulator  : std_logic := '1';
    
    --- POWER APPROXIMATION SIGNALS ---
    signal power_state_en           : std_logic_vector(NUM_PWR_STATES - 1 downto 0) := (others => '0');
    signal power_counter_val        : power_approx_counter_type(NUM_PWR_STATES - 1 downto 0);
    signal power_counter_full       : std_logic_vector(NUM_PWR_STATES - 1 downto 0) := (others => '0');
    signal power_counter_reset      : std_logic_vector(NUM_PWR_STATES - 1 downto 0);
    
    --- INSTANT PWR CALC ---
    signal start_evaluation        : std_logic; 
    signal evaluation_ready        : std_logic; 
    signal num_state_to_evaluate   : integer range 0 to NUM_PWR_STATES; 
    signal input_counter_val       : power_approx_counter_type(NUM_PWR_STATES -1 downto 0); 
    signal output_data             : std_logic_vector(41 downto 0);
    
    --- INTERMITTENCY_EMULATOR ---
    signal reset_emulator      : std_logic;
    signal threshold_value     : intermittency_arr_int_type(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0);
    signal threshold_compared  : std_logic_vector(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0); 
    signal select_threshold    : integer range 0 to INTERMITTENCY_NUM_THRESHOLDS -1;
    
    --- vol_arc signals ---
    signal fsm_nv_reg_state    : fsm_nv_reg_state_t;
    signal task_status         : STD_LOGIC;
    
    --- FSM NV REG ---
    signal fsm_nv_reg_thresh_stats         : threshold_t;
    signal fsm_nv_reg_task_status          : STD_LOGIC;
    signal fsm_nv_reg_state_internal       : fsm_nv_reg_state_t;
    signal fsm_nv_reg_state_sig_internal   : fsm_nv_reg_state_t;
    
    --- NV REG ---
    signal nv_reg_busy_sig    : STD_LOGIC;
    signal nv_reg_busy        : STD_LOGIC;
    signal nv_reg_en          : STD_LOGIC;
    signal nv_reg_we          : STD_LOGIC_VECTOR(0 DOWNTO 0);
    signal nv_reg_addr        : STD_LOGIC_VECTOR(integer(ceil(log2(real(NV_REG_WIDTH))))-1 DOWNTO 0);
    signal nv_reg_din         : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal nv_reg_dout        : STD_LOGIC_VECTOR(31 DOWNTO 0);
    
    
    signal warning_signal     : std_logic := '0';
    type state_type is(
        wait_state,
        save_state_1,
        save_state_2,
        save_state_3,
        save_state_4
    );  
    signal present_state :  state_type := wait_state;
    
    signal val1_sig, val2_sig, val3_sig : std_logic_vector(31 downto 0); 
begin
    
    PWR_APPROX_1 : power_approximation
    port map(
        sys_clk                 => sys_clk,
        power_state_en          => power_state_en,
        power_counter_val       => power_counter_val,
        power_counter_full      => power_counter_full,
        power_counter_reset     => power_counter_reset
    );
    
    INSTANT_PWR_CALC_1 : instant_pwr_calc
    port map(
        sys_clk                 => sys_clk,
        start_evaluation        => start_evaluation,
        evaluation_ready        => evaluation_ready,
        num_state_to_evaluate   => num_state_to_evaluate,
        input_counter_val       => input_counter_val,
        output_data             => output_data
    );
        
    INTERMITTENCY_EMULATOR_1 : intermittency_emulator
    port map(
        sys_clk             => sys_clk,
        reset_emulator      => reset_emulator,
        threshold_value     => threshold_value,
        threshold_compared  => threshold_compared,
        select_threshold    => select_threshold
    );
    
    VOL_ARC_1: vol_arc
    port map(
        sys_clk             => sys_clk,
        resetN              => resetN_emulator,
        fsm_nv_reg_state    => fsm_nv_reg_state,
        task_status         => task_status,
        nv_reg_en           => nv_reg_en,
        nv_reg_busy         => nv_reg_busy,
        nv_reg_busy_sig     => nv_reg_busy_sig,
        nv_reg_we           => nv_reg_we,
        nv_reg_addr         => nv_reg_addr,
        nv_reg_din          => nv_reg_din,
        nv_reg_dout         => nv_reg_dout,
        vol_cntr1_value     => val1_sig,
        vol_cntr2_value     => val2_sig,
        vol_cntr3_value     => val3_sig
    );
    
    FSM_NV_REG_1 : fsm_nv_reg_tb
    port map(
        clk                     => sys_clk,
        resetN                  => resetN_emulator,
        volatile_counter_val    => val1_sig,
        task_status             => fsm_nv_reg_task_status,       
        fsm_state               => fsm_nv_reg_state_internal,
        fsm_state_sig           => fsm_nv_reg_state_sig_internal
    );

    NV_REG_1 : nv_reg
    generic map(
        MAX_DELAY_NS => FRAM_MAX_DELAY_NS,
        NV_REG_WIDTH => NV_REG_WIDTH
    ) 
    port map(
        clk             => sys_clk,
        resetN          => global_resetN,
        power_resetN    => resetN_emulator,
        busy_sig        => nv_reg_busy_sig,
        busy            => nv_reg_busy,
        en              => nv_reg_en,
        we              => nv_reg_we,
        addr            => nv_reg_addr,
        din             => nv_reg_din,
        dout            => nv_reg_dout
    );
    
    
    resetN_emulator <= not reset_emulator;
    power_state_en(0) <= '1';
    power_state_en(2) <= warning_signal;
    power_state_en(1) <= reset_emulator;
    
    threshold_value(0) <= 300;
    threshold_value(1) <= 310;
--    threshold_value(2) <= 210;

    power_counter_reset <= (others => '1') when global_resetN = '0' else (others => '0');

    select_threshold <= 0;    
        
    warning_signal <= threshold_compared(1);
    
    fsm_nv_reg_state <= fsm_nv_reg_state_internal;
    fsm_nv_reg_task_status <= task_status;
    
    fsm_nv_reg_thresh_stats <= hazard when threshold_compared(1) = '1' else nothing; 
                               
    val1 <= val1_sig;
    val2 <= val2_sig;
    val3 <= val3_sig;
end Behavioral_tb;