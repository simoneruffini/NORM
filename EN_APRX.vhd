--------------------------------------------------------------------------------
-- Engineer:  Luca Caronti      [luca.caronti@studenti.unitn.it]
--            Simone Ruffini    [simone.ruffini@tutanota.com]
--
-- Create Date:     05/15/2020 06:53:03 PM
-- Design Name:     EN_APRX
-- Module Name:     EN_APRX.vhd - Behavioral
-- Project Name:    NORM
--
-- Description: Energy approximation core.
-- Details: Given an entity this module approximates the energy consumed by it
--  in terms of clk_cycles. While the entity is powered it consumes energy hence
--  an EN_APRX   linked to it measures how much in terms of on time. To get
--  an energy value the computed results must be multiplied by E3C
--  coefficient (Energy Consuption per Clock Cycle).  The entity could be
--  working in a point in time on different    power levels depending on what
--  hardware or speed it uses, EN_APRX accounts for that by providing
--  multiple counters for each power stage of the linked entity.
--
-- Revision:
-- Revision 00 - Luca Caronti
--  * File Created
-- Revision 01 - Simone Ruffini
--  * Refactoring
-- Additional Comments:
--
--------------------------------------------------------------------------------

----------------------------- PACKAGES/LIBRARIES -------------------------------

library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.NUMERIC_STD.ALL;

-- User libraries

library WORK;
  use work.NORM_PKG.all;

----------------------------- ENTITY -------------------------------------------

entity EN_APRX is
  generic (
    NUM_PWR_STATES : natural := 1 -- Power states of the monitored entity (at least one : off)
  );
  port (
    CLK              : in    std_logic;                                      -- Clock signal
    RST              : in    std_logic;                                      -- Positive async reset
    ACTIVE_PWR_STATE : in    natural range 0 to NUM_PWR_STATES;              -- Active power state of linked entity, only one at a time. NOTE: 0 == entity is off
    APRX_VALUES      : out   aprx_values_t(NUM_PWR_STATES - 1 downto 0);     -- Array of energy approximator values per power state
    APRX_FULL        : out   std_logic_vector(NUM_PWR_STATES - 1 downto 0);  -- Array of full status for each power state
    APRX_RST         : in    std_logic_vector(NUM_PWR_STATES - 1 downto 0)   -- Reset signal for each power state energy approximator
  );
end entity EN_APRX;

----------------------------- ARCHITECTURE -------------------------------------

architecture BEHAVIORAL of EN_APRX is

  --########################### CONSTANTS 1 ####################################

  --########################### TYPES ##########################################

  --########################### FUNCTIONS ######################################

  --########################### CONSTANTS 2 ####################################

  --########################### SIGNALS ########################################

  signal power_state_en : std_logic_vector(NUM_PWR_STATES - 1 downto 0);

begin

  assert(NUM_PWR_STATES > 0)
    report "Number or power states must be greater then 0"
    severity failure;

  --########################### ENTITY DEFINITION ##############################

  G_COUNTERS : for i in 0 to NUM_PWR_STATES - 1 generate

    U_CNT : WORK.CNT
      generic map (
        MAX         => 2**C_EN_APRX_CNT_W - 1,
        INIT_VALUE  => 0,
        INCREASE_BY => 1
      )
      port map (
        CLK   => CLK,
        RST   => RST,
        INIT  => APRX_RST(i),
        CE    => power_state_en(i),
        TC    => APRX_FULL(i),
        VALUE => APRX_VALUES(i)
      );

  end generate G_COUNTERS;

  --########################## OUTPUT PORTS WIRING #############################

  --########################## PROCESSES #######################################

  P_PWR_STATE_EN : process (RST, ACTIVE_PWR_STATE) is
  begin

    if (RST = '1') then
      power_state_en <= (others => '0');
    else
      power_state_en <= (others => '0');
      if (ACTIVE_PWR_STATE > 0) then
        power_state_en(ACTIVE_PWR_STATE - 1) <= '1';
      end if;
    end if;

  end process P_PWR_STATE_EN;

end architecture BEHAVIORAL;

--------------------------------------------------------------------------------
