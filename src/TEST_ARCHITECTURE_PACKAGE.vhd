----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2020 10:37:15 PM
-- Design Name: 
-- Module Name: TEST_ARCHITECTURE_PACKAGE - Behavioral
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


-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

package TEST_ARCHITECTURE_PACKAGE is
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

    constant V_REG_WIDTH: INTEGER := 65536;

end package;
package body TEST_ARCHITECTURE_PACKAGE is 
end package body TEST_ARCHITECTURE_PACKAGE;
