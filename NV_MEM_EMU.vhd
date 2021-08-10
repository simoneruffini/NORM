----------------------------------------------------------------------------------
-- Engineer: Simone Ruffini [simone.ruffini@tutanota.com]
--
-- Create Date:     06/14/2020 10:36:25 AM
-- Design Name:     NV_MEM_EMU
-- Module Name:     NV_MEM_EMU.vhd - Behavioral
-- Project Name:    NORM
--
-- Description: Non Volatile memory emulation core
-- Details: This entity handles the emulation of the nv_mem by generatign a BUSY
--  signal which indicates the access time for the memory. This entity does not
--  depend on the particular nv_mem used.
--  NOTE: A memory that implements this emulator cannot enforce the timing if
--  the user misshandles the access protocol/timings.
--
-- Dependencies:
--
-- Revision:
-- Revision 00 - Simone Ruffini
-- * File Created
-- Revision 01 - Simone Ruffini
-- * Refactoring
-- Additional Comments:
--
----------------------------------------------------------------------------------

----------------------------- PACKAGES/LIBRARIES -------------------------------

library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.NUMERIC_STD.all;
  use IEEE.MATH_REAL.all; --for log2 and ceil

library WORK;
  use WORK.NORM_PKG.all;

entity NV_MEM_EMU is
  generic (
    CLK_FREQ_HZ    : positive; -- Input clk frequency in HZ
    ACCESS_TIME_NS : positive  -- this is the maximum delay that the nv_mem uses to process data
  );
  port (
    CLK      : in    std_logic;
    RST      : in    std_logic;
    LOAD_EN  : in    std_logic;
    BUSY_SIG : out   std_logic;
    BUSY     : out   std_logic
  );
end entity NV_MEM_EMU;

----------------------------- ARCHITECTURE -------------------------------------

architecture BEHAVIORAL of NV_MEM_EMU is

  --########################### CONSTANTS 1 ####################################

  --########################### TYPES ##########################################

  --########################### FUNCTIONS ######################################

  -- This function calculates the end value for counter

  pure function get_busy_counter_end_value (
    input_clk_freq_hz: natural;                                                           -- input clock frequency to nv_mem
    nv_mem_max_dealy_ns: natural                                                          -- max clock frequncy at which nv_mem behaves with no delay
        ) return natural is
  begin
    assert (input_clk_freq_hz > 0)
      report "Input clock frequency must be greater then 0"
      severity Failure;

    return  integer(ceil(real(nv_mem_max_dealy_ns) * real(input_clk_freq_hz) / 1E9)) - 1; --return the upper bound if division is not natural

  end function;

  --########################### CONSTANTS 2 ####################################
  constant C_CNT_END_VAL : integer := get_busy_counter_end_value(CLK_FREQ_HZ, ACCESS_TIME_NS);

  --########################### SIGNALS ########################################

  signal counter         : integer range 0 to C_CNT_END_VAL;

begin

  --########################### ENTITY DEFINITION ##############################

  --########################## OUTPUT PORTS WIRING #############################

  BUSY     <= '0' when counter = C_CNT_END_VAL else
              '1';
  BUSY_SIG <= '0' when C_CNT_END_VAL <2 else
              '0' when counter >= C_CNT_END_VAL - 1 else
              '1';

  --########################## PROCESSES #######################################

  P_COUNT : process (CLK, RST) is

    variable count : std_logic;

  begin

    if (RST = '1') then
      counter <= C_CNT_END_VAL;
      count := '0';
    elsif (CLK'event and CLK = '1') then
      if (LOAD_EN = '1') then
        count :='1';
      end if;
      if (count = '1') then
        counter <= counter + 1;
      end if;
      if (counter = C_CNT_END_VAL) then
        if (LOAD_EN /= '1') then
          counter <= C_CNT_END_VAL;
          count := '0';
        else
          counter <= 0;
        end if;
      end if;
    end if;

  end process P_COUNT;

end architecture BEHAVIORAL;

--------------------------------------------------------------------------------
