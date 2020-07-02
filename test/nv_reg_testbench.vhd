----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/30/2020 06:18:58 PM
-- Design Name: 
-- Module Name: nv_reg_testbench - Behavioral
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

use IEEE.math_real.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
use work.COMMON_PACKAGE.all;


entity nv_reg_testbench is
--  Port ( );
end nv_reg_testbench;

architecture Behavioral of nv_reg_testbench is
    signal MASTER_CLK,MASTER_RESETN,power_resetN: STD_LOGIC;
    
    ------------------------------------NV_REG_CNST-------------------------------------------------
    constant bram_addr_width_bit : INTEGER := integer(ceil(log2(real(NV_REG_WIDTH))));
    ------------------------------------------------------------------------------------------------
    ------------------------------------NV_REG_SIGNALS----------------------------------------------
    signal busy,busy_sig    :STD_LOGIC;
    signal nv_reg_en        :STD_LOGIC := '0';                     
    signal nv_reg_we        :STD_LOGIC_VECTOR(0 DOWNTO 0) := (OTHERS => '0');  
    signal nv_reg_addr      :STD_LOGIC_VECTOR(bram_addr_width_bit-1 DOWNTO 0) ; 
    signal nv_reg_din       :STD_LOGIC_VECTOR(31 DOWNTO 0); 
    signal nv_reg_dout      :STD_LOGIC_VECTOR(31 DOWNTO 0);  
    constant bram_width     : INTEGER := NV_REG_WIDTH;
    ------------------------------------------------------------------------------------------------
    ------------------------------------CNTR_1_SIGNALS----------------------------------------------
    signal cntr_ce, cntr_init : STD_LOGIC := '0';
    signal cntr_clk, cntr_tc : STD_LOGIC;
    signal cntr_value: INTEGER;
    constant cntr_max_val : INTEGER := 70;
    ------------------------------------------------------------------------------------------------

begin
    NV_REG_1: entity work.nv_reg(Behavioral) 
    Generic map(
        MAX_DELAY_NS=> FRAM_MAX_DELAY_NS,
        NV_REG_WIDTH=> NV_REG_WIDTH
    )
    Port map(       
        clk         => MASTER_CLK,
        resetN      => MASTER_RESETN,
        power_resetN=> power_resetN,
        busy_sig    => busy_sig,
        busy        => busy,
        ------------
        en          =>nv_reg_en,
        we          =>nv_reg_we,
        addr        =>nv_reg_addr,
        din         =>nv_reg_din,
        dout        =>nv_reg_dout
    );
    
    CLK: process begin
        MASTER_CLK <= '0';
        wait for MASTER_CLK_PERIOD_NS/2 * 1ns;
        MASTER_CLK <= '1';
        wait for MASTER_CLK_PERIOD_NS/2 * 1ns;
    end process;
    
    RESET: process begin
        MASTER_RESETN <= '0';
        power_resetN <= '0';
        wait for 20 * MASTER_CLK_PERIOD_NS * 1ns;
        power_resetN <='1';
        MASTER_RESETN <= '1';
        wait for 10 * MASTER_CLK_PERIOD_NS * 1ns;
        power_resetN <='0';
        wait for 5 * MASTER_CLK_PERIOD_NS * 1ns;
        power_resetN <= '1';
        wait;
    end process;
    
    
    
    TEST_1: process (power_resetN,MASTER_CLK) is
    begin
        if(power_resetN='0') then

            cntr_ce <= '0';
            nv_reg_en <= '0'; 
            nv_reg_we <= (OTHERS => '0'); 

        elsif(rising_edge(MASTER_CLK)) then 

            cntr_ce <= '1';
            nv_reg_en <= '1';
            nv_reg_we <= (OTHERS => '0');
            if(cntr_value <bram_width) then
                nv_reg_we <= (OTHERS => '1');
            end if;
            if((cntr_value = bram_width -1) and (busy_sig ='0') AND (busy ='1')) then
                nv_reg_we <= (others => '0');
            end if;
        end if;
    end process; 
    
    nv_reg_addr <= std_logic_vector(to_unsigned(cntr_value mod bram_width,bram_addr_width_bit));  
    nv_reg_din <= std_logic_vector(to_unsigned(cntr_value +1 ,32));
    
    cntr_clk <= not busy;
    cntr_init <= '0';
    
    CNTR_1: entity work.counter(Behavioral)
    Generic map(
        MAX         => cntr_max_val,
        INIT_VALUE  => cntr_max_val -1,
        INCREASE_BY => 1
    )
    Port map( 
        clk         => cntr_clk,
        resetn      => power_resetN,
        INIT        => cntr_init,
        CE          => cntr_ce,
        TC          => cntr_tc,
        value       => cntr_value
    );
    end Behavioral;
