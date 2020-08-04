----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2020 10:37:15 PM
-- Design Name: 
-- Module Name: TEST_MODULE_PACKAGE - Behavioral
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
use IEEE.MATH_REAL.ALL;
use work.GLOBAL_SETTINGS.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

package TEST_MODULE_PACKAGE is
    type fsm_nv_reg_state_t is(
        shutdown_s,
        init_s,
        start_data_recovery_s,
        recovery_s,
        data_recovered_s,
        do_operation_s,
        start_data_save_s,
        data_save_s,
        data_saved_s
    );
        
    type threshold_t is(
        hazard,
        waring,
        nothing
    );
    constant NV_REG_WIDTH: INTEGER := 16;
    constant BRAM_WIDTH: INTEGER := 65536;
    constant FRAM_MAX_DELAY_NS : INTEGER := MASTER_CLK_PERIOD_NS *4;
    constant nv_reg_addr_width_bit : INTEGER := integer(ceil(log2(real(NV_REG_WIDTH))));
    constant bram_addr_width_bit : INTEGER := integer(ceil(log2(real(BRAM_WIDTH))));
end package;
package body TEST_MODULE_PACKAGE is 
end package body TEST_MODULE_PACKAGE;
