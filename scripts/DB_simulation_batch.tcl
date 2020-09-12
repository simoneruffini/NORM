open_project ../vivado/NVA_EMULATOR.xpr
# Update tesbanech to run
set_property top characterization_testbench [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
set_param general.MaxThreads 12
set_property -name {xsim.simulate.runtime} -value {0us} -objects [get_filesets sim_1]
set fp [open ./DB_results.txt w]
launch_simulation
set_value -radix unsigned /characterization_testbench/threshold_value[1] 301
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
set_value -radix unsigned /characterization_testbench/threshold_value[1] 302
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/threshold_value[1] ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/threshold_value[1]
get_value -radix unsigned /characterization_testbench/val1
relaunch_sim
