----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/23/2020 08:04:43 AM
-- Design Name: 
-- Module Name: nv_reg_emu_testbench - Behavioral
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
-- remeber that busy signals are important, and that the ram used has no output latches so the data my be jittery
-- TODO: look into the dout data, at the moment the single port ram is in read_first_mode but it is not working
--      like it should according to documentation
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

use work.COMMON_PACKAGE.ALL;

entity nv_reg_emu_testbench is
--  Port ( );
end nv_reg_emu_testbench;

architecture Behavioral of nv_reg_emu_testbench is

    signal MASTER_CLK,MASTER_RESETN: STD_LOGIC;
    
    signal busy_1,busy_sig_1,load_en_1: STD_LOGIC;
    signal busy_2,busy_sig_2,load_en_2: STD_LOGIC;
    signal busy_3,busy_sig_3,load_en_3: STD_LOGIC;
      
    constant em1_delay: INTEGER := FRAM_MAX_DELAY_NS;  
    constant em2_delay: INTEGER := MASTER_CLK_PERIOD_NS*2;  
    constant em3_delay: INTEGER := MASTER_CLK_PERIOD_NS;  

begin
    
    NV_REG_EMULATOR_1: entity work.nv_reg_emu(Behavioral)
        generic map (
            MAX_DELAY => em1_delay
        )
        port map(
            clk     => MASTER_CLK , 
            resetN  => MASTER_RESETN,
            load_en => load_en_1,
            busy_sig=> busy_sig_1,
            busy    => busy_1
        );
     NV_REG_EMULATOR_2: entity work.nv_reg_emu(Behavioral)
        generic map (
            MAX_DELAY => em2_delay
        )
        port map(
            clk     => MASTER_CLK , 
            resetN  => MASTER_RESETN,
            load_en => load_en_2,
            busy_sig=> busy_sig_2,
            busy    => busy_2
        );
      NV_REG_EMULATOR_3: entity work.nv_reg_emu(Behavioral)
        generic map (
            MAX_DELAY => em3_delay
        )
        port map(
            clk     => MASTER_CLK , 
            resetN  => MASTER_RESETN,
            load_en => load_en_3,
            busy_sig=> busy_sig_3,
            busy    => busy_3
        );
     

    CLK: process begin
        MASTER_CLK <= '0';
        wait for MASTER_CLK_PERIOD_NS/2 * 1ns;
        MASTER_CLK <= '1';
        wait for MASTER_CLK_PERIOD_NS/2 * 1ns;
    end process;
    
    RESET: process begin
        MASTER_RESETN <= '0';
        wait for 5 * MASTER_CLK_PERIOD_NS * 1ns;
        MASTER_RESETN <= '1';
        wait;
    end process;
    
    TEST_1: process (MASTER_RESETN,MASTER_CLK) is
    variable i: integer;
    begin
        if(MASTER_RESETN='0') then
            i := 0;
            load_en_1 <= '0';
        elsif(rising_edge(MASTER_CLK)) then 
            load_en_1 <= '0';
            if(i > 3) then
                load_en_1 <= '1';
            elsif((busy_sig_1 = '0' and i < 4 and load_en_1 = '0' )or i=0) then
                i := i +1;                
                load_en_1 <= '1';
            end if;
         
        end if;
   end process;      
   
   TEST_2: process (MASTER_RESETN,MASTER_CLK) is
    variable i: integer;
    begin
        if(MASTER_RESETN='0') then
            i := 0;
            load_en_2 <= '0';
        elsif(rising_edge(MASTER_CLK)) then 
            load_en_2 <= '0';
            if(i > 3) then
                load_en_2 <= '1';
            elsif((busy_sig_2 = '0' and i < 4 and load_en_2 = '0' )or i=0) then
                i := i +1;                
                load_en_2 <= '1';
            end if;
         
        end if;
   end process;  
    
    TEST_3: process (MASTER_RESETN,MASTER_CLK) is
    variable i: integer;
    begin
        if(MASTER_RESETN='0') then
            i := 0;
            load_en_3 <= '0';
        elsif(rising_edge(MASTER_CLK)) then 
            load_en_3 <= '0';
            if(i > 3) then
                load_en_3 <= '1';
            elsif((busy_sig_3 = '0' and i < 4 and load_en_3 = '0' )or i=0) then
                i := i +1;                
                load_en_3 <= '1';
            end if;
         
        end if;
   end process;  
    
end Behavioral;
