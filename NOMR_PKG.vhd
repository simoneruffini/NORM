----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2020 07:14:26 PM
-- Design Name: 
-- Module Name: NORM_PKG - Behavioral
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

package NORM_PKG is
    type POWER_APPROX_COUNTER_TYPE is array (integer range <>) of INTEGER range 0 to 2**PWR_APPROX_COUNTER_NUM_BITS - 1;
    type INTERMITTENCY_ARR_INT_TYPE is array (integer range <>) of INTEGER;
    

    constant INTERMITTENCY_NUM_ELEMNTS_ROM      : integer := 1570;  -- The size of the rom, i.e. the number of voltage leves stored in it
    constant INTERMITTENCY_MAX_VAL_ROM_TRACE    : integer := 5252;  -- The maximum value reached by a voltage level. 
                                                                    ---> This is used to compute the size of a word for the bram
    constant C_INT_EMU_SAMPLES_PRESCALER            : integer := 8;     -- The prescaler value used by the intermittency emulator to fetch values
                                                                    ---> from the voltage trace ROM. This prescaler works on top of the master clk. 
                                                                    ----> NOTE: must be greater then 0

    constant C_INT_EMU_NUM_THRESH       : integer := 2;     -- The number of voltage thsholds the intermittency emulator will track (at least one, i.e. the shutdown threshold)

    constant nv_mem_addr_width_bit              : INTEGER := integer(ceil(log2(real(NV_MEM_WIDTH))));   -- This value is autocomputed and is used inside the code for faster writing
    constant v_reg_addr_width_bit               : INTEGER := integer(ceil(log2(real(V_REG_WIDTH))));    -- This value is autocomputed and is used inside the code for faster writing

    constant MASTER_CLK_SPEED_HZ                : INTEGER := 100000000; -- Master clk speed in HZ. This constant is used primarily for testbenches.
                                                                        -- !!!!!!!!! If the sytem master clk changes, change this value to the same number !!!!!!!!
    constant MASTER_CLK_PERIOD_NS               : INTEGER := (1e9/MASTER_CLK_SPEED_HZ); -- Master clk period, this value is autocomputed.
    
    constant FRAM_MAX_DELAY_NS                  : INTEGER := MASTER_CLK_PERIOD_NS *4;   -- This value defines the delay of all non volatile registers with respect to the master clk.
                                                                                        -- !!!!! By changing this value the behaviour of non volatile registers changes too !!!!!

    constant NUM_PWR_STATES                     : integer := 3;     -- The sum of all power states entities that are connected to a power approximator have.
    constant PWR_CONSUMPTION_ROM_BITS           : integer := 10;    -- The bit length of a word for the pwr_consumption_val_ROM
    constant PWR_APPROX_COUNTER_NUM_BITS        : integer := 31;    -- The register size (in bits) of all power approximators (if the pa is used a lot bigger values are suggested)
    constant NV_MEM_WIDTH                       : INTEGER := 16;    -- The word size in bits of all non volatile registers
                                                                    ---> !!!!! This value must be kept in sync with the one used inside the bram ip for all nv_mem !!!!!
    pure function get_busy_counter_end_value(
        input_clk_period : INTEGER;  --in nannoseconds
        max_delay_time: INTEGER  --in nannoseconds
    ) return INTEGER;
end package;

library IEEE;
use ieee.math_real.all;
package body NORM_PKG is 
    -- This function calculates the end value used by the counter used in nv_mem_emu
    pure function get_busy_counter_end_value(
            input_clk_period : INTEGER; -- period in nanoseconds of the input clk that the nv_mem takes
            max_delay_time: INTEGER     -- delay in nanoseconds at wich nv_mem will output its value after a request
        ) return INTEGER is
    begin
        assert (max_delay_time > 0)
            report "nv_mem dealy time = 0" severity Failure;
        if(max_delay_time <= input_clk_period) then--if the fram is as fast as the clk or faster 
            return 0; --then nothing to do 
        else
            return  integer(ceil(real(max_delay_time)/real(input_clk_period))) - 1; --return the upper bound if the delay is greater then the clk period
        end if;
    end function;
end package body NORM_PKG;
