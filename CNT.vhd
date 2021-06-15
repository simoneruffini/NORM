--------------------------------------------------------------------------------
-- Engineer:  Simone Ruffini [simone.ruffini@tutanota.com]
--
--
-- Create Date:     05/15/2020 09:30:25 PM
-- Design Name:     CNT
-- Module Name:     CNT.vhd - Behavioral
-- Project Name:    NORM
--
-- Description: Simple counter
-- Details:
--  NOTE: value after reset is equal to 0 while after init is equal to INIT_VALUE
--  NOTE: TC triggers on the clk period where value = MAX
--
-- Revision:
-- Revision 00 - Simone Ruffini
--  * File Created
-- Additional Comments:
--------------------------------------------------------------------------------

----------------------------- PACKAGES/LIBRARIES -------------------------------

library IEEE;
  use IEEE.STD_LOGIC_1164.all;

----------------------------- ENTITY -------------------------------------------

entity CNT is
  generic (
    MAX         : natural; -- Max reachable value by the counter
    INIT_VALUE  : natural; -- Initialization value after init (on reset is 0)
    INCREASE_BY : natural  -- Unit of advancment
  );
  port (
    CLK         : in    std_logic;
    RST         : in    std_logic;
    INIT        : in    std_logic;
    CE          : in    std_logic;
    TC          : out   std_logic;
    VALUE       : out   natural RANGE 0 to MAX
  );
end entity CNT;

----------------------------- ARCHITECTURE -------------------------------------

architecture BEHAVIORAL of CNT is

  --########################### CONSTANTS 1 ####################################

  --########################### TYPES ##########################################

  --########################### FUNCTIONS ######################################

  --########################### CONSTANTS 2 ####################################

  --########################### SIGNALS ########################################

  signal counter : integer range 0 to MAX;

begin

  --########################### ENTITY DEFINITION ##############################

  --########################## OUTPUT PORTS WIRING #############################
  VALUE <= counter;
  TC    <= '1' when counter = MAX else
           '0';

  --########################## PROCESSES #######################################
  P_COUNT : process (CLK, RST) is
  begin

    if (RST = '1') then
      counter <= 0;
    elsif (CLK'event and CLK = '1') then
      if (INIT = '1') then
        counter <= INIT_VALUE;
      elsif (CE = '1') then
        if (counter = MAX) then
          counter <= 0;
        else
          counter <= counter + INCREASE_BY;
        end if;
      end if;
    end if;

  end process COUNT;

end architecture BEHAVIORAL;
