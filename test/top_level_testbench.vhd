----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/19/2020 08:30:55 PM
-- Design Name: 
-- Module Name: top_level_testbench - Behavioral
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

use work.NVME_FRAMEWORK_PACKAGE.all;
use work.COMMON_PACKAGE.all;

entity top_level_testbench is
    
end top_level_testbench;

architecture Behavioral of top_level_testbench is
    component top_level is
    port(
        sys_clk                     : in std_logic;
        global_resetN               : in std_logic;
        IPC_start_evaluation        : in std_logic;
        IPC_evaluation_ready        : out std_logic;
        IPC_num_state_to_evaluate   : in integer range 0 to NUM_PWR_STATES;
        IPC_output_data             : out std_logic_vector(PWR_APPROX_COUNTER_NUM_BITS + PWR_CONSUMPTION_ROM_BITS downto 0);
        val1                        : out std_logic_vector(31 downto 0);
        val2                        : out std_logic_vector(31 downto 0);
        val3                        : out std_logic_vector(31 downto 0)
    );
    end component;
    
    signal IPC_start_evaluation        : std_logic;
    signal IPC_evaluation_ready        : std_logic;
    signal IPC_num_state_to_evaluate   : integer range 0 to NUM_PWR_STATES;
    signal IPC_output_data             : std_logic_vector(PWR_APPROX_COUNTER_NUM_BITS + PWR_CONSUMPTION_ROM_BITS downto 0);
    signal sys_clk : std_logic;
    signal global_resetN    : std_logic;
    signal val1,val2,val3   : std_logic_vector(31 downto 0);
    type IPC_fsm_type is(
        wait_state, 
        start_evaluation_1,
        wait_evaluation_1,
        start_evaluation_2,
        wait_evaluation_2,
        start_evaluation_3,
        wait_evaluation_3
    );
    signal IPC_fsm_state : IPC_fsm_type := wait_state;
    signal IPC_val0, IPC_val1, IPC_val2 : std_logic_vector(PWR_APPROX_COUNTER_NUM_BITS + PWR_CONSUMPTION_ROM_BITS downto 0) := (others => '0');
begin

    top_level_1 : top_level
    port map(
        sys_clk                     => sys_clk,
        global_resetN               => global_resetN,
        IPC_start_evaluation        => IPC_start_evaluation,
        IPC_evaluation_ready        => IPC_evaluation_ready,
        IPC_num_state_to_evaluate   => IPC_num_state_to_evaluate,
        IPC_output_data             => IPC_output_data,
        val1                        => val1,
        val2                        => val2,
        val3                        => val3
    );    
    
    
    
    IPC_fsm : process(sys_clk) begin
        if rising_edge(sys_clk) then
            IPC_start_evaluation <= '0';
            IPC_num_state_to_evaluate <= 0;
            case IPC_fsm_state is
                when wait_state =>
                    if (val1 = std_logic_vector(to_unsigned(1000,32))) then
                        IPC_fsm_state <= start_evaluation_1;
                    end if;
                when start_evaluation_1 =>  
                    IPC_start_evaluation <= '1';
                    IPC_fsm_state <= wait_evaluation_1;
                when wait_evaluation_1 =>
                    if(IPC_evaluation_ready = '1') then
                        IPC_val0 <= IPC_output_data;
                        IPC_fsm_state <= start_evaluation_2;
                    end if;
                when start_evaluation_2 =>
                    IPC_start_evaluation <= '1';
                    IPC_num_state_to_evaluate <= 1;
                    IPC_fsm_state <= wait_evaluation_2;
                when wait_evaluation_2 =>
                    IPC_num_state_to_evaluate <= 1;
                    if(IPC_evaluation_ready = '1') then
                        IPC_val1 <= IPC_output_data;
                        IPC_fsm_state <= start_evaluation_3;
                    end if;
                when start_evaluation_3 =>
                    IPC_start_evaluation <= '1';
                    IPC_num_state_to_evaluate <= 2;
                    IPC_fsm_state <= wait_evaluation_3;
                when wait_evaluation_3 =>
                    IPC_num_state_to_evaluate <= 2;
                    if(IPC_evaluation_ready = '1') then
                        IPC_val2 <= IPC_output_data;
                        IPC_fsm_state <= wait_state;
                    end if;          
            end case;
        end if;
    end process;
    
    reset_proc : process begin
        global_resetN <= '0';
        wait for 100 ns;
        global_resetN <= '1';
        wait;
    end process;

    clock_proc : process begin
        sys_clk <= '0';
        wait for MASTER_CLK_PERIOD_NS/2 * 1ns;
        sys_clk <= '1';
        wait for MASTER_CLK_PERIOD_NS/2 * 1ns;
    end process;    
    
end Behavioral;
