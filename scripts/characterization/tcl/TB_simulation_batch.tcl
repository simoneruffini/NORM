set_param general.MaxThreads 12
open_project ../../vivado/NVA_EMULATOR.xpr
# Update top_level tesbench
set_property top characterization_testbench [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
update_compile_order -fileset sim_1
set_property -name {xsim.simulate.runtime} -value {0us} -objects [get_filesets sim_1]
set fp [open ./results/TB_results.txt w]
launch_simulation
# Fixed time simulation start
puts $fp "Fixed time simulation start ######################################"
puts $fp "task_value_tb;vol_cntr1_val;vol_cntr_pa_val;framework_pa_val;data_save_pa_val;time;shtdwn_counter;clk_counter;trace_rom_addr;"
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 1
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 2
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 3
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 4
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 5
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 6
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 7
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 8
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 9
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 10
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 11
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 12
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 13
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 14
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 15
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 16
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 17
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 18
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 19
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 20
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 21
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 22
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 23
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 24
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 25
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 26
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 27
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 28
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 29
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 30
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 31
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 32
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 33
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 34
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 35
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 36
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 37
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 38
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 39
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 40
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 41
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 42
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 43
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 44
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 45
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 46
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 47
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 48
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 49
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 50
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 51
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 52
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 53
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 54
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 55
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
# Fixed time simulation end
puts $fp "Fixed time simulation end ########################################
"
add_condition -name cond1 -radix unsigned "/characterization_testbench/VOL_ARC_1/vol_cntr1_value == 1000" {
global fp
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
stop}
# Fixed value simulation start
puts $fp "Fixed value simulation start #####################################"
puts $fp "task_value_tb;vol_cntr1_val;vol_cntr_pa_val;framework_pa_val;data_save_pa_val;time;shtdwn_counter;clk_counter;trace_rom_addr;"
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 1
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 2
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 3
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 4
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 5
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 6
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 7
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 8
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 9
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 10
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 11
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 12
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 13
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 14
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 15
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 16
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 17
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 18
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 19
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 20
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 21
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 22
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 23
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 24
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 25
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 26
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 27
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 28
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 29
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 30
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 31
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 32
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 33
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 34
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 35
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 36
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 37
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 38
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 39
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 40
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 41
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 42
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 43
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 44
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 45
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 46
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 47
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 48
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 49
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 50
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 51
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 52
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 53
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 54
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter 55
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
# Fixed value simulation end
puts $fp "Fixed value simulation end #######################################"
