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
        nv_reg_dout         : in STD_LOGIC_VECTOR( 31 DOWNTO 0);
        adder1_value         : out std_logic_vector(31 downto 0);
        adder2_value         : out std_logic_vector(31 downto 0);
        adder3_value         : out std_logic_vector(31 downto 0)
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
    signal enb      : std_logic := '0';
    signal web      : std_logic_vector(0 downto 0) := "0";
    signal addrb    : std_logic_vector(bram_addr_width_bit-1 downto 0);
    signal dinb     : std_logic_vector(31 downto 0) := (others =>'0');
    signal doutb    : std_logic_vector(31 downto 0);
    --------------------------------------------------------------------------------------
    -------------------------------ADDER_FSM----------------------------------------------
    type adder_fsm_state is(
        power_off_s,
	init_s,
        loading_s,
        read_vreg1_s,
        read_vreg2_s,
        read_vreg3_s,
        wait1_s,
        wait2_s,
        wait3_s,
        add1_s,
        add2_s,
        add3_s,
        recovery_s
    );    
    signal present_state, future_state : adder_fsm_state:= power_off_s;
    --------------------------------------------------------------------------------------
    -------------------------------ADDER_SIGNALS------------------------------------------
    --this signals keep the value of the current adder, we have 3 adders that count by summing +1,+2,+3 to them selves
    signal adder1_value_internal : std_logic_vector(31 downto 0) := (others => '0');
    signal adder2_value_internal : std_logic_vector(31 downto 0) := (others => '0');
    signal adder3_value_internal : std_logic_vector(31 downto 0) := (others => '0');
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
    -------------------------------VAR_COUNTER_SIGNALS------------------------------------
    signal var_cntr_clk,var_cntr_init,var_cntr_ce,var_cntr_tc: STD_LOGIC;
    signal var_cntr_value, var_cntr_value_last,var_cntr_end_value: INTEGER range 0 to NV_REG_WIDTH+2;
    --------------------------------------------------------------------------------------   

--------------------------------------------------DATA_REC_PROC-------------------------------------------------------------------
    signal data_rec_nv_reg_start_addr: STD_LOGIC_VECTOR(nv_reg_addr_width_bit-1 DOWNTO 0);	--address from which start recovering data in nv_reg
    signal data_rec_offset: INTEGER RANGE 0 TO NV_REG_WIDTH-1;					            --the offset used to calculate the last address for data recovery process
												                                            --> ex: if we have 3 consecutive WORDS saved in nv_reg that we want to recover then data_rec_offset = 2
    signal data_rec_recovered_data : STD_LOGIC_VECTOR( 31 DOWNTO 0);                        --the data recovered from nv_reg after recovery starts
    signal data_rec_recovered_offset: INTEGER RANGE 0 TO NV_REG_WIDTH -1;                   --the offset associated to data_rec_recovered_data when in recovery, used to know which WORD from nv_reg data_rec_recovered_data is.
    --signal data_rec_recovered_offset_last : INTEGER RANGE 0 TO NV_REG_WIDTH-1;              --shift register used to sinchronize the offset of the recovered data with the recovered data data
--------------------------------------------------DATA_SAVE_PROC-------------------------------------------------------------------
    signal data_save_nv_reg_start_addr: STD_LOGIC_VECTOR(nv_reg_addr_width_bit-1 DOWNTO 0);	--start address (in nv_reg) from which the data save process will save volatile values
    signal data_save_bram_start_addr: STD_LOGIC_VECTOR(bram_addr_width_bit-1 DOWNTO 0);		--start address (in bram aka volatile register) from which the data save process will fetch data
                                                                                            --> this address is where the first WORD of volatile data (that will be lost after power failure) is stored
    signal data_save_bram_offset : INTEGER RANGE 0 TO BRAM_WIDTH -1;				        --the offset used to calculate the last address of bram (aka volatile register) for data save process
    												                                        --> ex: if we have 2 consecutive WORDS saved in bram that we want to store in nv_reg then data_save_bram_offset=1
