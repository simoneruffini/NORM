----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/14/2020 05:43:53 PM
-- Design Name: 
-- Module Name: global_settings - Behavioral
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

package GLOBAL_SETTINGS is
    constant NUM_PWR_STATE          : integer := 3;
    constant ROM_MAX_NUM_BIT        : integer := 10;
    constant COUNTER_MAX_NUM_BIT    : integer := 31;
    constant INTERMITTENCY_NUM_ELEMNTS_ROM  : integer := 1000;
    constant INTERMITTENCY_MAX_VAL_ROM_TRACE    : integer := 330;
    constant INTERMITTENCY_PRESCALER            : integer := 16;
    constant INTERMITTENCY_NUM_THRESHOLD        : integer := 2;
end package GLOBAL_SETTINGS;

package INTERMITTENCY_PKG is
    type intermittency_arr_int_type is array (integer range <>) of integer;
end package INTERMITTENCY_PKG;
