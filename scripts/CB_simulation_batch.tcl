open_project ../vivado/NVA_EMULATOR.xpr
# Update tesbanech to run
set_property top characterization_testbench [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
set_param general.MaxThreads 12
set_property -name {xsim.simulate.runtime} -value {0us} -objects [get_filesets sim_1]
set fp [open ./CB_results.txt w]
launch_simulation
# Fixed time simulation start
puts $fp "Fixed time simulation start ######################################"
puts $fp "fixed_time_sim variable data ------------------------------------<"
puts $fp "period_backup_clks;val1;"
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 5
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 10
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 30
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 50
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 70
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 90
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 110
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 130
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 150
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 170
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 190
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 210
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 230
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 250
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 270
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 290
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 310
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 330
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 350
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 370
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 390
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 410
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 430
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 450
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 470
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 490
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 510
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 530
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 550
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 570
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 590
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 610
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 630
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 650
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 670
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 690
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 710
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 730
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 750
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 770
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 790
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 810
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 830
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 850
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 870
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 890
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 910
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 930
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 950
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 970
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 990
run 1000 us
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/val1 ];"
restart
puts $fp "fixed_time_sim constant data ------------------------------------<"
run 1000 us
puts $fp "fixed_time:	1000 us"
puts $fp "shtdwn_counter:	[get_value -radix unsigned /characterization_testbench/shtdwn_counter ]"
puts $fp "clk_counter:	[get_value -radix unsigned /characterization_testbench/clk_counter ]"
restart
# Fixed time simulation end
puts $fp "Fixed time simulation end ########################################
"
add_condition -name cond1 -radix unsigned "/characterization_testbench/val1 == 2000" {
global fp
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks ];"
puts -nonewline $fp "[current_time];"
puts -nonewline $fp "[get_value -radix unsigned /characterization_testbench/shtdwn_counter ];"
puts $fp "[get_value -radix unsigned /characterization_testbench/clk_counter ];"
stop }
# Fixed value simulation start
puts $fp "Fixed value simulation start #####################################"
puts $fp "fixed_val_sim variable data -------------------------------------<"
puts $fp "period_backup_clks;time_us;shtdwn_counter;clk_counter;"
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 5
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 10
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 30
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 50
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 70
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 90
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 110
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 130
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 150
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 170
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 190
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 210
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 230
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 250
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 270
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 290
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 310
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 330
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 350
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 370
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 390
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 410
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 430
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 450
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 470
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 490
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 510
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 530
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 550
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 570
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 590
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 610
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 630
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 650
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 670
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 690
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 710
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 730
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 750
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 770
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 790
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 810
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 830
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 850
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 870
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 890
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 910
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 930
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 950
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 970
run 1 s
restart
set_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/period_backup_clks 990
run 1 s
restart
puts $fp "fixed_val_sim constant data -------------------------------------<"
puts $fp "val1:	2000"
# Fixed value simulation end
puts $fp "Fixed value simulation end #######################################"
