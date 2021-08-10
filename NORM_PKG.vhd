--------------------------------------------------------------------------------
-- Engineer: Simone Ruffini [simone.ruffini@tutanota.com]
--
-- Create Date:     05/15/2020 07:14:26 PM
-- Design Name:     NORM_PKG
-- Module Name:     NORM_PKG.vhd
-- Project Name:    NORM
--
-- Description: NORM package
-- Details: Contains constants that either define the behaviour of the framework
--  or are internally used by the framework to work.
--
-- Dependencies:
--
-- Revision:
-- Revision 00 - Simone Ruffini
-- * File Created
-- Revision 01 - Simone Ruffini
-- * Refactoring
-- Revision 02 - Simone Ruffini
-- * Removed unecessary constants
-- Additional Comments:
--
--------------------------------------------------------------------------------

----------------------------- PACKAGES/LIBRARIES -------------------------------

library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.NUMERIC_STD.all;

----------------------------- PACKAGE ------------------------------------------
package norm_pkg is

  -- The register bit dept width of all energy approximators
  -- NOTE: If the expected runtime of the system is long a bigger register size results in not overflows bugs
  constant C_EN_APRX_CNT_W : integer := 31;

  -- Approximator values array type, used in EN_APRX
  -- NOTE: will contain energy approximator values for each power state

  type aprx_values_t is array (integer range <>) of INTEGER range 0 to 2 ** C_EN_APRX_CNT_W - 1;

  -- Thresholds values array type, used by INT_EMU
  -- NOTE: will contain voltage values in the same magnitude of the ones coming the voltage trace

  type thresh_values_t is array (integer range <>) of integer;

  -- E3C (Energy consumption per clock cycle) ROM data out bit depth width
  constant C_E3CROM_DATA_W : integer := 10;

end package norm_pkg;

package body norm_pkg is

  -- Package body void

end package body norm_pkg;

--------------------------------------------------------------------------------
