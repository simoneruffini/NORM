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
    
    signal FRAM_CLK, FRAM_RESET, FRAM_BUSY : STD_LOGIC;
    
    signal fram_enable,fram_rst_busy: STD_LOGIC;
    signal fram_wrt_en : STD_LOGIC_VECTOR(3 DOWNTO 0);
    signal fram_addr, fram_din, fram_dout : STD_LOGIC_VECTOR(31 DOWNTO 0);
    
    constant master_clk_period_t : time := (1e9/MASTER_CLK_SPEED) * 1 ns;
    
    signal value : INTEGER ;
    signal addr : UNSIGNED (1 DOWNTO 0);
    
    COMPONENT blk_mem_gen_0 IS
      PORT (
        clka : IN STD_LOGIC;
        rsta : IN STD_LOGIC;
        ena : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        rsta_busy : OUT STD_LOGIC
      );
    END COMPONENT blk_mem_gen_0 ;
    
begin
    
    NV_REG_EMULATOR: entity work.nv_reg_emu(Behavioral)
        generic map (
            NV_EMU_MAX_CLK => MASTER_CLK_SPEED/4
        )
        port map(
            clk     => MASTER_CLK , 
            rst     => MASTER_RESETN,
            clk_out => FRAM_CLK
        );
        
     FRAM : blk_mem_gen_0
     port map(
        clka        => FRAM_CLK,
        rsta        => FRAM_RESET,
        ena         => fram_enable, 
        wea         => fram_wrt_en,
        addra       => fram_addr,
        dina        => fram_din,
        douta       => fram_dout,
        rsta_busy   => fram_rst_busy
     );

    CLK: process begin
        MASTER_CLK <= '0';
        wait for master_clk_period_t/2;
        MASTER_CLK <= '1';
        wait for master_clk_period_t/2;
    end process;
    
    RESET: process begin
        MASTER_RESETN <= '0';
        wait for 5 * master_clk_period_t;
        MASTER_RESETN <= '1';
        wait;
    end process;
    
    FRAM_RESET <= NOT MASTER_RESETN;
    
    
    TEST: process (MASTER_CLK, MASTER_RESETN, FRAM_CLK) begin
        if(MASTER_RESETN = '0') then
            fram_enable <= '0';
            fram_wrt_en <= (others => '1');
            fram_addr   <= (others => '0');
            fram_din    <= (others => '0');
            value       <= 1;
            addr        <= (others => '0');
            
         else
 
             if(rising_edge(FRAM_CLK)) then
                fram_enable <= '1';
             end if;
 
             if(fram_rst_busy /= '1') then
                
                fram_wrt_en <= (others => '1');
                if(falling_edge(FRAM_CLK)) then                
                    fram_din <= std_logic_vector(to_unsigned(value,32));
                    addr <= addr + 1;
                    fram_addr <=  std_logic_vector(resize(addr,32));
                 end if;
                 
                 if(rising_edge(MASTER_CLK)) then
                    value <= value + 1;
                 end if;
            
             else
                fram_wrt_en <= (others => '0');
             end if;
  
         end if;
    end process;
    
end Behavioral;
