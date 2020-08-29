# Premessa: non è la maniera ottimale per farlo in quanto è poco scalabile, ma questo lo sitemerò presto

# Qua apro il progetto
open_project /home/luca/Documents/git/NonVolatileProcEmul-FPGA/vivado/NVA_EMULATOR.xpr 

# qua dico che quando si apre la simulazione deve andare di 0us
set_property -name {xsim.simulate.runtime} -value {0us} -objects [get_filesets sim_1]

#apro la simulazione
launch_simulation

# setto il mio segnale "task_complete_val_counter" a 5 (ovvero quando il counter arriva a 5 (e multipli) vuol dire che posso fare il backup)
set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 5
# faccio andare avanti la simualzione di 100us
run 100 us
# guardo quanto vale val1
report_values -radix dec /top_level_testbench/val1
# rifaccio partire la simulazione e cosi avanti fino a task_complete_val_counter = 200
restart

# DOmande? FANTASTICO!!!!! perfetto, sai se si possono anche modificare i generic di una istanza? Vieni in generate_TB_results.py
# non ci ho ancora provato. So che prima task_complete_val_counter era una costante e non me la lasciava cambiare, ora l'ho messa come segnale e ho risolto
# ma probabilemente dopo andrà ricambiata come costante e scritto che se si vuole fare il test si deve momentaneamente cambiare in signal
# ok, quindi: qua stai facendo i test per il constant giusto? No qua per il TB (task) e la fsm_nv_reg_tb per definire quando un task e' finito usa un contatore? 
# No ha in ingresso il valore del contatore e fa questa operazione qua (il modulo) ma quindi task_complete_val_counter sta per tas_complete value counter giusto? SI
# ora e' chiaro, confondevo con non so cosa, scusa :) hahah,  ahah easily il mio problema ora e' con constant backup che e' modificabile solo con la generic
# infatti volevo capire come fare, 
# domani ci provo, oggi non ho neanche guardato se si potesse fare, sisi trallo, hai fatto anche troppo oggi!!!!!! comunque vieni dinuovo un attimo su generate_TB_results.py

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 10
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 20
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 30
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 40
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 50
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 60
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 70
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 80
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 90
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 100
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 110
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 120
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 130
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 140
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 150
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 160
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 170
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 180
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 190
run 100 us
report_values -radix dec /top_level_testbench/val1
restart

set_value -radix dec /top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter 200
run 100 us
report_values -radix dec /top_level_testbench/val1
restart