-- this upper signal can change during the adder process. 
-- For example after a power failure we could want to retrive the old data and then save the values in a different place in nv_reg (thus changing data_save_nv_reg_start_addr).
-- Or we could only want to recover a subset of the data stored in nv_reg (thus changing data_rec_nv_reg_start_addr and data_rec_offset).
-- This could be implemented in hw by using an eeprom to store this values or the nv_reg itself by keeping this data in a std and first access location for the executing process.
-----------------------------------------------------------------------------------------------------------------------------------

begin
    
    -- Bram aka volatile register 
    --> N.B. 	After a power failure the contents of the V_REG will remain as it is a BRAM in a powerd FPGA.
    --> 	It is the task of the developer to ensure this values are not accessed because 
    -->		in theory they are not available (as a real system would lose them)
    -- TODO: add wiping process when reset is on
    V_REG: blk_mem_gen_0
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

    adder1_value <= adder1_value_internal; 
    adder2_value <= adder2_value_internal;
    adder3_value <= adder3_value_internal;
   
    -- We will save in nv_reg @ 0x01 and will store 3 words (nv_reg_offset =2)
    -- We will save in v_reg @ 0x01 and will store 3 words (bram_offset =2)
    
    --%%%%%%%%%%%%%%%%%%%% ADDER CONSTANTS %%%%%%%%%%%%%%%%%%%%%%%%%%
    data_rec_nv_reg_start_addr  <= (0=>'1', OTHERS => '0'); -- 1
    data_rec_offset             <= 2; 
    data_save_nv_reg_start_addr <= data_rec_nv_reg_start_addr;
    data_save_bram_start_addr   <= (1 => '1', OTHERS => '0'); -- 2
    data_save_bram_offset       <= data_rec_offset;
    --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    ADDR_FSM_SEQ : process(sys_clk, resetN) begin
        if resetN = '0' then
            present_state <= power_off_s;
        elsif rising_edge(sys_clk) then
            present_state <= future_state;
        end if;    
    end process;
    
    ADDR_FSM_CMB : process( present_state, 
                            fsm_status, 
                            data_rec_recovered_offset, data_rec_recovered_data, 
                            data_rec_busy,
                            adder1_value_internal, adder2_value_internal, adder3_value_internal ) 
    begin
                            
        --################ V_REG DEFAULTS
        ena <= '0';
        wea <= (others => '0'); 
        addra <= (others => '0');
        dina <= (others => '0');
	    --###############################

        future_state <= present_state;
        
        case present_state is
            when power_off_s =>
                future_state <= init_s;
            when init_s =>
                --set initialization signal, do init

                ------------------------------------
                if fsm_status = start_data_recovery_s and data_rec_busy = '1' then
                    future_state <= loading_s;         
                end if;     
            when loading_s =>
                -- TODO: use data_recovered_s, it's better, but the other TODOs must be completed    
                if fsm_status = data_recovered_s then
                        future_state <= read_vreg1_s;
                elsif fsm_status = recovery_s then
                    if data_rec_busy = '1' then --if the data recovery has ended then change state 
                       
                        -- enable and write to V_REG
                        ena <= '1';
                        wea <= "1";
                        -- the address where to save in V_REG is calculated through data_rec_recovered_offset 
                        --> that changes every time a new WORD is retrived from NV_REG
                        addra <= std_logic_vector(  to_unsigned(data_rec_recovered_offset + 
                                                    to_integer(unsigned(data_rec_nv_reg_start_addr)),bram_addr_width_bit));
                        dina <= data_rec_recovered_data;
                     end if;
                end if;
            when read_vreg1_s => -- in state read_vreg1_s we prepare the signals to read the value for adder1_value from V_REG 
                if fsm_status = do_operation_s then
                    ena <= '1';
                    addra(3 downto 0) <= std_logic_vector( unsigned(data_rec_nv_reg_start_addr));
                    future_state <= wait1_s;
                else -- fsm_status = start_data_s
                    future_state <= recovery_s;
                end if;
            when wait1_s =>
                if (fsm_status = do_operation_s) then
                    ena <= '1';
                    addra(3 downto 0) <= std_logic_vector( unsigned(data_rec_nv_reg_start_addr));
                    future_state <= add1_s;
                else -- fsm_status = start_data_s
                    future_state <= recovery_s;
                end if;
            when add1_s =>
                if (fsm_status = do_operation_s) then
                    wea <= "1";
                    ena <= '1';
                    addra(3 downto 0) <= std_logic_vector( unsigned(data_rec_nv_reg_start_addr));
                    adder1_value_internal <= std_logic_vector(unsigned(douta) + 1);
                    dina <= adder1_value_internal;
                    future_state <= read_vreg2_s;
                else -- fsm_status = start_data_s
                    future_state <= recovery_s;
                end if;                                
            when read_vreg2_s => -- in state read_vreg2_s we prepare the signals to read the value for adder2_value from V_REG 
                if (fsm_status = do_operation_s) then
                    ena <= '1';
                    addra(3 downto 0) <= std_logic_vector( unsigned(data_rec_nv_reg_start_addr) + 1);
                    future_state <= wait2_s;
                else -- fsm_status = start_data_s
                    future_state <= recovery_s;
                end if;
            when wait2_s =>
                if (fsm_status = do_operation_s) then
                    ena <= '1';
                    addra(3 downto 0) <= std_logic_vector( unsigned(data_rec_nv_reg_start_addr) + 1);
                    future_state <= add2_s;
                else -- fsm_status = start_data_s
                    future_state <= recovery_s;
                end if;
            when add2_s =>
                if (fsm_status = do_operation_s) then
                    wea <= "1";
                    ena <= '1';
                    addra(3 downto 0) <= std_logic_vector( unsigned(data_rec_nv_reg_start_addr) + 1);
                    adder2_value_internal <= std_logic_vector(unsigned(douta) + 2);
                    dina <= adder2_value_internal;
                    future_state <= read_vreg3_s;
                else -- fsm_status = start_data_s
                    future_state <= recovery_s;
                end if;                                
            when read_vreg3_s => -- in state read_vreg3_s we prepare the signals to read the value for adder3_value from V_REG 
                if (fsm_status = do_operation_s) then
                    ena <= '1';
                    addra(3 downto 0) <= std_logic_vector( unsigned(data_rec_nv_reg_start_addr) + 2);
                    future_state <= wait3_s;
                else -- fsm_status = start_data_s
                    future_state <= recovery_s;
                end if;
            when wait3_s =>
                if (fsm_status = do_operation_s) then
                    ena <= '1';
                    addra(3 downto 0) <= std_logic_vector( unsigned(data_rec_nv_reg_start_addr) + 2);
                    future_state <= add3_s;
                else -- fsm_status = start_data_s
                    future_state <= recovery_s;
                end if;
            when add3_s =>
                if (fsm_status = do_operation_s) then
                    wea <= "1";
                    ena <= '1';
                    addra(3 downto 0) <= std_logic_vector( unsigned(data_rec_nv_reg_start_addr) + 2);
                    adder3_value_internal <= std_logic_vector(unsigned(douta) + 3);
                    dina <= adder3_value_internal;
                    future_state <= read_vreg1_s;
                else -- fsm_status = start_data_s
                    future_state <= recovery_s;
                end if;                                
            when recovery_s =>
                if (fsm_status = do_operation_s) then
                    future_state <= read_vreg1_s;
                end if;                                                               
        end case;
    
    end process;
    
