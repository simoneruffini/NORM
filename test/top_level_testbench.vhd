----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/19/2020 08:30:55 PM
-- Design Name: 
-- Module Name: top_level_testbench - Behavioral
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

entity top_level_testbench is
    
end top_level_testbench;

architecture Behavioral of top_level_testbench is
    component top_level is
    port(
        sys_clk         : in std_logic;
        global_resetN   : std_logic;
        val             : out std_logic_vector(31 downto 0)
    );
    end component;
    
    signal sys_clk : std_logic;
    signal global_resetN    : std_logic;
    signal val     : std_logic_vector(31 downto 0);
begin

    top_level_1 : top_level
    port map(
        sys_clk => sys_clk,
        global_resetN => global_resetN,
        val     => val
    );    
    
    reset_proc : process begin
        global_resetN <= '0';
        wait for 100 ns;
        global_resetN <= '1';
        wait;
    end process;

    clock_proc : process begin
        sys_clk <= '0';
        wait for 5 ns;
        sys_clk <= '1';
        wait for 5 ns;
    end process;    

    

end Behavioral;
