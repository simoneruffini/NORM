--------------------------------------------------------------------------------
-- Engineer:  Simone Ruffini [simone.ruffini@tutanota.com]
--
--
-- Create Date:     06/30/2020 12:55:22 PM
-- Design Name:     NV_MEM
-- Module Name:     NV_MEM.vhd - Behavioral
-- Project Name:    NORM
--
-- Description: Non-volatile memory. Based on a simple dual port RAM
-- Details:
--
-- Revision:
-- Revision 00 - Simone Ruffini
--  * File Created
-- Revision 01 - Simone Ruffini
--  * Refactoring
-- Additional Comments:
--
--------------------------------------------------------------------------------

----------------------------- PACKAGES/LIBRARIES -------------------------------

library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.NUMERIC_STD.all;
  use IEEE.MATH_REAL.all;

----------------------------- ENTITY -------------------------------------------

entity NV_MEM is
  generic (
    CLK_FREQ_HZ    : positive; -- Input clk frequency in HZ
    ACCESS_TIME_NS : positive; -- this is the maximum delay that the nv_mem uses to process data
    ADDR_W         : natural;  -- NV_MEM address ports bit depth width
    DATA_W         : natural   -- NV_MEM data in/out ports bit depth width
  );
  port (
    CLK             : in    std_logic;                             -- Clock signal
    RST             : in    std_logic;                             -- Positive reset signal
    BUSY            : out   std_logic;                             -- Busy signal for Async processes
    BUSY_SIG        : out   std_logic;                             -- Busy signal for sync processes (triggered 1 clk before BUSY)
    -------------chage from here--------------
    EN              : in    std_logic;                             -- Enable memory
    WE              : in    std_logic;                             -- Write enable
    RADDR           : in    std_logic_vector(ADDR_W - 1 downto 0); -- Read address port
    WADDR           : in    std_logic_vector(ADDR_W - 1 downto 0); -- Write address port
    DIN             : in    std_logic_vector(DATA_W - 1 downto 0); -- Data input
    DOUT            : out   std_logic_vector(DATA_W - 1 downto 0)  -- Data output from read address
    -------------chage to here----------------
  );
end entity NV_MEM;

----------------------------- ARCHITECTURE -------------------------------------

architecture BEHAVIORAL of NV_MEM is

  --########################### CONSTANTS 1 ####################################

  --########################### TYPES ##########################################

  --########################### FUNCTIONS ######################################

  --########################### CONSTANTS 2 ####################################

  --########################### SIGNALS ########################################

  signal nv_mem_emu_rst        : std_logic;
  signal busy_internal         : std_logic;

  signal ram_en                : std_logic;
  signal ram_we                : std_logic;
  signal ram_waddr             : std_logic_vector(ADDR_W - 1 downto 0);
  signal ram_raddr             : std_logic_vector(ADDR_W - 1 downto 0);
  signal ram_din               : std_logic_vector(DATA_W - 1 downto 0);
  signal ram_dout              : std_logic_vector(DATA_W - 1 downto 0);

  signal ram_en_latch          : std_logic;
  signal ram_we_latch          : std_logic;
  signal ram_waddr_latch       : std_logic_vector(ram_waddr'length - 1 downto 0);
  signal ram_raddr_latch       : std_logic_vector(ram_raddr'length - 1 downto 0);
  signal ram_din_latch         : std_logic_vector(ram_din'length - 1 downto 0);

begin

  --########################### ENTITY DEFINITION ##############################

  --to use a different ram memory as primitive for the nv_mem
  -----------------instantiate here new memory component------------------
  U_RAM : entity work.dual_prt_ram
    generic map (
      ADDR_W => ADDR_W,
      DATA_W => DATA_W
    )
    port map (
      CLKA  => CLK,
      ENA   => ram_en,
      WEA   => ram_we,
      ADDRA => ram_waddr,
      DIA   => ram_din,
      DOA   => open,
      CLKB  => CLK,
      ENB   => ram_en,
      ADDRB => ram_raddr,
      DOB   => ram_dout
    );

  ------------------------------------------------------------------------

  U_NV_MEM_EMU : entity work.nv_mem_emu
    generic map (
      CLK_FREQ_HZ    => CLK_FREQ_HZ,
      ACCESS_TIME_NS => ACCESS_TIME_NS
    )
    port map (
      CLK      => CLK,
      RST      => RST,
      LOAD_EN  => ram_en,
      BUSY_SIG => BUSY_SIG,
      BUSY     => busy_internal
    );

  --########################## OUTPUT PORTS WIRING #############################

  BUSY <= busy_internal;

  --########################## COMBINATORIAL EXECUTION #########################

  ram_en    <= '0' when RST = '1' else
               ram_en_latch when busy_internal = '1' else
               EN;
  ram_we    <= '0' when RST = '1' else
               ram_we_latch when busy_internal = '1' else
               WE;
  ram_raddr <= (others => '0') when RST = '1' else
               ram_raddr_latch when busy_internal = '1' else
               RADDR;
  ram_waddr <= (others => '0') when RST = '1' else
               ram_waddr_latch when busy_internal = '1' else
               WADDR;
  ram_din   <= (others => '0') when RST = '1' else
               ram_din_latch when busy_internal = '1' else
               DIN;
  DOUT      <= (others => '0') when RST = '1' else
               ram_dout;
  -----------------------------------------------------------
  --to use a different ram memory as primitive for the nv_mem
  --add combinatory logic on the new ports reaching the memory
  --primitive like above. The clock must not be changed.
  -------------------place new logic here--------------------

  --########################## PROCESSES #######################################
  P_LATCH_INPUTS : process (CLK, RST) is
  begin

    if (RST = '1') then
      ram_en_latch    <= '0';
      ram_we_latch    <= '0';
      ram_waddr_latch <= (others => '0');
      ram_raddr_latch <= (others => '0');
      ram_din_latch   <= (others => '0');
    elsif (ClK'event and ClK = '1') then
      if (EN = '1' and busy_internal = '0') then
        ram_en_latch    <= EN;
        ram_we_latch    <= WE;
        ram_waddr_latch <= WADDR;
        ram_raddr_latch <= RADDR;
        ram_din_latch   <= DIN;
      end if;
    end if;

  end process P_LATCH_INPUTS;

end architecture BEHAVIORAL;