--    add_process : process(sys_clk, resetN) begin
--        if resetN = '0' then
--            adder1_value_internal <= (others => '0');
--        elsif rising_edge(sys_clk) then
--            if present_state = wait1_s then
--                adder1_value_internal <= std_logic_vector(unsigned(douta) + 1);
--            end if;
--        end if;
--    end process;
    

    --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% NV_REG PORTS ACCESS MULTIPLEXER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
    --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% VAR_CNTR PORT ACCESS MULITPLEXER %%%%%%%%%%%%%%%%%%%%%%%%%%%% 
    var_cntr_init       <=  data_rec_var_cntr_init          when data_rec_busy = '1'    else
                            data_save_var_cntr_init         when data_save_busy = '1'   else
                            '1'; --default initialize counter
    var_cntr_ce         <=  data_rec_var_cntr_ce            when data_rec_busy = '1'    else
                            data_save_var_cntr_ce           when data_save_busy = '1'   else
                            '0'; --default do not count
    var_cntr_end_value  <=  data_rec_var_cntr_end_value     when data_rec_busy = '1'    else
                            data_save_var_cntr_end_value    when data_save_busy = '1'   else
                            1; --default end value is 1
    --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    task_status <= task_status_internal;                     

    task_status_internal <= data_rec_busy OR data_save_busy;
    
