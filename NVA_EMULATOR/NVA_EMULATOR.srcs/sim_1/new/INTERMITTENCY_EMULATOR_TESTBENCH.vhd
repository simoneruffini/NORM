----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/17/2020 06:52:04 PM
-- Design Name: 
-- Module Name: INTERMITTENCY_EMULATOR_TESTBENCH - Behavioral
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

use work.INTERMITTENCY_PKG.all;

entity INTERMITTENCY_EMULATOR_TESTBENCH is
--  Port ( );
end INTERMITTENCY_EMULATOR_TESTBENCH;

architecture Behavioral of INTERMITTENCY_EMULATOR_TESTBENCH is
    component INTERMITTENCY_EMULATOR is
        generic(
            NUM_THRESHOLD       : integer;
            NUM_ELEMNTS_ROM     : integer;
            MAX_VAL_ROM_TRACE   : integer;
            PRESCALER           : integer
        );
        port(
            sys_clk             : in std_logic;
            resetN              : in std_logic;
            reset_emulator      : out std_logic;
            threshold_value     : in intermittency_arr_int_type(NUM_THRESHOLD - 1 downto 0);
            select_threshold    : in integer range 0 to NUM_THRESHOLD -1
        );
    end component;
    
    constant NUM_THRESHOLD       : integer := 3; 
    constant NUM_ELEMNTS_ROM     : integer := 1000;
    constant MAX_VAL_ROM_TRACE   : integer := 330;
    constant PRESCALER           : integer := 8;
    
    signal sys_clk             : std_logic;
    signal resetN              : std_logic;
    signal reset_emulator      : std_logic;
    signal threshold_value     : intermittency_arr_int_type(NUM_THRESHOLD - 1 downto 0) := (140, 170, 200);
    signal select_threshold    : integer range 0 to NUM_THRESHOLD -1;
begin
    
    INTERMITTENCY_EMULATOR_1 : INTERMITTENCY_EMULATOR
        generic map(
            NUM_THRESHOLD       => NUM_THRESHOLD,
            NUM_ELEMNTS_ROM     => NUM_ELEMNTS_ROM,
            MAX_VAL_ROM_TRACE   => MAX_VAL_ROM_TRACE,
            PRESCALER           => PRESCALER
        )
        port map(
            sys_clk             => sys_clk,
            resetN              => resetN,
            reset_emulator      => reset_emulator,
            threshold_value     => threshold_value,
            select_threshold    => select_threshold
        );
    
    clock_proc : process begin
        sys_clk <= '0';
        wait for 5 ns;
        sys_clk <= '1';
        wait for 5 ns;
    end process;
    
    signal_process : process begin
        resetn <= '0';
        select_threshold <= 0;
        wait for 100 ns;
        resetn <= '1';
        wait for 10 ms;
        select_threshold <= 1;
        wait for 10 ms;
        select_threshold <= 2;
        wait;
    end process;

end Behavioral;
