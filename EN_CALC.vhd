--------------------------------------------------------------------------------
-- Engineer:    Luca Caronti    [luca.caronit@studenti.unit.it] 
--              Simone Ruffini  [simone.ruffini@tutanota.com]
--
-- Create Date:     06/10/2020 10:36:33 PM
-- Design Name:     EN_CALC
-- Module Name:     EN_CALC.vhd - Behavioral
-- Project Name:    NORM
--
-- Description: Energy calcultaor
-- Details: This core takes as input values from EN_APRX and transforms 
--  them into a an energy value expressed in joule.
-- Dependencies:
--  * XiliX multiplier IP
--
-- Revision:
-- Revision 00 - Luca Caronti
--  * File Created
-- Revision 01 - Simone Ruffini
--  * Refactoring 
-- Additional Comments:
--
--------------------------------------------------------------------------------

----------------------------- PACKAGES/LIBRARIES -------------------------------
library IEEE;
    use IEEE.STD_LOGIC_1164.all;
    use IEEE.NUMERIC_STD.all;

-- User libraries

library WORK;
    use WORK.NORM_PKG.all;

----------------------------- ENTITY -------------------------------------------
entity en_calc is
    generic(
      NUM_PWR_STATES: integer -- Same value found in EN_APRX
    )
    port (
        CLK                     : in std_logic; -- system clock
        start_evaluation        : in std_logic; -- start evaluation signal 
        evaluation_ready        : out std_logic; -- evaluation ready singal 
        num_state_to_evaluate   : in integer range 0 to NUM_PWR_STATES; -- number of state to evaluate
        input_counter_val       : in aprx_values_t(NUM_PWR_STATES -1 downto 0); -- array of each state counter
        output_data             : out std_logic_vector(C_EN_APRX_CNT_W + C_E3CROM_DATA_W downto 0) -- output data
    );
end en_calc;

architecture Behavioral of en_calc is

    --- ROM component declaration ---
    component PWR_CONSUMPTION_VAL_ROM is
        generic(
            NUM_ELEMENTS_ROM : integer;
            MAX_VAL         : integer
        );
        port(	
            clk       : in	std_logic;
            addr      : in	integer range 0 to NUM_ELEMENTS_ROM - 1;
            data_out  : out	integer range 0 to MAX_VAL - 1
        );
    end component;
    
    --- multiplier component declaration ---
    COMPONENT xbip_multadd_0
        PORT (
            CLK         : IN STD_LOGIC;
            CE          : IN STD_LOGIC;
            SCLR        : IN STD_LOGIC;
            A           : IN STD_LOGIC_VECTOR(C_EN_APRX_CNT_W - 1 DOWNTO 0);
            B           : IN STD_LOGIC_VECTOR(C_E3CROM_DATA_W - 1 DOWNTO 0);
            C           : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
            SUBTRACT    : IN STD_LOGIC;
            P           : OUT STD_LOGIC_VECTOR(C_EN_APRX_CNT_W + C_E3CROM_DATA_W DOWNTO 0);
            PCOUT       : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
        );
    END COMPONENT;

    --- MULTIPLIER SIGNALS ---
    signal SCLR : std_logic := '0';
    signal P : std_logic_vector(41 downto 0);
    signal PCOUT : std_logic_vector(47 downto 0);
    signal CE : std_logic := '0';
    
    --- COUNTER SIGNALS ---
    signal input_counter_val_std_logic_vector : std_logic_vector(C_EN_APRX_CNT_W -1 downto 0) := (others => '0');
    signal input_counter_val_std_logic_vector_FF : std_logic_vector(C_EN_APRX_CNT_W -1 downto 0) := (others => '0');
    signal sample_input_counter_val_std_logic_vector : std_logic := '0';
    
    --- ROM ---
    signal ROM_addr_FF : integer range 0 to NUM_PWR_STATES - 1;
    signal sample_ROM_addr : std_logic := '0';
    signal ROM_data_out  : integer range 0 to 2**C_E3CROM_DATA_W - 1;
    signal ROM_data_out_std_logic_vector : std_logic_vector(C_E3CROM_DATA_W - 1 downto 0);
    
    --- FSM SIGNALS --- 
    type en_calc_state is(
        wait_state,
        wait_ROM_data_state,
        wait_evaluation_state_1,
        wait_evaluation_state_2,
        wait_evaluation_state_3,
        wait_evaluation_state_4,
        data_ready_state
    );
    signal en_calc_present_state, en_calc_future_state : en_calc_state := wait_state; 
    
