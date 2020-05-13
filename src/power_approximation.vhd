----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2020 11:30:40 AM
-- Design Name: 
-- Module Name: power_approximation - Behavioral
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

use work.COMMON_PACKAGE.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity power_approximation is
    generic(
        NUM_PWR_STATES : INTEGER
    );
    port(
        PWR_STATES_ARR : in PWR_STATES_ARR_TYPE(NUM_PWR_STATES -1 downto 0)
    );
end power_approximation;

architecture Behavioral of power_approximation is

begin


end Behavioral;
