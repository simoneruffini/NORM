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

use IEEE.math_real.all;

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
    signal MASTER_CLK,MASTER_RESETN,power_resetN,power_resetN_2: STD_LOGIC;
    
    constant bram_addr_width_bit : INTEGER := 16;
    constant BRAM_WIDTH: INTEGER := 65536; --2**bram_addr_width
    
    ----------------------------NV_REG_SIGNALS--------------------------------------------
    constant nv_reg_addr_width_bit : INTEGER := integer(ceil(log2(real(NV_REG_WIDTH))));
    signal nv_reg_en,nv_reg_busy,nv_reg_busy_sig: STD_LOGIC; 
    signal nv_reg_we: STD_LOGIC_VECTOR( 0 DOWNTO 0);  
    signal nv_reg_addr: STD_LOGIC_VECTOR(nv_reg_addr_width_bit-1 DOWNTO 0);
    signal nv_reg_din,nv_reg_dout: STD_LOGIC_VECTOR( 31 DOWNTO 0); 
    --------------------------------------------------------------------------------------
    -----------------------------FSM_NV_REG_SIGNALS---------------------------------------
    signal thresh : threshold_t;
    signal task_status : STD_LOGIC;
    signal fsm_status : fsm_nv_reg_state_t;
    --------------------------------------------------------------------------------------
    -------------------------------DATA_FILLER_SIGNALS------------------------------------
    signal data_fill_busy: STD_LOGIC;
    signal data_fill_nv_reg_en: STD_LOGIC;
    signal data_fill_nv_reg_we: STD_LOGIC_VECTOR( 0 DOWNTO 0);
    signal data_fill_nv_reg_din: STD_LOGIC_VECTOR( 31 DOWNTO 0);  
    signal data_fill_nv_reg_addr: STD_LOGIC_VECTOR(nv_reg_addr_width_bit-1 DOWNTO 0);
    --------------------------------------------------------------------------------------
    -------------------------------DATA_REC_SIGNALS---------------------------------------  
    signal data_rec_busy: STD_LOGIC;
    signal data_rec_nv_reg_en: STD_LOGIC;  
    signal data_rec_nv_reg_we: STD_LOGIC_VECTOR( 0 DOWNTO 0);  
    signal data_rec_nv_reg_din: STD_LOGIC_VECTOR( 31 DOWNTO 0);
    signal data_rec_nv_reg_addr : STD_LOGIC_VECTOR(nv_reg_addr_width_bit-1 DOWNTO 0);
    
    --------------------------------------------------------------------------------------
    -------------------------------SAVE_SIGNALS------------------------------------------- 
    signal data_save_busy: STD_LOGIC;
    signal data_save_nv_reg_en: STD_LOGIC;
    signal data_save_nv_reg_we: STD_LOGIC_VECTOR( 0 DOWNTO 0);
    signal data_save_nv_reg_din: STD_LOGIC_VECTOR( 31 DOWNTO 0);
    signal data_save_nv_reg_addr : STD_LOGIC_VECTOR(nv_reg_addr_width_bit-1 DOWNTO 0);   
    --------------------------------------------------------------------------------------
    
--------------------------------------------------DATA_REC_PROC-------------------------------------------------------------------
    signal clk,resetN: STD_LOGIC;
    signal data_rec_nv_reg_start_addr: STD_LOGIC_VECTOR(nv_reg_addr_width_bit-1 DOWNTO 0);
    signal data_rec_offset: INTEGER RANGE 0 TO NV_REG_WIDTH-1;
    signal data_rec_recovered_data : STD_LOGIC_VECTOR( 31 DOWNTO 0);
    signal data_rec_recovered_offset: INTEGER RANGE 0 TO NV_REG_WIDTH -1;
    --------------------------------COUNTER_SIGNALS---------------------------------------
    signal var_cntr_clk,var_cntr_init,var_cntr_ce,var_cntr_tc: STD_LOGIC;
    signal var_cntr_value, var_cntr_end_value: INTEGER;
    -------------------------------------------------------------------------------------- 