begin
    
    --- DATA-FLOW ---
    input_counter_val_std_logic_vector <= std_logic_vector(to_unsigned(input_counter_val(num_state_to_evaluate),C_EN_APRX_CNT_W));
    ROM_data_out_std_logic_vector <= std_logic_vector(to_unsigned(ROM_data_out, C_E3CROM_DATA_W));
    output_data <= P;

    --- ROM INSTANCE ---
    PWR_CONSUMPTION_VAL_ROM_1 : PWR_CONSUMPTION_VAL_ROM
        generic map(
            NUM_ELEMENTS_ROM => NUM_PWR_STATES,
            MAX_VAL => 2**C_E3CROM_DATA_W
        )
        port map(
            clk => CLK,
            addr => ROM_addr_FF,
            data_out => ROM_data_out
        );

    --- MULTIPLIER INSTANCE --- 
    MULTIPLIER_0 : xbip_multadd_0
        port map(
            CLK => CLK,
            CE => CE,
            SCLR => SCLR,
            A => input_counter_val_std_logic_vector_FF,
            B => ROM_data_out_std_logic_vector,
            C => (others => '0'),
            SUBTRACT => '0',
            P => P,
            PCOUT => PCOUT
        );
        
    --- SEQUANTIAL FSM ---
    fsm_seq : process(CLK) begin
    if rising_edge(CLK) then
            en_calc_present_state <= en_calc_future_state; -- change state
    end if;
  end process;
  
  --- COMBINATORY FSM --
    fsm_comb : process(en_calc_present_state, start_evaluation) begin
        -- default values ---
        en_calc_future_state <= en_calc_present_state;
        CE <= '0';
        sample_ROM_addr <= '0';
        sample_input_counter_val_std_logic_vector <= '0';
        evaluation_ready <= '0';
        case en_calc_present_state is
            when wait_state =>
                if start_evaluation = '1' then
                    -- if start_evaluation = '1' then change state
                    en_calc_future_state <= wait_ROM_data_state;
                    
                    --- start sampling ---
                    sample_input_counter_val_std_logic_vector <= '1'; -- sample counter val
                    sample_ROM_addr <= '1'; -- sample ROM address ( = number of state to evaluate)
                    
                end if;
            when wait_ROM_data_state => 
                -- wait one clock cycle for ROM data             
                en_calc_future_state <= wait_evaluation_state_1;                
            when wait_evaluation_state_1 =>
                -- wait first clock cycle 
                CE <= '1';
                en_calc_future_state <= wait_evaluation_state_2;
            when wait_evaluation_state_2 =>
                -- wait second clock cycle 
                CE <= '1';
                en_calc_future_state <= wait_evaluation_state_3;
            when wait_evaluation_state_3 =>
                -- wait third clock cycle 
                CE <= '1';
                en_calc_future_state <= wait_evaluation_state_4;
            when wait_evaluation_state_4 =>
                -- wait fourth clock cycle 
                CE <= '1';
                en_calc_future_state <= data_ready_state;            
            when data_ready_state =>
                -- data ready
                evaluation_ready <= '1';
                en_calc_future_state <= wait_state;
        end case;
    end process;
    
    --- Flip Flop PROCESS ---
    FF_proc : process(CLK) begin
        if rising_edge(CLK) then
            if sample_ROM_addr = '1' then -- sample num_state_to_evaluate val
                ROM_addr_FF <= num_state_to_evaluate;
            end if;
            if sample_input_counter_val_std_logic_vector = '1' then -- sample input_counter_val_std_logic_vector val
                input_counter_val_std_logic_vector_FF <= input_counter_val_std_logic_vector;
            end if;
    end if;
    end process;

    
end Behavioral;
