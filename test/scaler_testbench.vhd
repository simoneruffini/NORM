----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/17/2020 06:10:36 PM
-- Design Name: 
-- Module Name: scaler_testbench - Behavioral
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

entity scaler_testbench is
--  Port ( );
end scaler_testbench;

architecture Behavioral of scaler_testbench is
    component scaler generic(
            PRESCALER : integer -- must be multiple of 2  
        );
        port(
            sys_clk         : in std_logic;
            resetn          : in std_logic;
            prescaler_clk   : out std_logic
        );
    end component;
    
    signal sys_clk          : std_logic;
    signal resetN           : std_logic;
    signal prescaler_clk    : std_logic;
begin
    
    scaler_1 : scaler
        generic map(
            PRESCALER   => 2
        )
        port map(
            sys_clk         => sys_clk,
            resetn          => resetN,
            prescaler_clk   => prescaler_clk
        );
    
    clock_proc : process begin
        sys_clk <= '0';
        wait for 5 ns;
        sys_clk <= '1';
        wait for 5 ns;
    end process;
    
    signal_proc : process begin
        resetN <= '0';
        wait for 100 ns;
        resetN <= '1';
        wait;
    end process;

end Behavioral;
