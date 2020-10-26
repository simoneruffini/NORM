set_param general.MaxThreads 12
open_project ../../vivado/NVA_EMULATOR.xpr
# Update top_level tesbench
set_property top characterization_testbench [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
update_compile_order -fileset sim_1
set_property -name {xsim.simulate.runtime} -value {0us} -objects [get_filesets sim_1]
set fp [open ./results/DB_results.txt w]
launch_simulation
# Fixed time simulation start
puts $fp "Fixed time simulation start ######################################"
puts $fp "warning_threshold_val;vol_cntr1_val;vol_cntr_pa_val;framework_pa_val;data_save_pa_val;time;shtdwn_counter;clk_counter;trace_rom_addr;"
set_value -radix unsigned /characterization_testbench/warning_threshold 3000
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3010
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3020
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3030
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3040
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3050
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3060
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3070
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3080
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3090
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3100
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3110
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3120
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3130
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3140
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3150
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3160
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3170
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3180
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3190
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3200
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3210
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3220
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3230
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3240
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3250
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3260
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3270
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3280
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3290
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3300
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3310
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3320
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3330
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3340
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3350
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3360
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3370
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3380
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3390
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3400
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3410
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3420
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3430
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3440
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3450
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3460
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3470
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3480
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3490
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3500
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3510
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3520
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3530
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3540
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3550
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3560
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3570
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3580
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3590
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3600
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3610
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3620
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3630
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3640
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3650
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3660
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3670
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3680
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3690
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3700
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3710
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3720
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3730
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3740
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3750
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3760
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3770
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3780
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3790
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3800
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3810
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3820
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3830
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3840
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3850
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3860
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3870
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3880
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3890
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3900
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3910
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3920
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3930
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3940
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3950
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3960
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3970
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3980
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3990
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4000
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4010
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4020
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4030
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4040
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4050
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4060
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4070
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4080
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4090
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4100
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4110
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4120
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4130
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4140
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4150
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4160
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4170
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4180
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4190
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4200
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4210
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4220
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4230
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4240
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4250
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4260
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4270
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4280
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4290
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4300
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4310
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4320
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4330
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4340
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4350
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4360
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4370
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4380
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4390
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4400
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4410
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4420
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4430
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4440
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4450
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4460
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4470
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4480
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4490
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4500
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4510
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4520
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4530
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4540
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4550
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4560
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4570
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4580
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4590
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4600
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4610
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4620
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4630
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4640
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4650
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4660
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4670
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4680
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4690
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4700
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4710
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4720
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4730
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4740
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4750
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4760
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4770
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4780
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4790
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4800
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4810
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4820
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4830
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4840
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4850
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4860
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4870
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4880
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4890
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4900
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4910
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4920
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4930
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4940
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4950
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4960
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4970
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4980
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4990
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 5000
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 5010
run 100 us
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
restart
# Fixed time simulation end
puts $fp "Fixed time simulation end ########################################
"
add_condition -name cond1 -radix unsigned "/characterization_testbench/VOL_ARC_1/vol_cntr1_value == 1000" {
global fp
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
stop}
# Fixed value simulation start
puts $fp "Fixed value simulation start #####################################"
puts $fp "warning_threshold_val;vol_cntr1_val;vol_cntr_pa_val;framework_pa_val;data_save_pa_val;time;shtdwn_counter;clk_counter;trace_rom_addr;"
set_value -radix unsigned /characterization_testbench/warning_threshold 3000
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3010
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3020
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3030
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3040
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3050
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3060
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3070
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3080
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3090
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3100
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3110
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3120
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3130
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3140
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3150
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3160
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3170
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3180
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3190
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3200
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3210
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3220
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3230
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3240
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3250
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3260
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3270
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3280
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3290
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3300
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3310
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3320
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3330
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3340
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3350
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3360
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3370
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3380
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3390
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3400
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3410
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3420
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3430
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3440
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3450
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3460
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3470
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3480
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3490
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3500
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3510
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3520
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3530
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3540
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3550
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3560
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3570
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3580
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3590
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3600
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3610
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3620
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3630
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3640
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3650
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3660
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3670
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3680
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3690
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3700
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3710
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3720
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3730
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3740
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3750
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3760
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3770
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3780
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3790
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3800
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3810
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3820
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3830
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3840
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3850
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3860
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3870
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3880
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3890
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3900
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3910
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3920
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3930
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3940
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3950
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3960
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3970
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3980
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3990
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4000
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4010
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4020
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4030
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4040
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4050
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4060
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4070
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4080
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4090
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4100
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4110
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4120
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4130
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4140
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4150
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4160
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4170
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4180
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4190
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4200
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4210
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4220
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4230
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4240
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4250
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4260
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4270
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4280
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4290
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4300
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4310
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4320
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4330
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4340
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4350
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4360
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4370
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4380
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4390
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4400
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4410
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4420
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4430
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4440
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4450
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4460
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4470
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4480
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4490
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4500
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4510
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4520
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4530
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4540
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4550
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4560
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4570
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4580
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4590
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4600
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4610
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4620
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4630
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4640
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4650
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4660
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4670
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4680
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4690
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4700
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4710
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4720
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4730
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4740
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4750
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4760
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4770
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4780
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4790
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4800
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4810
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4820
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4830
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4840
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4850
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4860
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4870
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4880
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4890
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4900
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4910
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4920
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4930
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4940
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4950
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4960
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4970
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4980
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4990
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 5000
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 5010
run 5 ms
set value [get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]
if { [expr $value < 1000] } {
puts $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold];[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value];[get_value -radix unsigned /characterization_testbench/power_counter_val(0)];[get_value -radix unsigned /characterization_testbench/power_counter_val(1)];[get_value -radix unsigned /characterization_testbench/power_counter_val(2)];[current_time];[get_value -radix unsigned /characterization_testbench/shtdwn_counter];[get_value -radix unsigned /characterization_testbench/clk_counter];[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr];"
}
restart
# Fixed value simulation end
puts $fp "Fixed value simulation end #######################################"
