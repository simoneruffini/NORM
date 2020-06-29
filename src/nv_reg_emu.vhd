----------------------------------------------------------------------------------
-- Engineer: Simone Ruffini [simone.ruffini@tutanota.com]
-- 
-- Create Date: 06/14/2020 10:36:25 AM
-- Design Name: 
-- Module Name: nv_reg_emu - Behavioral
-- Project Name: NON_VOLATILEPRCEMUL-FPGA
-- Target Devices: xilinx zynq series
-- Tool Versions: 
-- Description: this entity handles the emulation of the nv_reg by modifing the way a normal bram is used by
--              the user. The entity does not depend on the particular nv_reg used because it just modifies the speed of 
--              the bram or the way to access it by introducing a wait signal.
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

use work.COMMON_PACKAGE.all;

entity nv_reg_emu is
    Generic(
        MAX_DELAY: INTEGER -- this is the maximum delay that the nv_reg uses to process data
    );
    Port ( 
        clk     : IN STD_LOGIC;
        resetN  : IN STD_LOGIC;
        load_en : IN STD_LOGIC; 
        busy    : OUT STD_LOGIC
    );
end nv_reg_emu;

architecture Behavioral of nv_reg_emu is
    ----------------------------------------------------
    --      INTERNAL SIGNALS FOR THE SAMPLING DELAY
    ----------------------------------------------------
    constant counter_end_value : INTEGER := get_busy_counter_end_value(MASTER_CLK_PERIOD_NS, MAX_DELAY);

    signal internal_TC : STD_LOGIC;
    signal internal_INIT: STD_LOGIC;
    signal internal_CE: STD_LOGIC;
    
begin

    BUSY_COUNTER : entity work.counter(Behavioral)
    generic map(
        MAX => counter_end_value,
        INIT_VALUE => 0,
        INCREASE_BY => 1
    )
    port map(
        clk => clk,
        resetn => resetN,
        INIT => internal_INIT,
        CE => internal_CE,
        TC => internal_TC
        --value=> internal_value
    );
    
    busy <= not internal_TC;
    process (clk,resetN) begin
        if(resetN='0') then
            internal_INIT <='0';
        elsif(rising_edge(clk)) then
            if(load_en = '1') then
                internal_CE <= '1';
            end if;
            if(load_en = '0' and internal_TC = '1') then
                internal_CE <= '0';
            end if;
        end if;
    end process;
    
end Behavioral;