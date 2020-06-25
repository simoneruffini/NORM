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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

package COMMON_PACKAGE is
        type PWR_STATES_ARR_TYPE is array(natural range <>) of INTEGER;
        constant NV_PRESCALER   : INTEGER := 4; -- TODO: move this value to the config package
        constant MASTER_CLK_SPEED : INTEGER := 100000;
        constant FRAM_MAX_SPEED : INTEGER := MASTER_CLK_SPEED /4; --to be removed
        pure function get_prescaler_value(
            input_clk : INTEGER;
            output_clk: INTEGER
        ) return INTEGER;
end package;

package body COMMON_PACKAGE is 
    pure function get_prescaler_value(
            input_clk : INTEGER;
            output_clk: INTEGER
        ) return INTEGER is
    begin
        if(output_clk > input_clk) then 
            return 1;
        else
            return  (input_clk/output_clk)/2;
        end if;
    end function;
end package body COMMON_PACKAGE;