--    TASK_STATUS_CNTRL: process (data_rec_busy,data_save_busy) is
--    begin
--         if(data_rec_busy = '0' AND data_save_busy = '0') then
--            task_status_internal <= '0';
--         else
--            task_status_internal <= '1';
--         end if;
--    end process;
------------------------------------------------DATA_REC process-------------------------------------------------------------------

    --%%%%%%%%%%%%%%%%%%% DATA_REC CONSTANTS %%%%%%%%%%%%%%%%%%%%%%%%
    data_rec_nv_reg_we <= (OTHERS => '0');
    data_rec_nv_reg_din <= (OTHERS => '0');
    --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
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
    
    -- TODO: check that the first request to nv_reg is useless (tweak VAR_CNT_INIT_VAL or else) and
    --      the V_REG shall not save it so keep data_rec_recovered_addr/offset steady. 
    --      Or at least make that the first request to NV_REG is good because the moment that 
    --      data_rec_busy goes up we have a non requested pulse on var_cntr that changes it's value 
    --      and so data_rec_nv_reg_addr (the protocol is violated).
    -- TODO: when we end the recovery process the ouptus for the V_REG must remain steady till we 
    --      exit do_operation_s form fsm_nv_reg so that the V_REG will not read wrong data
    -- TODO: capture the output data from nv_reg using the protocol definitions: capture when nv_reg_busy is off

    DATA_REC_OUT_CNTRL: process(sys_clk,data_rec_busy) is
    begin
        if (data_rec_busy = '0') then 
            data_rec_recovered_offset <= 0;
            --data_rec_recovered_data <= nv_reg_dout;
            data_rec_recovered_data <= (OTHERS => '0');
        elsif (rising_edge(sys_clk)) then
            if(nv_reg_busy ='0') then
                if(var_cntr_value > 0 AND var_cntr_value <= data_rec_offset + 1 ) then -- the plus one is used because the data is moved into a shift register for siyncronization purposes
                    data_rec_recovered_data <= nv_reg_dout;
                    data_rec_recovered_offset <= var_cntr_value_last;
                end if;
--             else
--                data_rec_recovered_offset <= 0;
--                data_rec_recovered_data <= (OTHERS => '0');
            end if;
        end if;
    end process DATA_REC_OUT_CNTRL;

    DATA_REC_NVREG_REQ: process (data_rec_busy,var_cntr_value) is
    begin 
        if (data_rec_busy = '0') then 
            data_rec_nv_reg_addr <= data_rec_nv_reg_start_addr; 
        else
            if(var_cntr_value<=data_rec_offset) then
                data_rec_nv_reg_addr <= std_logic_vector(   unsigned(data_rec_nv_reg_start_addr) 
                                                            + to_unsigned(var_cntr_value,nv_reg_addr_width_bit)
                                                         ); 
            end if; -- if the bound is not respected latch the last value, 
                    --> i.e. when the process starts it is "data_rec_nv_reg_start_addr", while
                    --> when it is over "data_rec_offset" it assumes "data_rec_nv_reg_start_addr + data_rec_offset"
        end if;
    end process DATA_REC_NVREG_REQ;

    
