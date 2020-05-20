----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2020 01:05:12 PM
-- Design Name: 
-- Module Name: nv_register - Behavioral
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

use work.COMMON_PACKAGE.all;

entity nv_register is
    Port ( 
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC; 
        en : IN STD_LOGIC;
        we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        rst_busy : OUT STD_LOGIC
    );
end nv_register;

architecture Behavioral of nv_register is
    
    component blk_mem_gen_0 is
        port (
            clka : IN STD_LOGIC;
            rsta : IN STD_LOGIC;
            ena : IN STD_LOGIC;
            wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            addra : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            rsta_busy : OUT STD_LOGIC
        );
    end component blk_mem_gen_0;
    
    ----------------------------------------------------
    --      INTERNAL SIGNALS FOR THE SAMPLING DELAY
    ----------------------------------------------------
    signal internal_TC : STD_LOGIC;
    signal internal_value : INTEGER RANGE 0 TO NV_DELAY;
    signal internal_CE: STD_LOGIC := '1';
    
    ----------------------------------------------------
    --      INTERNAL SIGNALS TO BRAM
    ----------------------------------------------------
    --signal sampled_rst: STD_LOGIC;
    --signal sampled_ena: STD_LOGIC;
    signal sampled_wea: STD_LOGIC_VECTOR (3 downto 0);
    signal sampled_addra: STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal sampled_dina: STD_LOGIC_VECTOR(31 DOWNTO 0);
    --signal sampled_dout: STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal internal_rsta_busy: STD_LOGIC;
    
    begin
    
    delay_counter: entity work.counter(Behavioural) 
        generic map(
            MAX => NV_DELAY-1,
            INIT_VALUE => 0,
            INCREASE_BY => 1
        )
        port map(
            clk => clk,
            resetn => rst,
            INIT => '0', --never init the counter
            CE => internal_CE,
            TC => internal_TC,
            value=> internal_value
        );
    
    reg: blk_mem_gen_0 
        port map(
            clka => clk,
            rsta => rst,
            ena => en,
            wea => sampled_wea,
            addra => sampled_addra,
            dina => sampled_dina,
            douta => dout,
            rsta_busy => internal_rsta_busy
        );
        
    --the busy signal is either on when the memory is busy
    --or when the samplig time is not ready -> the terminal_count is off 
    rst_busy <= internal_rsta_busy OR (NOT internal_TC); 
    -- TODO this has penality effects beacause we can access the bram register once every DELAY clk cycles
    
    internal_CE <= '1'; --always sampled (nontheless rst has precedence over CE)
    
    proc1: process (clk,rst) begin
        if (rst = '0') then
            sampled_wea <= (others => '0');
            sampled_addra <= (others => '0');
            sampled_dina <= (others => '0');
        elsif rising_edge(clk) then
            if (internal_tc = '1') then
                --sampled_ena <= en;
                sampled_wea <= we;
                sampled_addra <= addr;
                sampled_dina <= din;
            end if;
            
        end if;
    end process;

end Behavioral;
