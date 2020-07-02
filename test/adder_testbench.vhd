----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/26/2020 04:48:12 PM
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
use work.NV_REG_EMULATOR_PKG.all;

entity adder_testbench is
--  Port ( );
end adder_testbench;

architecture Behavioral of adder_testbench is
    component adder is    
    port(
        sys_clk             : in std_logic;
        resetN              : in std_logic;
        BRAM_enb            : in std_logic;
        BRAM_addrb          : in std_logic_vector(15 downto 0);
        BRAM_doutb          : out std_logic_vector(63 downto 0);
        recovery_start_addr : out std_logic_vector(15 downto 0); 
        recovery_num_data   : out integer;
        recovery_FRAM_state : in recovery_data_fsm_type;
        recovery_data       : in std_logic_vector(63 downto 0);
        recovery_counter    : in std_logic_vector(15 downto 0);
        recovery_start      : in std_logic  
    );
    end component;
    
    signal sys_clk             : std_logic;
    signal resetN              : std_logic;
    signal BRAM_enb            : std_logic;
    signal BRAM_addrb          : std_logic_vector(15 downto 0);
    signal BRAM_doutb          : std_logic_vector(63 downto 0);
    signal recovery_start_addr : std_logic_vector(15 downto 0); 
    signal recovery_num_data   : integer;
    signal recovery_FRAM_state : recovery_data_fsm_type;
    signal recovery_data       : std_logic_vector(63 downto 0);
    signal recovery_counter    : std_logic_vector(15 downto 0);
    signal recovery_start      : std_logic;
begin

    adder_1 : adder
    port map(
        sys_clk             => sys_clk,
        resetN              => resetN,
        BRAM_enb            => BRAM_enb,
        BRAM_addrb          => BRAM_addrb,
        BRAM_doutb          => BRAM_doutb,
        recovery_start_addr => recovery_start_addr,
        recovery_num_data   => recovery_num_data,
        recovery_FRAM_state => recovery_FRAM_state,
        recovery_data       => recovery_data,
        recovery_counter    => recovery_counter,
        recovery_start      => recovery_start
        
    );
    
    clk_proc : process begin
        sys_clk <= '0';
        wait for 5 ns;
        sys_clk <= '1';
        wait for 5 ns;
    end process;

    signal_proc : process begin
        resetN <= '1';
        recovery_start <= '0';
        wait for 50 ns;
        recovery_FRAM_state <= init_state;
        wait for 10 ns;
        recovery_FRAM_state <= start_data_recovery_state; 
        wait for 10 ns;
        recovery_FRAM_state <= recovery_state;
        recovery_data <= (0 => '1',
                         others => '0');
        recovery_counter <= (others => '0');
        wait for 10 ns;
        recovery_FRAM_state <= data_recovered_state;
        wait for 400 ns;
        recovery_start <= '1';
        wait for 20 ns;
        resetN <= '0';
        recovery_start <= '0';
        wait for 100 ns;
        resetN <= '1';
        wait for 50 ns;
        recovery_FRAM_state <= init_state;
        wait for 10 ns;
        recovery_FRAM_state <= start_data_recovery_state; 
        wait for 10 ns;
        recovery_FRAM_state <= recovery_state;
        recovery_data <= (0 => '1',
                          1 => '1',
                          2 => '1',
                          3 => '1',
                          others => '0');
        wait for 10 ns;
        recovery_FRAM_state <= data_recovered_state;                      
        wait;                     
    end process;
end Behavioral;
