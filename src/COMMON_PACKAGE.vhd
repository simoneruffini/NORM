----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2020 07:14:26 PM
-- Design Name: 
-- Module Name: COMMON_PACKAGE - Behavioral
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
use IEEE.MATH_REAL.ALL; --for log2 and ceil
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

use work.TEST_ARCHITECTURE_PACKAGE.all;
use work.NVME_FRAMEWORK_PACKAGE.all;

package COMMON_PACKAGE is
    type POWER_APPROX_COUNTER_TYPE is array (integer range <>) of INTEGER range 0 to 2**PWR_APPROX_COUNTER_NUM_BITS - 1;
    type INTERMITTENCY_ARR_INT_TYPE is array (integer range <>) of INTEGER; -- forse ora non piu ma non so se vada
    

    constant INTERMITTENCY_NUM_ELEMNTS_ROM      : integer := 1000; -- indica quanti valori ha la ROM dove c'?? il voltage trace
    constant INTERMITTENCY_MAX_VAL_ROM_TRACE    : integer := 330; -- indica il valore MAX dei dati nella ROM
    constant INTERMITTENCY_PRESCALER            : integer := 16; -- indica il prescaler con cui vengono pescati i dati nella ROM

    constant nv_reg_addr_width_bit              : INTEGER := integer(ceil(log2(real(NV_REG_WIDTH)))); 
    constant v_reg_addr_width_bit               : INTEGER := integer(ceil(log2(real(V_REG_WIDTH))));

    constant MASTER_CLK_SPEED_HZ                : INTEGER := 100000000;
    constant MASTER_CLK_PERIOD_NS               : INTEGER := (1e9/MASTER_CLK_SPEED_HZ);
    
    constant FRAM_MAX_DELAY_NS                  : INTEGER := MASTER_CLK_PERIOD_NS *4;

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
