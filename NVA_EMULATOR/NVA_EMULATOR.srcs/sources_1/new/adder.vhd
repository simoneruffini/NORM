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
use work.NV_REG_EMULATOR_PKG.all;
entity adder is    
    port(
        sys_clk             : in std_logic;
        resetN              : in std_logic;
        BRAM_enb            : in std_logic;
        BRAM_addrb          : in std_logic_vector(0 downto 0);
        BRAM_doutb          : out std_logic_vector(63 downto 0);
        BRAM_busy           : out std_logic;
        recovery_start_addr : out std_logic_vector(31 downto 0); 
        recovery_offset     : out integer;
        recovery_data_en    : in std_logic;
        recovery_state      : in recovery_data_fsm_type;
        recovery_data       : in std_logic_vector(63 downto 0);
        recovery_counter    : in integer
        
    );
end adder;

architecture Behavioral of adder is
    
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
   
    constant num_data_to_recover : integer := 1;
    
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
        enb     => BRAM_enb,
        web     => web,
        addrb   => BRAM_addrb,
        dinb    => dinb,
        doutb   => BRAM_doutb
    );
    
    clka <= sys_clk;
    clkb <= sys_clk;
    recovery_offset <= num_data_to_recover;
    recovery_start_addr <= (others => '0');
    
    control_fsm_seq : process(sys_clk, resetN) begin
        if resetN = '0' then
            present_state <= reset_state;
        elsif rising_edge(sys_clk) then
            present_state <= future_state;
        end if;    
    end process;
    
    control_fsm_comb : process(present_state, recovery_counter) begin
        
        ena <= '0';
        wea <= (others => '0'); 
        addra <= (others => '0');
        dina <= (others => '0');
        BRAM_busy <= '0';
        
        case present_state is
            when reset_state =>
                if recovery_data_en = '1' then
                    future_state <= loading_state;
                else
                    future_state <= read_state;                
                end if;                
            when loading_state =>
                ena <= '1';
                wea <= "1";
                addra <= std_logic_vector(to_unsigned(recovery_counter, num_data_to_recover));
                dina <= recovery_data;
                if recovery_data_en = '0' then
                    future_state <= read_state;
                end if;                                             
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
    
end Behavioral;