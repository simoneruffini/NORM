----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/23/2020 05:16:15 PM
-- Design Name: 
-- Module Name: adder_testbench - Behavioral
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
use work.COMMON_PACKAGE.all;
use work.ARCHITECTURE_PACKAGE.all;

entity adder_testbench is
--  Port ( );
end adder_testbench;


architecture Behavioral of adder_testbench is
    signal MASTER_CLK,MASTER_RESETN: STD_LOGIC;
    
    signal power_resetN,power_resetN_2: STD_LOGIC;
    ----------------------------INTERNAL SIGNALS-----------------------------------------
    signal nv_reg_en, nv_reg_busy,nv_reg_clk: STD_LOGIC; 
    signal nv_reg_we: STD_LOGIC_VECTOR( 3 DOWNTO 0);  
    signal nv_reg_addr,nv_reg_din,nv_reg_dout,d_rec_nv_reg_start_addr,d_recovered : STD_LOGIC_VECTOR( 31 DOWNTO 0);
    signal d_rec_offset, d_recovered_offset: INTEGER;
    --------------------------------------------------------------------------------------
    -----------------------------FSM_NV_REG_SIGNALS---------------------------------------
    signal thresh : threshold_t;
    signal task_status : STD_LOGIC;
    signal fsm_status : fsm_nv_reg_state_t;
    --------------------------------------------------------------------------------------
    -----------------------------FSM_D_REC_SIGNALS----------------------------------------
    signal clk,resetN:STD_LOGIC;
    type fsm_d_rec_states is(
        wait_state,
        cycle_start_state,
        cycle_state
    );
    signal present_state_d_rec, future_state_d_rec : fsm_d_rec_states;
    --------------------------------------------------------------------------------------
    ----------------------------FILLING SIGNALS-------------------------------------------
    signal filling_signal: STD_LOGIC;
    signal nv_reg_we_fill: STD_LOGIC_VECTOR( 3 DOWNTO 0);  
    signal nv_reg_addr_fill: STD_LOGIC_VECTOR( 31 DOWNTO 0);
    --------------------------------------------------------------------------------------

    -------------------------------DATA_REC_SIGNALS---------------------------------------
    signal nv_reg_addr_d_rec : STD_LOGIC_VECTOR( 31 DOWNTO 0);
    signal d_recovered_offset_d_rec: INTEGER;
    signal data_recovery_busy: STD_LOGIC;
    signal nv_reg_we_rec: STD_LOGIC_VECTOR( 3 DOWNTO 0);  
    signal nv_reg_addr_rec: STD_LOGIC_VECTOR( 31 DOWNTO 0);
    --------------------------------------------------------------------------------------
    --------------------------------COUNTER_SIGNALS---------------------------------------
    signal init,ce,tc: STD_LOGIC;
    signal i, end_value: INTEGER;
    --------------------------------------------------------------------------------------
    -------------------------------SAVE_SIGNALS-------------------------------------------
    signal data_save_busy: STD_LOGIC;
    signal nv_reg_addr_save : STD_LOGIC_VECTOR( 31 DOWNTO 0);
    signal nv_reg_we_save: STD_LOGIC_VECTOR( 3 DOWNTO 0);  
    --------------------------------------------------------------------------------------

   

