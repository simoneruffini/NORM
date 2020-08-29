----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/14/2020 05:43:53 PM
-- Design Name: 
-- Module Name: NVME_FRAMEWORK_PACKAGE - Behavioral
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

--use IEEE.MATH_REAL.ALL; --for log2 and ceil

--use work.COMMON_PACKAGE.all;

package NVME_FRAMEWORK_PACKAGE is
    -- di queste costanti qui quali sono quelle che riguardano il framework in se per se e invece quali sono
    -- quelle che riguardano il progetto? Cosa intendi per progetto e framework?
    -- allora quelle del framework sono costanti che vengono usate dall'end user per settare il framework, tipo:
    -- nv_reg_width e' settata dall'end user (dopo che ha istanziato l'IP) per dire che il n_reg ha tot celle
    -- mentre le costanti del progetto sono costanti interne usate per la costruzione del progetto. (quelle le trovi in common_pacage)
    -- per esempio: (viste?) si
    constant NUM_PWR_STATES                     : integer := 3; -- indica il numero di stati, puoi spiegarmi meglio questa poi?
    -- Praticamente avevamo supposto che ci potevano essere vari stati di comsumo (massima potenza, potenza ridotta e basso consumo per esempio), e ogni stato ha il suo contatore
    --aaa quindi oltre ad avere un contatore per entita' richiesta abbiamo anche tanti contatori (per entita') quanti stati?
    -- cosa intendi per entit?? richiesta? tipo l'end user decide di avere due entita' (del vol_arc) che saranno tenute sotto controllo dal power_approx, quindi sono le "entita' richieste"
    -- Credo che sia l'utente in quel caso a dover collegare i vari stadi alle corrispettive entit?? 
    -- si ma nel senso: facciamo finta che la nosta vol_arc sia una ALU, FPU e uno shift register, allora se voglio tenere sotto controllo i loro consumi dovro avere 3 contatori o 3 power_apporox?
    -- Bastano 3 contatori, e l'enable di ogni contatore far?? riferimento ad una vol_arc specificaa, ok ma allora che variabile uso per definire il numero di contatori, nel senso abbiamo una costante per questo?
    -- Si il numero di contatori ?? uguale al numero degli stati (NUM_PWR_STATE) (ogni stato ha un suo consumo)
    -- no spe non ci capiamo: NUM_PWR_STATES penso di aver capito cosa sia: se ho la mia FPU e so che questa ha 2 modalita' di consumo (idle e on) allora NUM_PWR_STATES sara' uguale a due giusto? SI 
    -- allora la domanda e' questa: se la mia vol_arch contiene 3 entita' per le quali voglio quantificare i consumi, (ognuna delle quali ha quantita' differenti di pwer_states), come faccio ad associargli un contatore 
    -- per ogni entita' tale che mi tracci i suoi consumi:
    -- FPU (2 states)
    -- ALU (5 states)
    -- shift reg (1 state)
    -- ho bisgono di 3 contatatori i quli contatno i relativi power states giusto?
    -- No praticamente NUM_PWR_STATES sar?? uguale a 2+5+1 = 8 e per esempio colleghi i contatori 0,1 all FPU, 2,3,4,5,6 alla ALU e l'ultimo allo SR
    -- ok ora ho capito (pero' questa e' un po una costante composita e che dipende dall'end user e dalla vol_arc penso) sisi
    -- e non ?? giusto che sia qua? non lo so, sto pensando, perche' mi metto nei panni dell'utente:
    -- per esempio noi: abbiamo definito 3 vol_cntr nella nosta vol_arc e quindi vogliamo per esempio tenere sotto controllo solo il consumo di due
    -- per settare questo, lo facciamo settando una variabile in NVME_FRAMEWORK_PACKAGE o in TEST_ARCHITECTURE_PACKAGE?
    -- Boh dato che non ?? qualcosa di competenza della TEST_ARCHITECURE (in quanto non ?? qualcosa che si deve testate) secondo me va dentro NVME_FRAMEWORK_PACKAGE
    -- ma la test architecture e' la architetettura sviluppata dall'utente utilizzando il nostro framework non un testbench
    -- cioe' io vedo questa variabile a meta' perche' va ad incidere su come e' costruito un compoenente del framework, ma e' direttamente
    -- influenzato da quali componenti ci sono nella tes_architecture che necessitano di pwr_approximation. Quindi, e' possiblie renderla dinamica?
    -- ossia metterla in common_package e il suo valore e' calcolato da una variabile che si setta in test_architecture_package? (o e' troppo casino?)
    -- Non credo sia difficile per noi, per?? forse per chi deve leggerlo un po di pi??, comunque si pu?? fare
    -- allora per ora la lasciamo qua, pero' mi e' venuto in mente che la nosta tes_architecture non usa il pwr_approx
    -- ora ho fatto il merge della roba e bisogna fare uscire dei segnali dal vol_arch che dicano alla pwr_approx quando contare giusto? Se si vuole usare i contatori si
    -- si dobbiamo usarla perche' dobbiamo mostrare che tutto funzioni, dc me ne sono diemnticatoo (basta anche usare i vari stati della fsm per far vedere che funziona 
    -- es do_operation consuma poco, backup consuma tanto ecc), appunto anche su questa nota, Kasim vuole approssimare il pwr dell framework, ma quello non era da piano
    -- cioe' se non mi sbaglio la pwr_approx doveva solo aprossimare i consumi delle compoenenti definite nella test_architecture giusto? Non ricordo che avesse specificato niente a riguardo
    -- Se vuoi me ne occupo io, collego ad ogni stato un contatore e poi alla fine tiro fuori i risultati, ma cosa calcoleresti? Quanti cicli di clock do_operation ?? stato attivo,
    -- quanti cicli di clock sono stati utilizzati per i backup ecc (perch?? tipo il backup dato che devi attivare l'NV reg consuma di piu)
    -- ok va bene, quindi e' roba che si puo' prendere e fare direttamente nel top level giusto? Si
    -- ok allora vieni nella TODO_LIST
    constant PWR_CONSUMPTION_ROM_BITS           : integer := 10; -- indica quanti bit servono per rappresentare nella ROM (allora questo va in common package perche la ROM non e' parte integrante del framework se non sbaglio)
    -- si si fa parte del framework in quanto ?? dentro all'instant_power_caluclator aaa perche e' pwr consumptions, ottimo! 
    constant PWR_APPROX_COUNTER_NUM_BITS        : integer := 31; -- questa indica quanti bit ha il contatore del power approximator, in modo che arrivi a 2^n bit
    -- cosa fa il contatore, cioe' quello che conta quanti cicli e' stata accesa una componente? si
    -- cazzata, giusto qua ok
    constant INTERMITTENCY_NUM_THRESHOLDS       : integer := 2; -- indica il numero di soglie (warning + shutdown) ma quindi questo viene usato solo dal fsm_nv_reg giusto?
    -- no anche dal intermittency_emulator, ma quindi questo dice quanti sono le soglie da attraversare per mandare il segnale di shutdown?
    -- Indica il numero totale di soglie, noi ne abbiamo usate 2 una di warning e una di shutdown ma potrebbero essercene altre che dindicano altre cose
    -- ma se te autmenti questo numero poi dove le definisci i valori per le nuove soglie? Nel top_level quando istanzi l'intermittency emulator (c'?? una porta che ?? un array di interi tipo)
    -- ottimo, quindi questa variabile e' legata anche a cosa si mette nel top_level, nel senso, se io qua metto 5 ma nel top level inserisco due valori i restanti tre sono casuali? SI 
    constant NV_REG_WIDTH                       : INTEGER := 16;
   

end package NVME_FRAMEWORK_PACKAGE;
