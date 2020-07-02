----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2020 02:32:52 PM
-- Design Name: 
-- Module Name: package - Behavioral
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
use ieee.math_real.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

package COMMON_PACKAGE is
        type PWR_STATES_ARR_TYPE is array(natural range <>) of INTEGER;
       
        constant NV_REG_WIDTH: INTEGER := 16;
        constant MASTER_CLK_SPEED : INTEGER := 100000;
        constant MASTER_CLK_PERIOD_NS : INTEGER := (1e9/MASTER_CLK_SPEED);

        constant FRAM_MAX_DELAY_NS : INTEGER := MASTER_CLK_PERIOD_NS *4;
        
        pure function get_busy_counter_end_value(
            input_clk_period : INTEGER;  --in nannoseconds
            max_delay_time: INTEGER  --in nannoseconds
        ) return INTEGER;
end package;

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
            return  integer(ceil(real(max_delay_time)/real(input_clk_period))) - 1; --return the uper bound if the delay is grather then the clk period
        end if;
    end function;
end package body COMMON_PACKAGE;

