----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/28/2020 02:10:22 PM
-- Design Name: 
-- Module Name: fsm_nv_reg_testbench - Behavioral
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
use work.ARCHITECTURE_PACKAGE.all;

entity fsm_nv_reg_testbench is
--  Port ( );
end fsm_nv_reg_testbench;

architecture Behavioral of fsm_nv_reg_testbench is
    signal MASTER_CLK,MASTER_RESETN: STD_LOGIC;
    
    
    -----------------------------FSM_NV_REG_SIGNALS---------------------------------------
    signal thresh : threshold_t;
    signal fsm_status : fsm_nv_reg_state_t;
    signal task_status: STD_LOGIC;
    signal power_resetN: STD_LOGIC;
    --------------------------------------------------------------------------------------
    
begin
    
    FSM_NV_REG_p: entity work.fsm_nv_reg(Behavioral)
    port map( 
        clk                 => MASTER_CLK,
        resetN              => power_resetN,
        thresh_stats        => thresh,
        task_status         => task_status,
        status              => fsm_status 
    );
    
    CLK: process begin
        MASTER_CLK <= '0';
        wait for MASTER_CLK_PERIOD/2;
        MASTER_CLK <= '1';
        wait for MASTER_CLK_PERIOD/2;
    end process;
    

    POWER_THRESH_SIM: process begin
        power_resetN <= '0';
        thresh <= nothing;
        wait for 10*MASTER_CLK_PERIOD;
        power_resetN <= '1';
        wait for 10*MASTER_CLK_PERIOD;
        thresh <= hazard;
        wait for 5 * MASTER_CLK_PERIOD;
        power_resetN <='0';
        wait for 5 * MASTER_CLK_PERIOD;
        power_resetN <='1';
        thresh <= nothing;
        wait; 
    end process;
    
    TSK_STAT: process(power_resetN,MASTER_CLK) is
    begin
        if(power_resetN ='0') then
            task_status <= '0';
        elsif(rising_edge(MASTER_CLK)) then
            if(fsm_status = start_data_recovery_s OR fsm_status = start_data_save_s) then
                task_status <= '1';
            else
                task_status <= '0';
            end if;
        end if;
    end process;
end Behavioral;
