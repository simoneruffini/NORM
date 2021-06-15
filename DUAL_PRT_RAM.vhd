--------------------------------------------------------------------------------
-- Engineer:  Simone Ruffini [simone.ruffini@tutanota.com]
--
-- Create Date:     Tue Jun 15 18:29:57 CEST 2021
-- Design Name:     DUAL_PRT_RAM
-- Module Name:     DUAL_PRT_RAM.vhd - RTL
-- Project Name:    NORM
--
-- Description: Synthesizable dual port ram in read-first mode with one write port
-- Details:
--
-- Revision:
-- Revision 00 - Simone Ruffini
--  * File Created
-- Additional Comments:
-- Taken from  Synthesis and Simulation Design Guide 2
-- www.xilinx.com UG626 (v13.2) July 6, 2011
--------------------------------------------------------------------------------

----------------------------- PACKAGES/LIBRARIES -------------------------------

library ieee;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.NUMERIC_STD.all;

----------------------------- ENTITY -------------------------------------------

entity DUAL_PRT_RAM is
  generic (
    ADDR_W : natural; -- Ram address ports bit depth width
    DATA_W : natural  -- Ram data in/out ports bit depth width
  );
  port (
    CLKA  : in    std_logic;                                -- Clock signal for port A
    CLKB  : in    std_logic;                                -- Clock signal for port B
    WEA   : in    std_logic;                                -- Write enable for port A
    ENA   : in    std_logic;                                -- Enable for port A
    ENB   : in    std_logic;                                -- Enable for port B
    ADDRA : in    std_logic_vector(ADDR_W - 1 downto 0);    -- Write/Read memory address for port A
    ADDRB : in    std_logic_vector(ADDR_W - 1 downto 0);    -- Read memory address for port B
    DIA   : in    std_logic_vector(DATA_W - 1 downto 0);    -- Data input (write) for port A
    DOA   : out   std_logic_vector(DATA_W - 1 downto 0);    -- Data output for port A
    DOB   : out   std_logic_vector(DATA_W - 1 downto 0)     -- Data output for port B
  );
end entity DUAL_PRT_RAM;

----------------------------- ARCHITECTURE -------------------------------------

architecture RTL of DUAL_PRT_RAM is

  --########################### CONSTANTS 1 ####################################

  --########################### TYPES ##########################################

  type ram_t is array((2 ** ADDR_W) - 1 downto 0) of std_logic_vector(DATA_W - 1 downto 0);

  --########################### FUNCTIONS ######################################

  --########################### CONSTANTS 2 ####################################

  --########################### SIGNALS ########################################
  signal ram : ram_t;

begin

  --########################### ENTITY DEFINITION ##############################

  --########################## OUTPUT PORTS WIRING #############################

  --########################## PROCESSES #######################################
  P_WRITE_PORT : process (CLKA) is
  begin

    if (CLKA'event and CLKA='1') then
      if (ENA='1') then
        if (WEA='1') then
          ram(to_integer(unsigned(ADDRA))) <= DIA;
        end if;
        DOA <= ram(to_integer(unsigned(ADDRA)));
      end if;
    end if;

  end process P_WRITE_PORT;

  P_READ_PORT : process (CLKB) is
  begin

    if (CLKB'event and CLKB='1') then
      if (ENB='1') then
        DOB <= ram(to_integer(unsigned(ADDRB)));
      end if;
    end if;

  end process P_READ_PORT;

end architecture RTL;
