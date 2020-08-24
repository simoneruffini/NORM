----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/10/2020 04:16:02 PM
-- Design Name: 
-- Module Name: fsm_nv_reg_cb - Behavioral
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
use work.TEST_MODULE_PACKAGE.all;


entity fsm_nv_reg_cb is
    generic(
        PERIOD_BACKUP_CLKS      : integer
    );    
    port ( 
        clk                     : in STD_LOGIC;
        resetN                  : in STD_LOGIC;
        task_status             : in STD_LOGIC;
        fsm_state               : out fsm_nv_reg_state_t;
        fsm_state_sig           : out fsm_nv_reg_state_t --used with care (it is the future state of the machine, and it is combinatory so it is prone to glitces)
    );
end fsm_nv_reg_cb;

architecture Behavioral of fsm_nv_reg_cb is
    signal present_state, future_state : fsm_nv_reg_state_t;
    constant max_slack: INTEGER := 10;
    
    signal CB_count_init    : std_logic := '0';                 
    signal CB_count_CE      : std_logic := '0';
    signal CB_count_TC      : std_logic;
    signal CB_count_val     : integer range 0 to PERIOD_BACKUP_CLKS;
    
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
    
    COUTER : counter 
    generic map(
        MAX         => PERIOD_BACKUP_CLKS,
        INIT_VALUE  => 0,
        INCREASE_BY => 1
    )
    port map(
        clk         => clk,
        resetN      => resetN,
        INIT        => CB_count_init,
        CE          => CB_count_CE,
        TC          => CB_count_TC,
        value       => CB_count_val
    );
    
    FSM_MV_REG_SEQ: process (clk,resetN) is 
--    variable do_operation_s_slack: INTEGER RANGE 0 to max_slack;
    begin
        if resetN = '0' then
            present_state <= shutdown_s;
--            do_operation_s_slack := 0;
        elsif rising_edge(clk) then
            present_state <= future_state;
--            if(present_state = do_operation_s AND do_operation_s_slack < max_slack ) then
--                present_state <= do_operation_s;
--                do_operation_s_slack := do_operation_s_slack + 1;
--            else
--                do_operation_s_slack := 0;
--            end if;
        end if;  
    end process;
    
    
    
    FSM_NV_REG_FUTURE: process(present_state,task_status,CB_count_TC) is 
    begin
        future_state <= present_state; -- default do nothing
        CB_count_CE <= '0';
        CB_count_init <= '1';
        case present_state is
            when shutdown_s =>
                future_state <= init_s;
            when init_s =>
                future_state <= start_data_recovery_s;
            when start_data_recovery_s =>
                if (task_status = '1') then
                    future_state <= recovery_s;
                end if;
            when recovery_s =>
                if (task_status = '0') then
                    future_state <= data_recovered_s;
                end if;
            when data_recovered_s =>
                future_state <= do_operation_s;
            when do_operation_s =>
                CB_count_CE <= '1';
                CB_count_init <= '0';
                if(CB_count_TC = '1') then
                    future_state <= start_data_save_s;
                end if;
            when start_data_save_s =>
                if(task_status = '1') then
                    future_state <= data_save_s;    
                end if;
            when data_save_s =>
                if ( task_status = '0' ) then
                    future_state <=  data_saved_s;
                end if;
            when data_saved_s =>
                future_state <= do_operation_s;
            when others =>
        end case;
    end process FSM_NV_REG_FUTURE;
    
    fsm_state <= present_state;
    fsm_state_sig <= future_state;
    


end Behavioral;
