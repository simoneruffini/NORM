----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/26/2020 04:48:12 PM
-- Design Name: 
-- Module Name: vol_cntr_testbench - Behavioral
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
use work.TEST_MODULE_PACKAGE.all;
use work.GLOBAL_SETTINGS.ALL;

entity vol_cntr_testbench is
--  Port ( );
end vol_cntr_testbench;

architecture Behavioral of vol_cntr_testbench is
    -------------------------------TESTB_INTERNAL_SIGNALS---------------------------------
    signal sys_clk      : STD_LOGIC;
    signal power_resetN : STD_LOGIC;       
    signal resetN       : STD_LOGIC;
    --------------------------------------------------------------------------------------    
    -------------------------------vol_cntr_SIGNALS---------------------------------------
    signal task_status         : STD_LOGIC;
    signal nv_reg_en           : STD_LOGIC;
    signal nv_reg_busy         : STD_LOGIC;
    signal nv_reg_busy_sig     : STD_LOGIC; 
    signal nv_reg_we           : STD_LOGIC_VECTOR( 0 DOWNTO 0);  
    signal nv_reg_addr         : STD_LOGIC_VECTOR(nv_reg_addr_width_bit-1 DOWNTO 0);
    signal nv_reg_din          : STD_LOGIC_VECTOR( 31 DOWNTO 0);
    signal nv_reg_dout         : STD_LOGIC_VECTOR( 31 DOWNTO 0);
    --------------------------------------------------------------------------------------
    -------------------------------FSM_NV_REG_SIGNALS-------------------------------------
    signal thresh_stats         : threshold_t;
    signal fsm_nv_reg_state     : fsm_nv_reg_state_t;    
    signal fsm_nv_reg_state_sig : fsm_nv_reg_state_t;

    --------------------------------------------------------------------------------------

    
    
    component vol_cntr is    
    port(
        sys_clk             : in STD_LOGIC;
        resetN              : in STD_LOGIC;
        fsm_nv_reg_state    : in fsm_nv_reg_state_t;
        task_status         : out STD_LOGIC;
        nv_reg_en           : out STD_LOGIC;
        nv_reg_busy         : in STD_LOGIC;
        nv_reg_busy_sig     : in STD_LOGIC; 
        nv_reg_we           : out STD_LOGIC_VECTOR( 0 DOWNTO 0);  
        nv_reg_addr         : out STD_LOGIC_VECTOR(nv_reg_addr_width_bit-1 DOWNTO 0);
        nv_reg_din          : out STD_LOGIC_VECTOR( 31 DOWNTO 0);
        nv_reg_dout         : in STD_LOGIC_VECTOR( 31 DOWNTO 0);
        vol_cntr1_value     : out std_logic_vector(31 DOWNTO 0);
        vol_cntr2_value     : out std_logic_vector(31 DOWNTO 0);
        vol_cntr3_value     : out std_logic_vector(31 DOWNTO 0)
    );
    end component;
    
    component fsm_nv_reg is
    port ( 
        clk                     : in STD_LOGIC;
        resetN                  : in STD_LOGIC;
        thresh_stats            : in threshold_t;
        task_status             : in STD_LOGIC;
        fsm_state               : out fsm_nv_reg_state_t;
        fsm_state_sig           : out fsm_nv_reg_state_t --used with care (it is the future state of the machine, and it is combinatory so it is prone to glitces)
    );
    end component;
    
    component nv_reg is
    Generic(
        MAX_DELAY_NS: INTEGER;
        NV_REG_WIDTH: INTEGER
    );
    Port ( 
        clk         : in STD_LOGIC;
        resetN      : in STD_LOGIC;
        power_resetN: in STD_LOGIC;
        --------------------------- 
        busy_sig    : out STD_LOGIC;
        busy        : out STD_LOGIC;
        en          : in STD_LOGIC;
        we          : in STD_LOGIC_VECTOR(0 DOWNTO 0);
        addr        : in STD_LOGIC_VECTOR(integer(ceil(log2(real(NV_REG_WIDTH))))-1 DOWNTO 0);
        din         : in STD_LOGIC_VECTOR(31 DOWNTO 0);
        dout        : out STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
    end component;
    
begin
    
    ADDR_E: vol_cntr
    port map(                           
        sys_clk             => sys_clk,
        resetN              => power_resetN,
        fsm_nv_reg_state    => fsm_nv_reg_state,
        task_status         => task_status,
        nv_reg_en           => nv_reg_en,
        nv_reg_busy         => nv_reg_busy,
        nv_reg_busy_sig     => nv_reg_busy_sig,
        nv_reg_we           => nv_reg_we,
        nv_reg_addr         => nv_reg_addr,
        nv_reg_din          => nv_reg_din,
        nv_reg_dout         => nv_reg_dout
    );                      
    FSM_NV_REG_E: fsm_nv_reg
    port map( 
        clk             =>sys_clk, 
        resetN          =>power_resetN, 
        thresh_stats    =>thresh_stats, 
        task_status     =>task_status, 
        fsm_state       =>fsm_nv_reg_state
--        fsm_state_sig      =>,
    );
   
    
    NV_REG_E: nv_reg
    Generic map(
        MAX_DELAY_NS=> FRAM_MAX_DELAY_NS,
        NV_REG_WIDTH=> NV_REG_WIDTH
    )
    Port map( 
        clk         =>sys_clk,
        resetN      =>resetN,
        power_resetN=>power_resetN,
        busy_sig    =>nv_reg_busy_sig,
        busy        =>nv_reg_busy,
        --------------------------- 
        en          =>nv_reg_en,
        we          =>nv_reg_we,
        addr        =>nv_reg_addr,
        din         =>nv_reg_din,
        dout        =>nv_reg_dout
    );
                     
    
    CLK : process begin
        sys_clk <= '0';
        wait for MASTER_CLK_PERIOD_NS/2 * 1ns;
        sys_clk <= '1';
        wait for MASTER_CLK_PERIOD_NS/2 * 1ns;
    end process;
    
    RST: process is
    begin
        resetN <= '0';
        wait for (NV_REG_WIDTH+1)*MASTER_CLK_PERIOD_NS * 1ns; 
        resetN <= '1';
        wait;
    end process RST;
    
    TEST: process is
    begin
        power_resetN <= '0';
        thresh_stats <= hazard;
        wait for (NV_REG_WIDTH+5)*MASTER_CLK_PERIOD_NS * 1ns; 
        power_resetN <= '1';
        wait for (NV_REG_WIDTH+5)*MASTER_CLK_PERIOD_NS * 1ns;
        thresh_stats <= nothing;
        wait for (30)*MASTER_CLK_PERIOD_NS * 1ns;         
        thresh_stats <= hazard;
        wait for (30)*MASTER_CLK_PERIOD_NS * 1ns; --wait for (20)*MASTER_CLK_PERIOD_NS * 1ns; -- to have abrupt interruption
        power_resetN <= '0';
        wait for (4)*MASTER_CLK_PERIOD_NS * 1ns;
        power_resetN <= '1';
        wait for (10)*MASTER_CLK_PERIOD_NS * 1ns;
        thresh_stats <= nothing;
        wait;
    end process TEST;
    
end Behavioral;