begin

    M_CLK: process begin
        MASTER_CLK <= '0';
        wait for MASTER_CLK_PERIOD_NS/2 * 1ns;
        MASTER_CLK <= '1';
        wait for MASTER_CLK_PERIOD_NS/2* 1ns;
    end process;
     
    NV_REG: entity work.nv_reg(Behavioral)
    generic map(
        MAX_DELAY_NS => FRAM_MAX_DELAY_NS,
        NV_REG_WIDTH => NV_REG_WIDTH
    )
    port map(
        clk         => MASTER_CLK,
        resetN      => MASTER_RESETN,
        power_resetN=> power_resetN_2,
        busy_sig    => nv_reg_busy_sig,
        busy        => nv_reg_busy,
        en          => nv_reg_en,
        we          => nv_reg_we,
        addr        => nv_reg_addr,
        din         => nv_reg_din,
        dout        => nv_reg_dout
    );
    
    nv_reg_en   <=  data_fill_nv_reg_en     when data_fill_busy = '1'   else
                    data_rec_nv_reg_en      when data_rec_busy = '1'    else
                    data_save_nv_reg_en     when data_save_busy = '1'   else
                    '0';
    nv_reg_we   <=  data_fill_nv_reg_we     when data_fill_busy = '1'   else
                    data_rec_nv_reg_we      when data_rec_busy = '1'    else
                    data_save_nv_reg_we     when data_save_busy = '1'   else
                    (others => '0');
    nv_reg_addr <=  data_fill_nv_reg_addr   when data_fill_busy = '1'   else
                    data_rec_nv_reg_addr    when data_rec_busy = '1'    else
                    data_save_nv_reg_addr   when data_save_busy = '1'   else
                    (others => '0');
                    
    nv_reg_din  <=  data_fill_nv_reg_din    when data_fill_busy = '1'   else
                    data_rec_nv_reg_din     when data_rec_busy = '1'    else
                    data_save_nv_reg_din    when data_save_busy = '1'   else
                    (others => '0');
    
    FSM_NV_REG: entity work.fsm_nv_reg(Behavioral)
    port map( 
        clk                 => MASTER_CLK,
        resetN              => power_resetN,
        thresh_stats        => thresh,
        task_status         => task_status,
        status              => fsm_status
--        status_sig              => 
    );
    
    TASK_STATUS_CNTRL: process (data_rec_busy,data_save_busy) is
    begin
         if(data_rec_busy = '0' AND data_save_busy = '0') then
            task_status <= '0';
         else
            task_status <= '1';
         end if;
    end process;
        
    RST_CNTRL: process is
    begin
        MASTER_RESETN <= '0';
        wait for 20 *MASTER_CLK_PERIOD_NS * 1ns;
        MASTER_RESETN <= '1';
        wait;
    end process;
    PWR_CNTRL: process is 
    begin
        power_resetN <= '0';
        wait for 35 *MASTER_CLK_PERIOD_NS * 1ns;
        power_resetN <='1';
        wait for 30 *MASTER_CLK_PERIOD_NS * 1ns;
        power_resetN <='0';
        wait for 2 *MASTER_CLK_PERIOD_NS * 1ns;
        power_resetN <='1';
        wait;
    end process;
    power_resetN_2 <= power_resetN when (data_fill_busy = '0') else '1'; --just to trigger the filler once
    --------------------------------------------------DATA_FILLER----------------------------------------------------------------
       
    DATA_FILLER: process(MASTER_CLK,MASTER_RESETN,power_resetN) is
    variable counter : INTEGER;
    variable one_time: STD_LOGIC := '0';
    begin
        if(MASTER_RESETN = '0' OR power_resetN = '1' OR one_time ='1') then
            data_fill_nv_reg_en <= '0';
            data_fill_busy <='0';
            
            data_fill_nv_reg_we <= (OTHERS => '0');
            data_fill_nv_reg_din <= (OTHERS => '0');
            data_fill_nv_reg_addr <= (OTHERS => '0');
            counter := 0;
        elsif(rising_edge(master_clk)) then
            
            if(counter < 6) then
                data_fill_nv_reg_en <= '1';
                data_fill_busy <='1';
                data_fill_nv_reg_we <= (OTHERS => '1');
                
                data_fill_nv_reg_addr <= std_logic_vector(to_unsigned(counter mod NV_REG_WIDTH,nv_reg_addr_width_bit));  
                data_fill_nv_reg_din <= std_logic_vector(to_unsigned(counter ,32));
                
            elsif( counter = 6) then
                data_fill_nv_reg_we <= (OTHERS => '0');
                data_fill_nv_reg_addr <= (OTHERS => '0');
            elsif( counter > 7) then
                data_fill_nv_reg_we <= (OTHERS => '0');
                data_fill_busy <='0';
                one_time := '1';
            end if;
            counter := counter +1;
        end if; 
    end process DATA_FILLER;
    
    
    --------------------------------------------------DATA_REC-------------------------------------------------------------------
    clk <= MASTER_CLK;
    resetN <= power_resetN;
    
    
    data_rec_nv_reg_start_addr <=  std_logic_vector(to_unsigned(1,nv_reg_addr_width_bit));
    data_rec_offset <= 3;
    
    -- Default values
    
    data_rec_nv_reg_we <= (OTHERS => '0');
    data_rec_nv_reg_din <= (OTHERS => '0');
    -----------------
    
    DATA_REC: process(resetN,clk) is
    begin
        if(resetN = '0') then
            data_rec_busy <= '0';
            data_rec_nv_reg_en <= '0';
            
        elsif(rising_edge(clk)) then
            if(fsm_status = start_data_recovery_s) then
                data_rec_busy <= '1';
                data_rec_nv_reg_en <= '1';  
            elsif(var_cntr_tc = '1') then
                data_rec_busy <= '0';
                data_rec_nv_reg_en <= '0';
            end if; 
        end if;
    end process DATA_REC;
    
    var_cntr_ce <= data_rec_busy;
    var_cntr_init <= not data_rec_busy;
    
    DATA_REC_OUT_CNTRL: process(var_cntr_value,data_rec_busy) is
        variable offset_last : INTEGER RANGE 0 TO NV_REG_WIDTH-1;
        variable recovered_data_last: STD_LOGIC_VECTOR(31 DOWNTO 0);
    begin
        if(data_rec_busy = '1') then
            if(var_cntr_value <= data_rec_offset) then 
                data_rec_nv_reg_addr <= std_logic_vector(   unsigned(data_rec_nv_reg_start_addr) 
                                                            + to_unsigned(var_cntr_value,nv_reg_addr_width_bit)
                                                         ); 
                data_rec_recovered_offset <= offset_last;
                data_rec_recovered_data <= nv_reg_dout;
