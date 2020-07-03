----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/19/2020 04:37:42 PM
-- Design Name: 
-- Module Name: adder - Behavioral
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

use IEEE.MATH_REAL.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

use work.GLOBAL_SETTINGS.all;
use work.NV_REG_EMULATOR_PKG.all;
use work.COMMON_PACKAGE.all;
use work.TEST_MODULE_PACKAGE.all;

entity adder is    
    port(
        sys_clk             : in STD_LOGIC;
        resetN              : in STD_LOGIC;
        fsm_status          : in fsm_nv_reg_state_t;
        task_status         : out STD_LOGIC;
        nv_reg_en           : out STD_LOGIC;
        nv_reg_busy         : in STD_LOGIC;
        nv_reg_busy_sig     : in STD_LOGIC; 
        nv_reg_we           : out STD_LOGIC_VECTOR( 0 DOWNTO 0);  
        nv_reg_addr         : out STD_LOGIC_VECTOR(nv_reg_addr_width_bit-1 DOWNTO 0);
        nv_reg_din          : out STD_LOGIC_VECTOR( 31 DOWNTO 0);
        nv_reg_dout         : in STD_LOGIC_VECTOR( 31 DOWNTO 0)
    );
end adder;

architecture Behavioral of adder is
    
    COMPONENT blk_mem_gen_0
        PORT (
            clka    : in std_logic;
            ena     : in std_logic;
            wea     : in std_logic_vector(0 downto 0);
            addra   : in std_logic_vector(bram_addr_width_bit-1 downto 0);
            dina    : in std_logic_vector(31 downto 0);
            douta   : out std_logic_vector(31 downto 0);
            clkb    : in std_logic;
            enb     : in std_logic;
            web     : in std_logic_vector(0 downto 0);
            addrb   : in std_logic_vector(bram_addr_width_bit-1 downto 0);
            dinb    : in std_logic_vector(31 downto 0);
            doutb   : out std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    
    component variable_counter is
        Generic(
            MAX         : INTEGER;
            INIT_VALUE  : INTEGER;
            INCREASE_BY : INTEGER
        );
        Port ( 
            clk         : in STD_LOGIC;
            resetn      : in STD_LOGIC;
            INIT        : in STD_LOGIC;
            CE          : in STD_LOGIC;
            end_value   : in INTEGER RANGE 0 TO MAX;
            TC          : out STD_LOGIC;
            value       : out INTEGER RANGE 0 TO MAX
        );
    end component;
    -------------------------------INTERNAL_SIGNALS---------------------------------------
    signal task_status_internal: STD_LOGIC;
    --------------------------------------------------------------------------------------
    -------------------------------BRAM_SIGNALS--------------------------------------------
    signal clka     : std_logic;
    signal ena      : std_logic;
    signal wea      : std_logic_vector(0 downto 0);
    signal addra    : std_logic_vector(bram_addr_width_bit-1 downto 0);
    signal dina     : std_logic_vector(31 downto 0);
    signal douta    : std_logic_vector(31 downto 0);
    signal clkb     : std_logic;
    signal enb      : std_logic;
    signal web      : std_logic_vector(0 downto 0) := "0";
    signal addrb    : std_logic_vector(bram_addr_width_bit-1 downto 0);
    signal dinb     : std_logic_vector(31 downto 0) := (others =>'0');
    signal doutb    : std_logic_vector(31 downto 0);
    --------------------------------------------------------------------------------------
    -------------------------------ADDR_SIGNALS-------------------------------------------
    type control_fsm is(
        reset_state,
        loading_state,
        read_state,
        wait_state_1,
        add_state,
        recovery_fsm_state
    );    
    signal present_state, future_state : control_fsm := reset_state;
    --------------------------------------------------------------------------------------
    -------------------------------ADDER_SIGNALS------------------------------------------
    signal adder_value : std_logic_vector(31 downto 0) := (others => '0');
    --------------------------------------------------------------------------------------
    -------------------------------DATA_REC_SIGNALS---------------------------------------  
    signal data_rec_busy: STD_LOGIC;
    signal data_rec_nv_reg_en: STD_LOGIC;  
    signal data_rec_nv_reg_we: STD_LOGIC_VECTOR( 0 DOWNTO 0);  
    signal data_rec_nv_reg_din: STD_LOGIC_VECTOR( 31 DOWNTO 0);
    signal data_rec_nv_reg_addr : STD_LOGIC_VECTOR(nv_reg_addr_width_bit-1 DOWNTO 0);
    signal data_rec_var_cntr_init :STD_LOGIC;
    signal data_rec_var_cntr_ce: STD_LOGIC;
    signal data_rec_var_cntr_end_value : INTEGER;   
    --------------------------------------------------------------------------------------
    -------------------------------SAVE_SIGNALS------------------------------------------- 
    signal data_save_busy: STD_LOGIC;
    signal data_save_nv_reg_en: STD_LOGIC;
    signal data_save_nv_reg_we: STD_LOGIC_VECTOR( 0 DOWNTO 0);
    signal data_save_nv_reg_din: STD_LOGIC_VECTOR( 31 DOWNTO 0);
    signal data_save_nv_reg_addr : STD_LOGIC_VECTOR(nv_reg_addr_width_bit-1 DOWNTO 0);
    signal data_save_var_cntr_init :STD_LOGIC;
    signal data_save_var_cntr_ce: STD_LOGIC;
    signal data_save_var_cntr_end_value : INTEGER;    
    --------------------------------------------------------------------------------------
--------------------------------------------------DATA_REC_PROC-------------------------------------------------------------------
    signal data_rec_nv_reg_start_addr: STD_LOGIC_VECTOR(nv_reg_addr_width_bit-1 DOWNTO 0);
    signal data_rec_offset: INTEGER RANGE 0 TO NV_REG_WIDTH-1;
    signal data_rec_recovered_data : STD_LOGIC_VECTOR( 31 DOWNTO 0);
    signal data_rec_recovered_offset: INTEGER RANGE 0 TO NV_REG_WIDTH -1;
    -------------------------------COUNTER_SIGNALS----------------------------------------
    signal var_cntr_clk,var_cntr_init,var_cntr_ce,var_cntr_tc: STD_LOGIC;
    signal var_cntr_value, var_cntr_end_value: INTEGER;
    --------------------------------------------------------------------------------------   
--------------------------------------------------DATA_SAVE_PROC-------------------------------------------------------------------
     signal data_save_nv_reg_start_addr: STD_LOGIC_VECTOR(nv_reg_addr_width_bit-1 DOWNTO 0);
     signal data_save_bram_start_addr: STD_LOGIC_VECTOR(bram_addr_width_bit-1 DOWNTO 0);
     signal data_save_bram_offset : INTEGER RANGE 0 TO BRAM_WIDTH -1;
     
begin
    
    blk_mem_gen_0_1 : blk_mem_gen_0
    PORT MAP (
        clka    => clka,
        ena     => ena,
        wea     => wea,
        addra   => addra,
        dina    => dina,
        douta   => douta,
        clkb    => clkb,
        enb     => enb,
        web     => web,
        addrb   => addrb,
        dinb    => dinb,
        doutb   => doutb
    );
    
    clka <= sys_clk;
    clkb <= sys_clk;
    
    -- Default values for adder
    data_rec_nv_reg_start_addr  <= (OTHERS => '0');
    data_rec_offset             <= 0;
    data_save_nv_reg_start_addr <= data_rec_nv_reg_start_addr;
    data_save_bram_start_addr   <= (OTHERS => '0');
    data_save_bram_offset       <= data_rec_offset;
    -----------------    
    
    ADDR_FSM_SEQ : process(sys_clk, resetN) begin
        if resetN = '0' then
            present_state <= reset_state;
        elsif rising_edge(sys_clk) then
            present_state <= future_state;
        end if;    
    end process;
    
    ADDR_FSM_CMB : process(present_state, data_rec_recovered_offset, fsm_status, adder_value,data_rec_recovered_data,data_rec_busy) begin
        
        ena <= '0';
        wea <= (others => '0'); 
        addra <= (others => '0');
        dina <= (others => '0');
        future_state <= present_state;
        
        case present_state is
            when reset_state =>
                if fsm_status = recovery_s then
                    future_state <= loading_state;         
                end if;     
            when loading_state =>
                if data_rec_busy = '0' then
                    future_state <= read_state;
                else
                    ena <= '1';
                    wea <= "1";
                    addra <= std_logic_vector(to_unsigned(data_rec_recovered_offset + to_integer(unsigned(data_rec_nv_reg_start_addr)),bram_addr_width_bit));
                    dina <= data_rec_recovered_data;
                end if;
            when read_state =>
                if (fsm_status /= do_operation_s) then
                    future_state <= recovery_fsm_state;
                else
                    ena <= '1';
                    future_state <= wait_state_1;
                end if;
            when wait_state_1 =>
                if (fsm_status /= do_operation_s) then
                    future_state <= recovery_fsm_state;
                else
                    ena <= '1';
                    future_state <= add_state;
                end if;
            when add_state =>
                if (fsm_status /= do_operation_s) then
                    future_state <= recovery_fsm_state;
                else
                    wea <= "1";
                    ena <= '1';
                    dina <= adder_value;
                    future_state <= read_state;
                end if;                                
            when recovery_fsm_state =>
                if (fsm_status = do_operation_s) then
                    future_state <= read_state;
                end if;                                                               
        end case;
    
    end process;
    
    add_process : process(sys_clk, resetN) begin
        if resetN = '0' then
            adder_value <= (others => '0');
        elsif rising_edge(sys_clk) then
            if present_state = wait_state_1 then
                adder_value <= std_logic_vector(unsigned(douta) + 1);
            end if;
        end if;
    end process;
    
    nv_reg_en   <=  data_rec_nv_reg_en      when data_rec_busy = '1'    else
                    data_save_nv_reg_en     when data_save_busy = '1'   else
                    '0';
    nv_reg_we   <=  data_rec_nv_reg_we      when data_rec_busy = '1'    else
                    data_save_nv_reg_we     when data_save_busy = '1'   else
                    (others => '0');
    nv_reg_addr <=  data_rec_nv_reg_addr    when data_rec_busy = '1'    else
                    data_save_nv_reg_addr   when data_save_busy = '1'   else
                    (others => '0');
                    
    nv_reg_din  <=  data_rec_nv_reg_din     when data_rec_busy = '1'    else
                    data_save_nv_reg_din    when data_save_busy = '1'   else
                    (others => '0');
                    
      
    var_cntr_init       <=  data_rec_var_cntr_init          when data_rec_busy = '1'    else
                            data_save_var_cntr_init         when data_save_busy = '1'   else
                            '1';
    var_cntr_ce         <=  data_rec_var_cntr_ce            when data_rec_busy = '1'    else
                            data_save_var_cntr_ce           when data_save_busy = '1'   else
                            '0';
    var_cntr_end_value  <=  data_rec_var_cntr_end_value     when data_rec_busy = '1'    else
                            data_save_var_cntr_end_value    when data_save_busy = '1'   else
                            1;
    
    task_status <= task_status_internal;                     
    TASK_STATUS_CNTRL: process (data_rec_busy,data_save_busy) is
    begin
         if(data_rec_busy = '0' AND data_save_busy = '0') then
            task_status_internal <= '0';
         else
            task_status_internal <= '1';
         end if;
    end process;
------------------------------------------------DATA_REC-------------------------------------------------------------------

    -- Default values    
    data_rec_nv_reg_we <= (OTHERS => '0');
    data_rec_nv_reg_din <= (OTHERS => '0');
    -----------------
    
    DATA_REC: process(resetN,sys_clk) is
    begin
        if(resetN = '0') then
            data_rec_busy <= '0';
            data_rec_nv_reg_en <= '0';
            
        elsif(rising_edge(sys_clk)) then
            if(fsm_status = start_data_recovery_s) then
                data_rec_busy <= '1';
                data_rec_nv_reg_en <= '1';  
            elsif(var_cntr_tc = '1') then
                data_rec_busy <= '0';
                data_rec_nv_reg_en <= '0';
            end if; 
        end if;
    end process DATA_REC;
    
    data_rec_var_cntr_ce <= data_rec_busy;
    data_rec_var_cntr_init <= not data_rec_busy;
    
    DATA_REC_OUT_CNTRL: process(var_cntr_value,data_rec_busy) is
        variable offset_last : INTEGER RANGE 0 TO NV_REG_WIDTH-1;
--        variable recovered_data_last: STD_LOGIC_VECTOR(31 DOWNTO 0);
    begin
        if(data_rec_busy = '1') then
            if(var_cntr_value <= data_rec_offset) then 
                data_rec_nv_reg_addr <= std_logic_vector(   unsigned(data_rec_nv_reg_start_addr) 
                                                            + to_unsigned(var_cntr_value,nv_reg_addr_width_bit)
                                                         ); 
                data_rec_recovered_offset <= offset_last;
--                data_rec_recovered_data <= nv_reg_dout;
--                data_rec_recovered_data <= recovered_data_last;
                offset_last :=var_cntr_value;
--                recovered_data_last := nv_reg_dout;
            end if;
            if(var_cntr_value <= data_rec_offset + 1) then
                data_rec_recovered_data <= nv_reg_dout;
            end if;
        else
            offset_last := 0;
--            recovered_data_last := (OTHERS => '0');
            data_rec_nv_reg_addr <= data_rec_nv_reg_start_addr;
            data_rec_recovered_offset <= 0;
            data_rec_recovered_data <= (OTHERS => '0');
        end if;
    end process DATA_REC_OUT_CNTRL;
    
--------------------------------------------------DATA_SAVE-------------------------------------------------------------------
    
    -- Default values         
    web <= (OTHERS => '0');      
    -----------------

    DATA_SAVE: process(resetN,sys_clk) is
    begin
        if(resetN = '0') then
            data_save_busy <= '0';
            enb <= '0';
        elsif(rising_edge(sys_clk)) then
            if(fsm_status = start_data_save_s) then
                data_save_busy <= '1';
                enb <= '1';  
            elsif(var_cntr_tc = '1') then
                enb <= '0';
                data_save_busy <= '0';
            end if; 
        end if;
    end process DATA_SAVE;
    
    data_save_var_cntr_ce <= data_save_busy;
    data_save_var_cntr_init <= not data_save_busy;
    data_save_nv_reg_en <= not var_cntr_tc;
    data_save_nv_reg_we <= (OTHERS => '1') when data_save_busy ='1' and var_cntr_tc = '0' else (OTHERS => '0');
    
    DATA_SAVE_OUT_CNTRL: process(var_cntr_value,data_save_busy) is
        variable var_cntr_value_last : INTEGER;
    begin
        if(data_save_busy = '1') then
            if(var_cntr_value <= data_save_bram_offset) then
                addrb <= std_logic_vector(  unsigned(data_save_bram_start_addr)
                                            +to_unsigned(var_cntr_value,bram_addr_width_bit -1)
                                          );
                data_save_nv_reg_addr <= std_logic_vector( unsigned(data_save_nv_reg_start_addr)
                                                           + to_unsigned(var_cntr_value_last,nv_reg_addr_width_bit)  
                                                          );
            end if;
            if(var_cntr_value <= data_save_bram_offset +1) then
                
                data_save_nv_reg_din <= doutb;
                var_cntr_value_last := var_cntr_value;
            end if;
        else
            addrb <= data_save_bram_start_addr;
            data_save_nv_reg_addr <= data_save_nv_reg_start_addr;
            data_save_nv_reg_din <= (OTHERS => '0');
            var_cntr_value_last := 0;
        end if;
    end process DATA_SAVE_OUT_CNTRL;
    
------------------------------------------------------------------------------------------------------------------------------
    
    data_rec_var_cntr_end_value <= data_rec_offset +2; -- the plus one is dependent on the ram (our Bram has a 1 clk delay)
    data_save_var_cntr_end_value <= data_save_bram_offset +2; -- the plus two is because the nv_reg sees the data delaied by one clk

    
    VAR_CNTR_CLK_GEN: process(sys_clk,task_status_internal) is
    begin
        if(task_status_internal = '0') then
            var_cntr_clk <= '1';
        elsif(rising_edge(sys_clk)) then
            var_cntr_clk <= '0';
            if(nv_reg_busy_sig = '0' and var_cntr_clk /='1' ) then
                var_cntr_clk <= '1';
            end if;
        end if;
    end process VAR_CNTR_CLK_GEN;
        
    VAR_CNTR: variable_counter
    Generic map(
        MAX         => NV_REG_WIDTH+2,
--        INIT_VALUE  => NV_REG_WIDTH+2,
        INIT_VALUE  => 0,
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
end Behavioral;