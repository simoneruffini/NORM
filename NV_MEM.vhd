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
    MAX_DELAY_NS : integer;
    ADDR_W       : natural;
    DATA_W       : natural;
    NV_MEM_WIDTH : integer
  );
  port (
    CLK             : in    std_logic;
    RST             : in    std_logic;
    RST_EMU         : in    std_logic;
    BUSY            : out   std_logic;
    BUSY_SIG        : out   std_logic;
    -------------chage from here--------------
    EN              : in    std_logic;
    WE              : in    std_logic;
    RADDR           : in    std_logic_vector(ADDR_W - 1 downto 0);
    WADDR           : in    std_logic_vector(ADDR_W - 1 downto 0);
    DIN             : in    std_logic_vector(DATA_W - 1 downto 0);
    DOUT            : out   std_logic_vector(DATA_W - 1 downto 0)
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

  signal nv_mem_emu_rst : std_logic;
  signal busy_internal  : std_logic;

  signal ram_en         : std_logic;
  signal ram_we         : std_logic;
  signal ram_waddr      : std_logic_vector(ADDR_W - 1 downto 0);
  signal ram_raddr      : std_logic_vector(ADDR_W - 1 downto 0);
  signal ram_din        : std_logic_vector(DATA_W - 1 downto 0);
  signal ram_dout       : std_logic_vector(DATA_W - 1 downto 0);

  signal ram_en_rst     : std_logic;
  signal ram_we_rst     : std_logic;
  signal ram_waddr_rst  : std_logic_vector(ADDR_W - 1 downto 0);
  signal ram_din_rst    : std_logic_vector(DATA_W - 1 downto 0);

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
      CLKB  => CLK,
      WEA   => ram_we,
      ENA   => ram_en,
      ENB   => ram_en,
      ADDRA => ram_waddr,
      ADDRB => ram_raddr,
      DIA   => ram_din,
      DOA   => open,
      DOB   => ram_dout
    );

  ------------------------------------------------------------------------

  U_NV_MEM_EMU : entity work.nv_mem_emu
    generic map (
      MAX_DELAY_NS => MAX_DELAY_NS
    )
    port map (
      CLK      => CLK,
      RST      => nv_mem_emu_rst,
      LOAD_EN  => ram_en,
      BUSY_SIG => BUSY_SIG,
      BUSY     => busy_internal
    );

  --########################## OUTPUT PORTS WIRING #############################

  BUSY <= busy_internal;

  --########################## COMBINATORIAL EXECUTION #########################

  nv_mem_emu_rst <= RST OR RST_EMU;

  --------------------------MUX------------------------------
  ram_en    <= ram_en_rst when RST = '1' else
               '0' when RST_EMU = '1' else
               (EN or busy_internal);              --ENABLE HOLD: IMPORTANT keeps the ram active even if the signal was deactivated
  ram_we    <= ram_we_rst when RST = '1' else
               (OTHERS => '0') when RST_EMU = '1' else
               WE;
  ram_raddr <= (OTHERS => '0')when RST = '1' else
               (OTHERS => '0') when RST_EMU = '1' else
               RADDR;
  ram_waddr <= ram_waddr_rst when RST = '1' else
               (OTHERS => '0') when RST_EMU = '1' else
               WADDR;
  ram_din   <= ram_din_rst when RST = '1' else
               (OTHERS => '0') when RST_EMU = '1' else
               DIN;
  DOUT      <= ram_dout when RST = '1' else
               (OTHERS => '0') when RST_EMU = '1' else
               ram_dout;
  -----------------------------------------------------------
  --to use a different ram memory as primitive for the nv_mem
  --add combinatory logic on the new ports reaching the memory
  --primitive like above. The clock must not be changed.
  -------------------place new logic here--------------------

  ----------------------END MUX------------------------------

  --########################## PROCESSES #######################################
  RST_RAM : process (CLK) is --the reset is syncronous

    variable counter : integer RANGE 0 to (NV_MEM_WIDTH - 1);

  begin

    if (CLK'event and CLK = '1') then
      if (RST = '1') then
        ram_en_rst <= '1';
        ram_we_rst <= (OTHERS => '1');

        ram_din_rst <= (OTHERS => '0');
        if (counter < NV_MEM_WIDTH) then
          counter := counter + 1;
        elsif (counter = NV_MEM_WIDTH) then
          ram_we_rst <= (OTHERS => '0');
          ram_en_rst <= '0';
        end if;
        ram_waddr_rst <= std_logic_vector(to_unsigned(counter - 1, ram_waddr_rst'length));
      else
        ram_we_rst <= (OTHERS => '0');
        counter := 0;
      end if;
    end if;

  end process RST_RAM;

end architecture BEHAVIORAL;