--                data_rec_recovered_data <= recovered_data_last;
                offset_last :=var_cntr_value;
--                recovered_data_last := nv_reg_dout;
            end if;
        else
            offset_last := 0;
            recovered_data_last := (OTHERS => '0');
            data_rec_nv_reg_addr <= data_rec_nv_reg_start_addr;
            data_rec_recovered_offset <= 0;
            data_rec_recovered_data <= (OTHERS => '0');
        end if;
    end process DATA_REC_OUT_CNTRL;
    
    
    
    var_cntr_end_value <= data_rec_offset +1; -- the plus one is dependent on the ram (our Bram has a 1 clk delay)
    VAR_CNTR_CLK_GEN: process(clk,data_rec_nv_reg_en) is
    begin
        if(data_rec_nv_reg_en = '0') then
            var_cntr_clk <= '1';
        elsif(rising_edge(clk)) then
            var_cntr_clk <= '0';
            if(nv_reg_busy_sig = '0' and var_cntr_clk /='1' ) then
                var_cntr_clk <= '1';
            end if;
        end if;
    end process VAR_CNTR_CLK_GEN;
    
    VAR_CNTR: entity work.variable_counter(Behavioral) 
    Generic map(
        MAX         => NV_REG_WIDTH+2,
        INIT_VALUE  => NV_REG_WIDTH+2,
        INCREASE_BY => 1
    )              
    Port map(          
        clk         => var_cntr_clk,
        resetn      => resetN,
        INIT        => var_cntr_init,
        CE          => var_cntr_ce,
        end_value   => var_cntr_end_value, 
        TC          => var_cntr_tc,
        value       => var_cntr_value
    );
    --------------------------------------------------D_SAVE-------------------------------------------------------------------
    
    data_save_busy <='0';
    
end architecture Behavioral;