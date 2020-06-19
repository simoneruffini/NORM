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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
use work.GLOBAL_SETTINGS.all;

entity adder is    
    port(
        sys_clk         : in std_logic;
        resetN          : in std_logic;
        prescaler       : in std_logic_vector(NUM_PWR_STATE - 1 downto 0);
        BRAM_enb        : in std_logic;
        BRAM_addrb      : in std_logic_vector(0 downto 0);
        BRAM_doutb      : out std_logic_vector(63 downto 0);
        BRAM_busy       : out std_logic;
--        BRAM_data_ready : out std_logic;
        BRAM_clk        : out std_logic;
        init_val        : in std_logic_vector(63 downto 0)
        
    );
end adder;

architecture Behavioral of adder is

    COMPONENT clock_divider is
        port(
            sys_clk     : in std_logic;
            resetN      : in std_logic;
            prescaler   : in std_logic_vector(NUM_PWR_STATE - 1 downto 0);
            output_clk  : out std_logic 
        );    
    END COMPONENT;
    
    signal clock_divided    : std_logic;
    
    COMPONENT blk_mem_gen_0
        PORT (
            clka    : in std_logic;
            ena     : in std_logic;
            wea     : in std_logic_vector(0 downto 0);
            addra   : in std_logic_vector(0 downto 0);
            dina    : in std_logic_vector(63 downto 0);
            douta   : out std_logic_vector(63 downto 0);
            clkb    : in std_logic;
            enb     : in std_logic;
            web     : in std_logic_vector(0 downto 0);
            addrb   : in std_logic_vector(0 downto 0);
            dinb    : in std_logic_vector(63 downto 0);
            doutb   : out std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    
    signal clka     : std_logic;
    signal ena      : std_logic;
    signal wea      : std_logic_vector(0 downto 0);
    signal addra    : std_logic_vector(0 downto 0);
    signal dina     : std_logic_vector(63 downto 0);
    signal douta    : std_logic_vector(63 downto 0);
    signal clkb     : std_logic;
    signal web      : std_logic_vector(0 downto 0) := "0";
    signal dinb     : std_logic_vector(63 downto 0) := (others =>'0');
    
    type control_fsm is(
        reset_state,
        loading_state,
        read_state,
        wait_state_1,
        add_state,
        wait_state_2,
        wait_state_3
    );    
    signal present_state, future_state : control_fsm := reset_state;
    
--    type date_ready_fsm is(
--        data_ready_wait_state,
--        data_ready_wait_state_1,
--        data_ready_state
--    );    
--    signal data_ready_present_state, data_ready_future_state : date_ready_fsm := data_ready_wait_state;
    
begin

    clock_divider_1 : clock_divider
    port map(
        sys_clk         => sys_clk,
        resetn          => resetN,
        prescaler       => prescaler,
        output_clk      => clock_divided
    );
    
    blk_mem_gen_0_1 : blk_mem_gen_0
    PORT MAP (
        clka    => clka,
        ena     => ena,
        wea     => wea,
        addra   => addra,
        dina    => dina,
        douta   => douta,
        clkb    => clkb,
        enb     => BRAM_enb,
        web     => web,
        addrb   => BRAM_addrb,
        dinb    => dinb,
        doutb   => BRAM_doutb
    );
    
    clka <= clock_divided;
    clkb <= clock_divided;
    BRAM_clk <= clkb;
    
    control_fsm_seq : process(clock_divided) begin
        if rising_edge(clock_divided) then
            if resetN = '0' then
                present_state <= reset_state;
            else
                present_state <= future_state;
            end if;
        end if;    
    end process;
    
    control_fsm_comb : process(present_state) begin
        
        ena <= '0';
        wea <= (others => '0'); 
        addra <= (others => '0');
        dina <= (others => '0');
        BRAM_busy <= '0';
        
        case present_state is
            when reset_state =>
                future_state <= loading_state;
            when loading_state =>
                ena <= '1';
                wea <= "1";
                dina <= init_val;
                future_state <= read_state;
            when read_state =>
                ena <= '1';
                future_state <= wait_state_1;
            when wait_state_1 =>
                ena <= '1';
                future_state <= add_state;
            when add_state =>
                wea <= "1";
                ena <= '1';
                BRAM_busy <= '1';
                dina <= std_logic_vector(unsigned(douta) + 1);
                future_state <= wait_state_2;
            when wait_state_2 =>
                BRAM_busy <= '1';
                future_state <= wait_state_3;
            when wait_state_3 =>
                BRAM_busy <= '1';
                future_state <= read_state;                    
        end case;
    
    end process;
    
--    data_ready_proc_seq : process(clock_divided) begin
--        if rising_edge(clock_divided) then
--            if resetN = '0' then
--                 data_ready_present_state <= data_ready_wait_state;
--            else
--                 data_ready_present_state <= data_ready_future_state;
--            end if;            
--        end if;
--    end process;
    
--    data_ready_proc_comb : process(data_ready_present_state) begin
        
--        data_ready_future_state <= data_ready_present_state;
    
--        case data_ready_present_state is
--            when data_ready_wait_state =>
--                if BRAM_enb = '1' then
--                    data_ready_future_state <= data_ready_wait_state_1;
--                end if;
--            when data_ready_wait_state_1 =>
--                data_ready_future_state <= data_ready_state;
--            when data_ready_state =>
--                data_ready_future_state <= data_ready_state;
--        end case;        
--    end process;
    
end Behavioral;