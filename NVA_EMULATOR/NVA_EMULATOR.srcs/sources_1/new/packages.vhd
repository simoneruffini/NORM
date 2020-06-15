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
    type power_state_en_type is array (integer range <>) of std_logic;
    type power_state_out_type is array (integer range <>) of integer range 0 to 2**COUNTER_MAX_NUM_BIT - 1;
    type power_counter_full_type is array (integer range <>) of std_logic;
    type power_counter_resetN_type is array (integer range <>) of std_logic;
end package POWER_APPROXIMATION_PKG;