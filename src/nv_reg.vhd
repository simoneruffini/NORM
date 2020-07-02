----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/30/2020 12:55:22 PM
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

use IEEE.math_real.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nv_reg is
    Generic(
        MAX_DELAY   : INTEGER;
        NV_REG_WIDTH: INTEGER
    );
    Port ( 
        clk         : in STD_LOGIC;
        resetN      : in STD_LOGIC;
        power_resetN: in STD_LOGIC;
        load_en     : in STD_LOGIC;
        busy_sig    : out STD_LOGIC;
        busy        : out STD_LOGIC;
        --------------------------- 
        en          : in STD_LOGIC;
        we          : in STD_LOGIC_VECTOR(0 DOWNTO 0);
        addr        : in STD_LOGIC_VECTOR(3 DOWNTO 0);
        din         : in STD_LOGIC_VECTOR(31 DOWNTO 0);
        dout        : out STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
end nv_reg;

architecture Behavioral of nv_reg is
    ------------------------------------NV_REG_EMU_SIGNALS------------------------------------------
    signal rstn: STD_LOGIC;
    ------------------------------------------------------------------------------------------------
    ------------------------------------NV_REG_CNST-------------------------------------------------
    constant bram_addr_width_bit : INTEGER := integer(ceil(log2(real(NV_REG_WIDTH))));
    ------------------------------------------------------------------------------------------------
    ------------------------------------BRAM_SIGNALS------------------------------------------------
    signal bram_en  :STD_LOGIC;                     
    signal bram_we  :STD_LOGIC_VECTOR(0 DOWNTO 0);  
    signal bram_addr:STD_LOGIC_VECTOR(bram_addr_width_bit-1 DOWNTO 0); 
    signal bram_din :STD_LOGIC_VECTOR(31 DOWNTO 0); 
    signal bram_dout:STD_LOGIC_VECTOR(31 DOWNTO 0);                
    ------------------------------------------------------------------------------------------------   
    ------------------------------------RESET_SIGNALS-----------------------------------------------
    signal bram_en_rst         :STD_LOGIC := '0';                     
    signal bram_we_rst         :STD_LOGIC_VECTOR(0 DOWNTO 0) := (OTHERS => '0');  
    signal bram_addr_rst       :STD_LOGIC_VECTOR(bram_addr_width_bit-1 DOWNTO 0) := (OTHERS => '0'); 
    signal bram_din_rst        :STD_LOGIC_VECTOR(31 DOWNTO 0):= (OTHERS => '0'); 
    ------------------------------------------------------------------------------------------------

    COMPONENT blk_mem_gen_0 IS
    PORT (
        clka : IN STD_LOGIC;
        ena : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(bram_addr_width_bit-1 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
      );
    END COMPONENT blk_mem_gen_0;
    
begin

    BRAM: blk_mem_gen_0
    Port map (
        clka        =>clk,
        ena         =>bram_en,
        wea         =>bram_we,
        addra       =>bram_addr,
        dina        =>bram_din,
        douta       =>bram_dout    
    );
    
    EMU: entity work.nv_reg_emu(Behavioral)
    Generic map(
        MAX_DELAY => MAX_DELAY
    )
    Port map( 
        clk     =>clk,
        resetN  =>rstN,
        load_en =>load_en,
        busy_sig=>busy_sig,
        busy    =>busy
    );
    
    
    rstN <= '0' when resetN = '0' else
            '0' when power_resetN = '0' else
            resetN;
    bram_en <= bram_en_rst when resetN = '0' else
            '0' when power_resetN = '0' else
            en;
    bram_we <= bram_we_rst when resetN = '0' else
            (OTHERS => '0') when power_resetN = '0' else
            we;
    bram_addr <= bram_addr_rst when resetN = '0' else
            (OTHERS => '0') when power_resetN = '0' else
            addr;
    bram_din <= bram_din_rst when resetN = '0' else
            (OTHERS => '0') when power_resetN = '0' else
            din;
    dout <= bram_dout when resetN = '0' else
            (OTHERS => '0') when power_resetN = '0' else
            bram_dout;
    
    RST_BRAM: process(clk) is --the reset is syncronous
    variable counter : INTEGER RANGE 0 TO (NV_REG_WIDTH -1);
    begin
        if(rising_edge(clk)) then
            if(resetN = '0') then
                bram_en_rst <= '1';
                bram_we_rst <= (OTHERS => '1');
                
                bram_din_rst <= (OTHERS => '0');
                if(counter < NV_REG_WIDTH ) then
                    counter := counter +1;
                elsif(counter = NV_REG_WIDTH ) then
                    bram_we_rst <= (OTHERS => '0');
                    bram_en_rst <= '0';
                end if;
                bram_addr_rst <= std_logic_vector(to_unsigned(counter-1,bram_addr_width_bit));
            else
                bram_we_rst <= (OTHERS => '0');
                counter := 0;
            end if;

        end if;
        
    end process;
    
end Behavioral;
