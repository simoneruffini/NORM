----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2020 07:14:26 PM
-- Design Name: 
-- Module Name: packages - Behavioral
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
        data_recovery_start_state,
        recovery_state,
        data_recovered_state
    );
end package NV_REG_EMULATOR_PKG;