--    DATA_REC_OUT_CNTRL_old: process(var_cntr_value,data_rec_busy) is
--        --shift register used to sinchronize the offset of the recovered data with the recovered data data
--        variable data_rec_recovered_offset_last : INTEGER RANGE 0 TO NV_REG_WIDTH-1;
----        variable recovered_data_last: STD_LOGIC_VECTOR(31 DOWNTO 0);
--    begin
--        if(data_rec_busy = '1') then
--            if(var_cntr_value <= data_rec_offset) then 
--                data_rec_nv_reg_addr <= std_logic_vector(   unsigned(data_rec_nv_reg_start_addr) 
--                                                            + to_unsigned(var_cntr_value,nv_reg_addr_width_bit)
--                                                         ); 
--                
--            end if;
--            if(var_cntr_value <= data_rec_offset + 1) then
--            
--                data_rec_recovered_offset <= data_rec_recovered_offset_last;
----                data_rec_recovered_data <= nv_reg_dout;
----                data_rec_recovered_data <= recovered_data_last;
--                data_rec_recovered_offset_last :=var_cntr_value;
----                recovered_data_last := nv_reg_dout;
--            
--                data_rec_recovered_data <= nv_reg_dout;
--            end if;
--        else
--            data_rec_recovered_offset_last := 0;
----            recovered_data_last := (OTHERS => '0');
--            data_rec_nv_reg_addr <= data_rec_nv_reg_start_addr;
--            data_rec_recovered_offset <= 0;
--            data_rec_recovered_data <= (OTHERS => '0');
--        end if;
--    end process DATA_REC_OUT_CNTRL;
    
--------------------------------------------------DATA_SAVE process-------------------------------------------------------------------
    
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
    data_save_nv_reg_we <= (OTHERS => '1') when data_save_busy ='1' and var_cntr_tc = '0' and var_cntr_value > 0 else (OTHERS => '0');
    
    DATA_SAVE_OUT_CNTRL: process(var_cntr_value,data_save_busy) is
        variable var_cntr_value_last : INTEGER;
    begin
        if(data_save_busy = '1') then
            if(var_cntr_value <= data_save_bram_offset) then
                addrb <= std_logic_vector(  unsigned(data_save_bram_start_addr)
                                            +to_unsigned(var_cntr_value,bram_addr_width_bit -1)
                                          );              
            end if;
            if(var_cntr_value <= data_save_bram_offset +1) then
                
                data_save_nv_reg_addr <= std_logic_vector( unsigned(data_save_nv_reg_start_addr)
                                                           + to_unsigned(var_cntr_value_last,nv_reg_addr_width_bit)  
                                                          );
                
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
    
--    data_rec_var_cntr_end_value <= data_rec_offset +2; -- the plus one is dependent on the ram (our Bram has a 1 clk delay)
--    data_save_var_cntr_end_value <= data_save_bram_offset +2; -- the plus two is because the nv_reg sees the data delaied by one clk
    data_rec_var_cntr_end_value <= data_rec_offset + 2; -- the plus one is dependent on the ram (our Bram has a 1 clk delay)
    data_save_var_cntr_end_value <= data_save_bram_offset + 2; -- the plus two is because the nv_reg sees the data delaied by one clk

    
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
    VAR_CNTR_LAST_VAL: process(task_status_internal,var_cntr_value) is
        variable var_cntr_value_last_var: INTEGER range 0 to NV_REG_WIDTH+2;
    begin
        if(task_status_internal = '0') then
            var_cntr_value_last<= 0;
            var_cntr_value_last_var := var_cntr_value;
        else --changes on val_cntr_value events
            var_cntr_value_last <= var_cntr_value_last_var;
            var_cntr_value_last_var := var_cntr_value;
        end if;
    end process VAR_CNTR_LAST_VAL;
end Behavioral;
