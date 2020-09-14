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
set_value -radix unsigned /characterization_testbench/warning_threshold 3000
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3020
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3040
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3060
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3080
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3100
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3120
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3140
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3160
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3180
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3200
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3220
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3240
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3260
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3280
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3300
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3320
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3340
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3360
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3380
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3400
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3420
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3440
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3460
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3480
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3500
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3520
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3540
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3560
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3580
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3600
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3620
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3640
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3660
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3680
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3700
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3720
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3740
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3760
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3780
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3800
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3820
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3840
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3860
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3880
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3900
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3920
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3940
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3960
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3980
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4000
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4020
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4040
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4060
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4080
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4100
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4120
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4140
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4160
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4180
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4200
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4220
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4240
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4260
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4280
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4300
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4320
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4340
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4360
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4380
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4400
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4420
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4440
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4460
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4480
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4500
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4520
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4540
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4560
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4580
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4600
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4620
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4640
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4660
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4680
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4700
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4720
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4740
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4760
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4780
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4800
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4820
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4840
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4860
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4880
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4900
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4920
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4940
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4960
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4980
run 100 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
get_value -radix unsigned /characterization_testbench/warning_threshold
get_value -radix unsigned /characterization_testbench/val1
restart
puts $fp "fixed_time_sim constant data ------------------------------------<"
run 100 us
puts $fp "fixed_time:	100 us"
puts $fp "shtdwn_counter:	[get_value -radix unsigned /characterization_testbench/shtdwn_counter ]"
puts $fp "clk_counter:	[get_value -radix unsigned /characterization_testbench/clk_counter ]"
restart
puts $fp "Fixed time simulation end ########################################

"
add_condition -name cond1 -radix unsigned "/characterization_testbench/val1 == 2000" {
global fp
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/warning_threshold ];"
puts -nonewline $fp "[current_time];"
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/shtdwn_counter ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/clk_counter ];"
stop }
# Fixed value simulation start
puts $fp "Fixed value simulation start #####################################"
puts $fp "fixed_val_sim variable data -------------------------------------<"
puts $fp "period_backup_clks;time_us;shtdwn_counter;clk_counter;"
set_value -radix unsigned /characterization_testbench/warning_threshold 3000
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3020
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3040
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3060
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3080
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3100
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3120
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3140
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3160
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3180
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3200
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3220
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3240
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3260
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3280
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3300
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3320
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3340
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3360
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3380
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3400
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3420
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3440
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3460
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3480
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3500
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3520
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3540
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3560
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3580
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3600
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3620
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3640
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3660
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3680
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3700
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3720
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3740
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3760
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3780
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3800
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3820
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3840
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3860
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3880
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3900
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3920
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3940
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3960
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 3980
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4000
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4020
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4040
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4060
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4080
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4100
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4120
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4140
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4160
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4180
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4200
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4220
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4240
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4260
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4280
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4300
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4320
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4340
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4360
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4380
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4400
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4420
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4440
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4460
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4480
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4500
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4520
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4540
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4560
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4580
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4600
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4620
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4640
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4660
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4680
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4700
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4720
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4740
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4760
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4780
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4800
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4820
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4840
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4860
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4880
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4900
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4920
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4940
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4960
run 1 s
restart
set_value -radix unsigned /characterization_testbench/warning_threshold 4980
run 1 s
restart
puts $fp "fixed_val_sim constant data -------------------------------------<"
puts $fp "val1:	2000"
# Fixed value simulation end
puts $fp "Fixed value simulation end #######################################"
