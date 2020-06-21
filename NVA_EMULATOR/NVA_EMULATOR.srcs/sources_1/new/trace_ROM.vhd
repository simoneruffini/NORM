----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/17/2020 03:56:37 PM
-- Design Name: 
-- Module Name: trace_ROM - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity trace_ROM is
    generic(
        NUM_ELEMNTS_ROM : integer;
        MAX_VAL         : integer
    );
    port(	
	   	clk       : in	std_logic;
		addr      : in	integer range 0 to NUM_ELEMNTS_ROM - 1;
		data_out  : out	integer range 0 to MAX_VAL
    );
end trace_ROM;

architecture Behavioral of trace_ROM is
    type rom_type is array (0 to NUM_ELEMNTS_ROM - 1) of integer range 0 to  MAX_VAL;
    signal ROM: rom_type := (
317,
306,
306,
309,
309,
302,
292,
292,
292,
297,
291,
298,
289,
284,
284,
291,
302,
294,
294,
292,
300,
304,
313,
318,
318,
319,
319,
328,
328,
330,
330,
321,
321,
320,
320,
320,
320,
320,
319,
319,
312,
320,
320,
321,
321,
318,
318,
318,
320,
320,
325,
325,
325,
319,
319,
322,
322,
322,
322,
322,
322,
322,
323,
329,
329,
327,
327,
327,
327,
327,
328,
328,
328,
328,
318,
320,
309,
309,
301,
301,
301,
301,
292,
287,
297,
297,
308,
300,
308,
304,
304,
304,
303,
299,
299,
299,
297,
298,
298,
303,
302,
302,
313,
316,
316,
316,
318,
324,
319,
319,
320,
314,
314,
317,
317,
317,
317,
317,
321,
317,
317,
323,
315,
314,
313,
313,
313,
313,
313,
317,
317,
317,
325,
329,
319,
319,
319,
319,
319,
319,
319,
319,
318,
313,
324,
324,
324,
324,
324,
324,
324,
324,
323,
329,
320,
310,
302,
291,
291,
291,
291,
291,
292,
292,
300,
310,
318,
329,
328,
328,
321,
321,
321,
314,
306,
306,
306,
306,
307,
307,
313,
310,
310,
317,
324,
324,
321,
321,
310,
310,
304,
307,
307,
307,
309,
309,
306,
306,
317,
317,
323,
323,
324,
314,
314,
311,
317,
309,
309,
309,
306,
297,
291,
300,
298,
302,
302,
307,
306,
300,
303,
305,
311,
304,
306,
306,
296,
298,
293,
298,
298,
305,
298,
301,
301,
301,
303,
303,
310,
303,
300,
294,
296,
300,
300,
294,
302,
302,
302,
310,
312,
317,
321,
310,
310,
311,
310,
310,
300,
298,
296,
297,
293,
304,
304,
309,
309,
309,
308,
310,
312,
312,
319,
319,
310,
310,
306,
306,
317,
317,
309,
309,
309,
309,
318,
318,
322,
322,
322,
322,
326,
325,
320,
320,
316,
311,
311,
311,
311,
311,
314,
315,
319,
315,
313,
319,
319,
319,
310,
310,
303,
303,
304,
308,
314,
310,
310,
310,
314,
314,
321,
321,
313,
313,
313,
317,
317,
317,
322,
322,
316,
316,
324,
324,
324,
324,
324,
322,
321,
321,
326,
326,
326,
326,
318,
318,
318,
320,
311,
311,
311,
311,
311,
310,
318,
318,
318,
318,
328,
328,
328,
324,
324,
322,
317,
314,
314,
304,
304,
304,
297,
301,
301,
305,
309,
312,
312,
316,
316,
316,
318,
309,
309,
309,
309,
309,
309,
313,
313,
313,
316,
325,
325,
325,
325,
325,
325,
328,
328,
328,
330,
325,
325,
325,
325,
325,
321,
321,
321,
321,
321,
325,
325,
325,
325,
325,
330,
330,
330,
330,
330,
330,
330,
330,
327,
321,
312,
302,
302,
302,
302,
301,
301,
301,
304,
307,
316,
326,
326,
326,
326,
326,
326,
323,
312,
309,
309,
304,
304,
297,
297,
298,
298,
292,
302,
308,
308,
313,
313,
320,
320,
320,
315,
317,
315,
308,
308,
308,
308,
308,
304,
300,
305,
312,
315,
322,
322,
320,
320,
320,
323,
328,
328,
318,
318,
318,
318,
320,
320,
318,
318,
318,
318,
327,
327,
319,
315,
315,
308,
310,
307,
298,
298,
291,
291,
299,
303,
303,
310,
310,
313,
314,
314,
312,
311,
311,
308,
308,
308,
308,
305,
310,
309,
316,
318,
318,
321,
315,
311,
311,
314,
318,
319,
319,
309,
309,
309,
311,
314,
307,
308,
308,
300,
300,
311,
311,
311,
306,
306,
314,
314,
314,
320,
320,
320,
320,
320,
319,
314,
314,
314,
314,
316,
316,
314,
310,
310,
318,
322,
316,
316,
316,
316,
314,
308,
313,
304,
305,
305,
312,
312,
312,
303,
297,
298,
291,
299,
290,
290,
281,
281,
271,
280,
283,
291,
297,
297,
306,
306,
316,
316,
325,
324,
328,
324,
313,
313,
304,
304,
302,
302,
302,
303,
303,
308,
319,
319,
328,
328,
330,
319,
311,
311,
311,
311,
311,
305,
305,
305,
302,
313,
320,
311,
311,
311,
311,
316,
316,
316,
320,
320,
321,
330,
330,
323,
323,
323,
323,
318,
318,
318,
307,
307,
307,
305,
305,
299,
299,
305,
305,
305,
315,
313,
313,
322,
313,
319,
319,
319,
319,
312,
307,
309,
305,
302,
307,
307,
307,
307,
307,
314,
319,
319,
323,
326,
330,
327,
323,
323,
321,
319,
313,
313,
313,
309,
309,
304,
308,
308,
308,
310,
316,
305,
305,
309,
309,
317,
315,
315,
317,
317,
317,
327,
327,
327,
327,
328,
330,
330,
330,
330,
330,
323,
321,
318,
318,
312,
312,
312,
308,
298,
298,
305,
307,
304,
304,
310,
310,
300,
304,
314,
305,
305,
302,
307,
307,
307,
307,
317,
317,
317,
323,
323,
327,
319,
311,
311,
311,
311,
306,
303,
306,
306,
306,
314,
322,
322,
322,
322,
327,
326,
317,
310,
307,
307,
307,
307,
307,
301,
290,
286,
290,
297,
290,
290,
290,
290,
290,
291,
293,
301,
306,
306,
308,
308,
308,
307,
304,
304,
312,
312,
312,
312,
309,
309,
309,
308,
305,
310,
310,
300,
300,
300,
311,
311,
303,
294,
300,
300,
300,
309,
304,
304,
304,
304,
310,
320,
310,
310,
310,
304,
300,
300,
300,
300,
300,
300,
310,
310,
310,
319,
322,
322,
322,
322,
319,
312,
312,
312,
303,
303,
298,
298,
288,
279,
285,
291,
291,
287,
296,
292,
303,
299,
309,
311,
305,
305,
305,
300,
300,
304,
304,
308,
308,
306,
313,
313,
307,
315,
315,
315,
315,
315,
310,
318,
318,
318,
324,
325,
318,
318,
316,
316,
321,
321,
321,
321,
321,
321,
328,
328,
330,
330,
325,
316,
316,
316,
316,
316,
316,
316,
316,
316,
321,
328,
328,
328,
328,
324,
322,
313,
308,
308,
308,
309,
302,
298,
298,
302,
304,
313,
318,
314,
314,
313,
320,
320,
316,
316,
315,
315,
315,
309,
309,
310,
303,
307,
306,
306,
307,
299,
299,
309,
300,
294,
296,
294,
299,
299,
299,
307,
298,
289,
298,
305,
309,
312,
307,
307,
305,
296,
305,
307,
307,
307,
307,
307,
312,
312,
303,
308,
308,
315,
315,
307,
301,
301,
298,
298,
309,
313,
309,
309,
309,
317,
323,
323,
326,
326,
319
    );
begin
    
    
    get_data:process (clk) is
	begin
		if rising_edge(clk) then
			data_out <= ROM(addr);	--get the address read it as unsigned and convert to integer to get the value from ROM(integer)
		end if;
	end process;

end Behavioral;
