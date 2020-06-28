----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/25/2020 03:04:25 PM
-- Design Name: 
-- Module Name: nv_reg - Behavioral
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
use work.COMMON_PACKAGE.ALL;

entity nv_reg is
    Port ( 
        clk     : in STD_LOGIC;
        resetN  : in STD_LOGIC;
        en      : in STD_LOGIC;
        we      : in STD_LOGIC_VECTOR(3 DOWNTO 0);
        addr    : in STD_LOGIC_VECTOR(31 DOWNTO 0);
        din     : in STD_LOGIC_VECTOR(31 DOWNTO 0);
        dout    : out STD_LOGIC_VECTOR(31 DOWNTO 0);
        busy    : out STD_LOGIC
    );
end nv_reg;

architecture Behavioral of nv_reg is
    
    -------------------INTERNAL SIGNALS-------------------------
    signal bram_clk, nv_reg_emu_busy,rsta_busy, bram_rst: STD_LOGIC;
    signal douta: STD_LOGIC_VECTOR(31 DOWNTO 0);
    ------------------------------------------------------------
    
    
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
            clk     => clk , 
            rst     => resetN,
            clk_out => bram_clk,
            busy    => nv_reg_emu_busy
        );
        
     FRAM : blk_mem_gen_0
     port map(
        clka        => bram_clk,
        rsta        => bram_rst,
        ena         => en, 
        wea         => we,
        addra       => addr,
        dina        => din,
        douta       => dout,
        rsta_busy   => rsta_busy
     );
     
     busy <= nv_reg_emu_busy OR rsta_busy;
     bram_rst <= not resetN;
     
end Behavioral;
