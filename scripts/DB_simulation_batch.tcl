open_project ../vivado/NVA_EMULATOR.xpr
# Update tesbanech to run
set_property top characterization_testbench [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
set_param general.MaxThreads 12
set_property -name {xsim.simulate.runtime} -value {0us} -objects [get_filesets sim_1]
set fp [open ./DB_results.txt w]
launch_simulation
puts $fp "Fixed time simulation start ######################################"
puts $fp "fixed_time_sim variable data ------------------------------------<"
puts $fp "threshold_value[1];val1;"
set_value -radix unsigned /characterization_testbench/threshold_value[1] 301
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 302
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 303
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 304
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 305
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 306
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 307
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 308
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 309
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 310
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 311
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 312
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 313
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 314
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 315
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 316
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 317
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 318
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 319
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 320
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 321
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 322
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 323
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 324
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 325
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 326
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 327
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 328
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 329
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
puts $fp "fixed_time_sim constant data ------------------------------------<"
run 100 us
puts $fp "fixed_time:	100 us"
puts $fp "shtdwn_counter:	[get_value -radix unsigned /characterization_testbench/shtdwn_counter ]"
puts $fp "clk_counter:	[get_value -radix unsigned /characterization_testbench/clk_counter ]"
restart
puts $fp "Fixed time simulation end ########################################

"
add_condition -name cond1 -radix unsigned "/characterization_testbench/val1 == 200" {
global fp
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts -nonewline $fp "[current_time];"
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/shtdwn_counter ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/clk_counter ];"
stop }
# Fixed value simulation start
puts $fp "Fixed value simulation start #####################################"
puts $fp "fixed_val_sim variable data -------------------------------------<"
puts $fp "period_backup_clks;time_us;shtdwn_counter;clk_counter;"
set_value -radix unsigned /characterization_testbench/threshold_value[1] 301
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 302
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 303
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 304
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 305
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 306
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 307
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 308
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 309
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 310
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 311
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 312
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 313
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 314
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 315
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 316
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 317
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 318
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 319
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 320
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 321
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 322
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 323
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 324
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 325
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 326
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 327
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 328
run 1 s
restart
set_value -radix unsigned /characterization_testbench/threshold_value[1] 329
run 1 s
restart
puts $fp "fixed_val_sim constant data -------------------------------------<"
puts $fp "val1:	200"
# Fixed value simulation end
puts $fp "Fixed value simulation end #######################################"
