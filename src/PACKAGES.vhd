----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2020 07:14:26 PM
-- Design Name: 
-- Module Name: PACKAGES - Behavioral
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


package POWER_APPROXIMATION_PKG is
    type power_approx_counter_type is array (integer range <>) of integer range 0 to 2**PWR_APPROX_COUNTER_NUM_BITS - 1;
end package POWER_APPROXIMATION_PKG;

package INTERMITTENCY_PKG is
    type intermittency_arr_int_type is array (integer range <>) of integer;
end package INTERMITTENCY_PKG;

package NV_REG_EMULATOR_PKG is
    type recovery_data_fsm_type is(
        init_state,
        start_data_recovery_state,
        recovery_state,
        data_recovered_state
    );
end package NV_REG_EMULATOR_PKG;

package COMMON_PACKAGE is
        type PWR_STATES_ARR_TYPE is array(natural range <>) of INTEGER;
        pure function get_busy_counter_end_value(
            input_clk_period : INTEGER;  --in nannoseconds
            max_delay_time: INTEGER  --in nannoseconds
        ) return INTEGER;
end package;

library IEEE;
use ieee.math_real.all;
package body COMMON_PACKAGE is 
    pure function get_busy_counter_end_value(
            input_clk_period : INTEGER;
            max_delay_time: INTEGER 
        ) return INTEGER is
    begin
        assert (max_delay_time > 0)
            report "nv_reg dealy time = 0" severity Failure;
        if(max_delay_time <= input_clk_period) then--if the fram is as fast as the clk or faster 
            return 0; --then nothing to do 
        else
            return  integer(ceil(real(max_delay_time)/real(input_clk_period))) - 1; --return the upper bound if the delay is greater then the clk period
        end if;
    end function;
end package body COMMON_PACKAGE;
