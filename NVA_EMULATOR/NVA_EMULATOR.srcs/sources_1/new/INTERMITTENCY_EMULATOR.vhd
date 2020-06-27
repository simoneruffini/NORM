----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/17/2020 03:21:54 PM
-- Design Name: 
-- Module Name: INTERMITTENCY_EMULATOR - Behavioral
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
use work.GLOBAL_SETTINGS.all;

entity INTERMITTENCY_EMULATOR is
    port(
        sys_clk             : in std_logic; 
        reset_emulator      : out std_logic; 
        threshold_value     : in intermittency_arr_int_type(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0);
        threshold_compared  : out std_logic_vector(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0); 
        select_threshold    : in integer range 0 to INTERMITTENCY_NUM_THRESHOLDS -1
    );
end INTERMITTENCY_EMULATOR;

architecture Behavioral of INTERMITTENCY_EMULATOR is
    component trace_ROM is
        generic(
            NUM_ELEMNTS_ROM : integer;
            MAX_VAL         : integer
        );
        port(	
            clk       : in	std_logic;
            addr      : in	integer range 0 to NUM_ELEMNTS_ROM - 1;
            data_out  : out	integer range 0 to MAX_VAL
        );
    end component;
    
    component scaler generic(
            PRESCALER : integer -- must be multiple of 2  
        );
        port(
            sys_clk         : in std_logic;
            prescaler_clk   : out std_logic
        );
    end component;
    
    component counter is
        Generic(
            MAX         : INTEGER;
            INIT_VALUE  : INTEGER;
            INCREASE_BY : INTEGER
        );
        Port ( 
            clk         : in STD_LOGIC;
            INIT        : in STD_LOGIC;
            CE          : in STD_LOGIC;
            TC          : out STD_LOGIC;
            value       : out INTEGER RANGE 0 TO MAX
        );
    end component;
    
    signal ROM_addr     : integer range 0 to INTERMITTENCY_NUM_ELEMNTS_ROM - 1;
    signal ROM_data_out : integer range 0 to INTERMITTENCY_MAX_VAL_ROM_TRACE;
    
    signal prescaler_clk    : std_logic; -- clock after prescaling
    
    signal TC_counter   : std_logic;
    
    signal output_comparator : std_logic_vector(INTERMITTENCY_NUM_THRESHOLDS - 1 downto 0);
begin
    
    voltage_trace_ROM : trace_ROM
        generic map(
            NUM_ELEMNTS_ROM => INTERMITTENCY_NUM_ELEMNTS_ROM,
            MAX_VAL         => INTERMITTENCY_MAX_VAL_ROM_TRACE
        )
        port map(
            clk         => sys_clk,
            addr        => ROM_addr,
            data_out    => ROM_data_out
        );
    scaler_1 : scaler
        generic map(
            PRESCALER   => INTERMITTENCY_PRESCALER
        )
        port map(
            sys_clk         => sys_clk,
            prescaler_clk   => prescaler_clk
        );
            
    trace_counter : counter
        generic map(
            MAX         => INTERMITTENCY_NUM_ELEMNTS_ROM - 1,
            INIT_VALUE  => 0,
            INCREASE_BY => 1
        )
        port map(
            clk     => prescaler_clk,
            INIT    => '0',
            CE      => '1',
            TC      => TC_counter,
            value   => ROM_addr
        );

    comparator_generator : for i in INTERMITTENCY_NUM_THRESHOLDS -1  downto 0 generate
        output_comparator(i) <= '0' when ROM_data_out > threshold_value(i) else '1';
    end generate;
    
    reset_emulator <= output_comparator(select_threshold);
    
    threshold_compared <= output_comparator;

end Behavioral;
