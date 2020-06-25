----------------------------------------------------------------------------------
-- Engineer: Simone Ruffini [simone.ruffini@tutanota.com]
-- 
-- Create Date: 06/14/2020 10:36:25 AM
-- Design Name: 
-- Module Name: nv_reg_emu - Behavioral
-- Project Name: NON_VOLATILEPRCEMUL-FPGA
-- Target Devices: xilinx zynq series
-- Tool Versions: 
-- Description: this entity handles the emulation of the fram by modifing the way a normal bram is used by
--              the user. The entity does not depend on the particular fram used because it just modifies the speed of 
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
        NV_EMU_MAX_CLK: INTEGER -- this is the maximum clk that the fram will handle without latency
    );
    Port ( 
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC; 
        clk_out: OUT STD_LOGIC;
        busy : OUT STD_LOGIC
    );
end nv_reg_emu;

architecture Behavioral of nv_reg_emu is

    ----------------------------------------------------
    --      INTERNAL SIGNALS FOR THE SAMPLING DELAY
    ----------------------------------------------------
    signal internal_TC : STD_LOGIC;
    constant internal_prescaler_max_value : INTEGER := get_prescaler_value(input_clk=>MASTER_CLK_SPEED, output_clk=>NV_EMU_MAX_CLK);
    signal internal_CE: STD_LOGIC;
    signal internal_clk_out: STD_LOGIC;
    
begin
    --internal_prescaler_max_value <= get_prescaler_value(input_clk=>MASTER_CLK_SPEED, output_clk=>NV_EMU_MAX_CLK);
    
    --check if the prescaler is on or off
    internal_CE <=  '0' when internal_prescaler_max_value  <= 1 else '1';
    
    -- if the prescaler is off then just use the internal clk
    clk_out <= internal_clk_out when internal_CE = '1' else clk;
   
    -- If the internal_CE (the prescaler) is off then the fram is never busy
    -- But if it is on and the internal_TC is on (happens 2 times per internal_clk_out) 
    -- and we are in the down period of the clock then we are not in busy
    busy <= internal_CE AND (NOT (internal_TC AND (NOT internal_clk_out)));
   
    prescaler : entity work.counter(Behavioral)
    generic map(
        MAX => internal_prescaler_max_value-1,
        INIT_VALUE => 0,
        INCREASE_BY => 1
    )
    port map(
        clk => clk,
        resetn => rst,
        INIT => '0', --never init the counter
        CE => internal_CE,
        TC => internal_TC
        --value=> internal_value
    );
    process (clk,rst) begin
        if(rst='0') then
            internal_clk_out <= '0';
        elsif(rising_edge(clk) AND internal_TC = '1') then
            internal_clk_out <= not internal_clk_out;
        end if;
    end process;
    
end Behavioral;