begin
    FRAM: entity work.nv_reg(Behavioral)
    port map(
        clk     => MASTER_CLK,
        resetN  => power_resetN,
        en      => nv_reg_en,
        we      => nv_reg_we,
        addr    => nv_reg_addr,
        din     => nv_reg_din,
        dout    => nv_reg_dout,
        real_clk=> nv_reg_clk,
        busy    => nv_reg_busy
    );
    
    NV_REG_PORTS_CONTROLLER: process (filling_signal,data_recovery_busy,data_save_busy) is
    begin
        if(filling_signal = '1') then
            nv_reg_we <= nv_reg_we_fill;
            nv_reg_addr <=nv_reg_addr_fill;
        elsif(data_recovery_busy = '1') then
            nv_reg_we <= nv_reg_we_rec;
            nv_reg_addr <=nv_reg_addr_rec;
        elsif(data_save_busy = '1') then
            nv_reg_we <= nv_reg_we_save;
            nv_reg_addr <=nv_reg_addr_save;
        end if;
    end process;
    
    FSM_NV_REG_p: entity work.fsm_nv_reg(Behavioral)
    port map( 
        clk                 => MASTER_CLK,
        resetN              => power_resetN_2,
        thresh_stats        => thresh,
        task_status         => task_status,
        status              => fsm_status 
    );
    
    TASK_STATUS_CNTRL: process (data_recovery_busy,data_save_busy) is
    begin
         if(data_recovery_busy = '0' AND data_save_busy = '0') then
            task_status <= '0';
         else
            task_status <= '1';
         end if;
    end process;
    
    M_CLK: process begin
        MASTER_CLK <= '0';
        wait for MASTER_CLK_PERIOD/2;
        MASTER_CLK <= '1';
        wait for MASTER_CLK_PERIOD/2;
    end process;
    
    
    FILL_NV_REG: process begin
        filling_signal <='0';
        wait for 15 * MASTER_CLK_PERIOD;
        if(nv_reg_busy /= '1') then
            filling_signal <= '1';
            for j in 0 to 2 loop
                nv_reg_we_fill <= (OTHERS => '1');
                nv_reg_addr_fill <= std_logic_vector(to_unsigned(j,32));
                wait for MASTER_CLK_PERIOD * NV_PRESCALER;
            end loop;
            wait for MASTER_CLK_PERIOD * NV_PRESCALER;
            filling_signal <='0';
        end if;
        wait;
    end process FILL_NV_REG;
    
    TEST_FSM_NV_REG_COMPLETE: process begin
            power_resetN<= '0';
            power_resetN_2<= '0';
            thresh <= hazard;
            d_rec_nv_reg_start_addr <= std_logic_vector(to_unsigned(1,32));
            d_rec_offset <= 2;
            nv_reg_en <= '1';
            power_resetN <= '0';
        wait for 10 * MASTER_CLK_PERIOD;
            power_resetN <= '1'; --filling time
        wait for 20 * MASTER_CLK_PERIOD;
            power_resetN_2 <='1'; --fsm starts
            thresh <=  nothing;
        wait for 20 * MASTER_CLK_PERIOD;
            thresh <= hazard;
        wait for 4 * MASTER_CLK_PERIOD;
            power_resetN_2 <='0';
        wait for 4 * MASTER_CLK_PERIOD;
            power_resetN_2 <= '1';
            thresh <= nothing;
        wait;
    end process;
    
    --------------------------------------------------D_REC-------------------------------------------------------------------
    clk <= MASTER_CLK;
    resetN <= power_resetN_2;
    
    FSM_D_REC_SEQ: process (clk,resetN) is 
    begin
        if resetN = '0' then
            present_state_d_rec <= wait_state;
        elsif rising_edge(clk) then
            present_state_d_rec <= future_state_d_rec;
        end if;  
    end process;
    
    FSM_D_REC_FUT: process(present_state_d_rec,fsm_status,tc) is
    begin
        future_state_d_rec <= present_state_d_rec;
        case present_state_d_rec is
            when wait_state =>
                if(fsm_status=start_data_recovery_s) then
                    future_state_d_rec <= cycle_start_state;
                end if;
            when cycle_start_state =>
                future_state_d_rec <= cycle_state;
            when cycle_state =>
                if(tc ='1') then
                    future_state_d_rec <= wait_state;
                end if;
            when others =>
        end case FSM_D_REC_FUT;
        
    end process;
    
    
    d_recovered <= nv_reg_dout when data_recovery_busy = '1' else (OTHERS => '0');
    
    d_recovered_offset  <= d_recovered_offset_d_rec;
           
    
    FSM_D_REC_OUT: process(present_state_d_rec,i,nv_reg_busy) is 
    begin
        ---------------DEFAULT------------------
        data_recovery_busy <= '0';
        nv_reg_addr_d_rec <=nv_reg_addr_d_rec;
        d_recovered_offset_d_rec <= d_recovered_offset_d_rec;
        init <= '0';
        ce<='0';
        ---------------------------------------- 
        case present_state_d_rec is
            when wait_state =>
                nv_reg_addr_d_rec <= d_rec_nv_reg_start_addr;
                d_recovered_offset_d_rec <= 0;
                init <= '1';
            when cycle_start_state =>
                data_recovery_busy<='1';
            when cycle_state =>
                if(nv_reg_busy = '0') then
                    ce<='1';
                    data_recovery_busy<='1';
                    if( i <= d_rec_offset) then 
                        nv_reg_addr_d_rec <= std_logic_vector(unsigned(d_rec_nv_reg_start_addr) + to_unsigned(i,32));
                    end if;
                    if(i > 2) then
                        d_recovered_offset_d_rec <= i-2;
                    end if;
                end if;
            when others =>
        end case;
    end process FSM_D_REC_OUT;
    
    
    end_value <= d_rec_offset +2; -- the plus one is dependent on the ram (our Bram has a 1 clk delay)
    COUNTER: entity work.variable_counter(Behavioral) 
    Generic map(
        MAX         => NV_REG_WIDTH+2,
        INIT_VALUE  => 0,
        INCREASE_BY => 1
    )              
    Port map(          
        clk         => nv_reg_clk,
        resetn      => resetN,
        INIT        => init,
        CE          => ce,
        end_value   => end_value, 
        TC          => tc,
        value       => i
    );
    --------------------------------------------------D_SAVE-------------------------------------------------------------------

    data_save_busy <='0';

    
end architecture Behavioral;
