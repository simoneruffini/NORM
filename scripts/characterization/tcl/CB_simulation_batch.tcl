set_param general.MaxThreads 12
open_project ../../vivado/NVA_EMULATOR.xpr
# Update top_level tesbench
set_property top characterization_testbench [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
update_compile_order -fileset sim_1
set_property -name {xsim.simulate.runtime} -value {0us} -objects [get_filesets sim_1]
set fp [open ./results/CB_results.txt w]
launch_simulation
# Fixed time simulation start
puts $fp "Fixed time simulation start ######################################"
puts $fp "period_bakup_clks;vol_cntr1_val;vol_cntr_pa_val;framework_pa_val;data_save_pa_val;time;shtdwn_counter;clk_counter;trace_rom_addr;"
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 2
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 4
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 6
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 8
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 10
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 12
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 14
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 16
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 18
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 20
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 22
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 24
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 26
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 28
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 30
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 32
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 34
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 36
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 38
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 40
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 42
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 44
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 46
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 48
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 50
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 52
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 54
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 56
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 58
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 60
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 62
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 64
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 66
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 68
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 70
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 72
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 74
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 76
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 78
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 80
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 82
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 84
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 86
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 88
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 90
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 92
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 94
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 96
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 98
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 100
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 102
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 104
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 106
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 108
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 110
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 112
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 114
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 116
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 118
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 120
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 122
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 124
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 126
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 128
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 130
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 132
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 134
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 136
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 138
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 140
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 142
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 144
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 146
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 148
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 150
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 152
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 154
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 156
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 158
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 160
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 162
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 164
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 166
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 168
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 170
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 172
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 174
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 176
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 178
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 180
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 182
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 184
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 186
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 188
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 190
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 192
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 194
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 196
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 198
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 200
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 202
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 204
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 206
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 208
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 210
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 212
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 214
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 216
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 218
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 220
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 222
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 224
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 226
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 228
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 230
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 232
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 234
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 236
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 238
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 240
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 242
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 244
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 246
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 248
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 250
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 252
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 254
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 256
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 258
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 260
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 262
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 264
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 266
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 268
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 270
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 272
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 274
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 276
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 278
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 280
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 282
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 284
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 286
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 288
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 290
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 292
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 294
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 296
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 298
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 300
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 302
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 304
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 306
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 308
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 310
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 312
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 314
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 316
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 318
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 320
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 322
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 324
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 326
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 328
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 330
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 332
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 334
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 336
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 338
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 340
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 342
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 344
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 346
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 348
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 350
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 352
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 354
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 356
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 358
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 360
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 362
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 364
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 366
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 368
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 370
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 372
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 374
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 376
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 378
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 380
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 382
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 384
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 386
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 388
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 390
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 392
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 394
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 396
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 398
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
restart
# Fixed time simulation end
puts $fp "Fixed time simulation end ########################################
"
add_condition -name cond1 -radix unsigned "/characterization_testbench/val1 == 250" {
global fp
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
stop}
# Fixed value simulation start
puts $fp "Fixed value simulation start #####################################"
puts $fp "period_bakup_clks;time;shtdwn_counter;clk_counter;trace_rom_addr;vol_cntr_pa_val;framework_pa_val;data_save_pa_val;fixed_vol_cntr1_val;"
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 2
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 4
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 6
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 8
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 10
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 12
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 14
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 16
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 18
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 20
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 22
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 24
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 26
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 28
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 30
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 32
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 34
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 36
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 38
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 40
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 42
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 44
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 46
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 48
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 50
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 52
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 54
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 56
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 58
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 60
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 62
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 64
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 66
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 68
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 70
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 72
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 74
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 76
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 78
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 80
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 82
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 84
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 86
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 88
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 90
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 92
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 94
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 96
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 98
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 100
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 102
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 104
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 106
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 108
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 110
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 112
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 114
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 116
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 118
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 120
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 122
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 124
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 126
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 128
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 130
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 132
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 134
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 136
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 138
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 140
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 142
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 144
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 146
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 148
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 150
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 152
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 154
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 156
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 158
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 160
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 162
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 164
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 166
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 168
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 170
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 172
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 174
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 176
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 178
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 180
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 182
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 184
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 186
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 188
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 190
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 192
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 194
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 196
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 198
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 200
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 202
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 204
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 206
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 208
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 210
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 212
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 214
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 216
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 218
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 220
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 222
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 224
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 226
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 228
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 230
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 232
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 234
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 236
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 238
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 240
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 242
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 244
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 246
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 248
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 250
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 252
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 254
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 256
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 258
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 260
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 262
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 264
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 266
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 268
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 270
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 272
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 274
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 276
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 278
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 280
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 282
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 284
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 286
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 288
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 290
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 292
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 294
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 296
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 298
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 300
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 302
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 304
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 306
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 308
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 310
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 312
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 314
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 316
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 318
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 320
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 322
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 324
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 326
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 328
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 330
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 332
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 334
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 336
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 338
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 340
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 342
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 344
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 346
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 348
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 350
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 352
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 354
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 356
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 358
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 360
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 362
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 364
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 366
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 368
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 370
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 372
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 374
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 376
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 378
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 380
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 382
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 384
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 386
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 388
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 390
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 392
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 394
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 396
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 398
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/val1]
if { [expr $value < 250] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];"
}
restart
# Fixed value simulation end
puts $fp "Fixed value simulation end #######################################"
