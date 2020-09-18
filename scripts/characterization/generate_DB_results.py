from matplotlib import pyplot as plt
from enum import Enum, auto
import os
import sys
import platform
import re


##---------------------------------------------------------------------- Functions
def cleanup ():
    operative_system = sys.platform
    if operative_system == "linux" :
        try:
            os.remove("./vivado.log")
            os.remove("./vivado.jou")
        except FileNotFoundError:
            print("\t-> files to be deleted are not found, proceeding.... \n")
    else:
        try:
            os.remove(".\\vivado.log")
            os.remove(".\\vivado.jou")
        except FileNotFoundError:
            print("\t-> files to be deleted are not found, proceeding.... \n")
##--------------------------------------------------------------------------------

##----------------------------------------------------------------------- Defaults
if sys.platform == "linux":
    vivado_path =  "/opt/Xilinx/Vivado/2020.1/bin/vivado"
elif sys.platform == "win32":
    vivado_path = "C:\\Xilinx\\Vivado\\2020.1\\bin\\vivado.bat"
else:
    sys.exit("I don't know how to open vivado on your system")

    ## Default parameters
project_path = "../../vivado/NVA_EMULATOR.xpr" 
db_results_path = "./results/"
characterization_testbench_path = "../../test/characterization_testbench.vhd"

time_constant_us = 100

value_constant = 1000

start_value_threshold = 3000
end_value_threshold = 5020
threshold_step = 10
##--------------------------------------------------------------------------------


##---------------------------------------------------------------Testbench changes
    ## Change testbench of top level to use the correct architecture for this 
    ## specific test. We need architecture Behavioral_db
ctf = open(characterization_testbench_path, "r+")
testbench_lines = ctf.readlines()

search_marker_start = "----##DB!!"
search_marker_end = "----!!DB##"
start = 0
for i,line in enumerate(testbench_lines):
    if search_marker_start in line:
        start = 1
    else:
        if start == 1: 
            if search_marker_end not in line:
                if "--" in line:
                    testbench_lines.pop(i) 
                    testbench_lines.insert(i,line[2:])
            else:
                start = 0

    ## Reach start of file
ctf.seek(0)

    ## Delete contents
ctf.truncate()

    ## Write the cange to the file by rewriting it entirely
ctf.writelines(testbench_lines) 
ctf.close()
##--------------------------------------------------------------------------------


allThreshold = []
for val in range(start_value_threshold,end_value_threshold,threshold_step):
    allThreshold.append(val)

##--------------------------------------------------- Creation of tcl batch script
    ##  Defaults
    ## to get description of this signals use the describe command see
    ## UG835 (v2020.1) June 3, 2020 www.xilinx.com Tcl Command Reference Guide page 479
tcl_script_path = "./tcl/DB_simulation_batch.tcl"

threshold_signal_path = "/characterization_testbench/hazard_threshold"

vol_cntr1_val_sig_path = "/characterization_testbench/VOL_ARC_1/vol_cntr1_value"

db_fix_time_cmds= {
    "hazard_threshold_val"          :"[get_value -radix unsigned /characterization_testbench/hazard_threshold]",
    "vol_cntr1_val"                 :"[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]",
    "vol_cntr_pa_val"               :"[get_value -radix unsigned /characterization_testbench/power_counter_val(0)]",
    "framework_pa_val"              :"[get_value -radix unsigned /characterization_testbench/power_counter_val(1)]",
    "data_save_pa_val"              :"[get_value -radix unsigned /characterization_testbench/power_counter_val(2)]",
    "time"                          :"[current_time]",
    "shtdwn_counter"                :"[get_value -radix unsigned /characterization_testbench/shtdwn_counter]",
    "clk_counter"                   :"[get_value -radix unsigned /characterization_testbench/clk_counter]",
    "trace_rom_addr"                :"[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr]"
}

db_fix_val_cmds= {
    "hazard_threshold_val"          :"[get_value -radix unsigned /characterization_testbench/hazard_threshold]",
    "vol_cntr1_val"                 :"[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]",
    "vol_cntr_pa_val"               :"[get_value -radix unsigned /characterization_testbench/power_counter_val(0)]",
    "framework_pa_val"              :"[get_value -radix unsigned /characterization_testbench/power_counter_val(1)]",
    "data_save_pa_val"              :"[get_value -radix unsigned /characterization_testbench/power_counter_val(2)]",
    "time"                          :"[current_time]",
    "shtdwn_counter"                :"[get_value -radix unsigned /characterization_testbench/shtdwn_counter]",
    "clk_counter"                   :"[get_value -radix unsigned /characterization_testbench/clk_counter]",
    "trace_rom_addr"                :"[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr]"
}

    ## Create script tcl script file (later removed)
tcl_script_file = open(tcl_script_path, 'w')

    ## get Stdout file descriptor
std_out = sys.stdout

    ## Redirect prints (stdout) to tcl_script_file
sys.stdout=tcl_script_file

    ## Increase usable threads in vivado
threads = os.cpu_count() 
if threads != None:
    print("set_param general.MaxThreads " + str(threads))

    ## Open projectt
print("open_project " + project_path )

    ## Update top level testbench
print("# Update top_level tesbench")
print("set_property top characterization_testbench [get_filesets sim_1]")
print("set_property top_lib xil_defaultlib [get_filesets sim_1]")
print("update_compile_order -fileset sim_1")

    ## Set simulation starting poit at 0
print("set_property -name {xsim.simulate.runtime} -value {0us} -objects [get_filesets sim_1]")

    ## Creates reults file
print("set fp [open " + db_results_path + "DB_results.txt w]")

    ## Launch simulation
print("launch_simulation")

    ##--------------------------------------------helper functions
def printlnres(string):
    print("puts $fp \"" + string + "\"")
def printres(string):
    print("puts -nonewline $fp \"" + string + "\"")
    ##------------------------------------------------------------

### FIXED TIME###
print("# Fixed time simulation start")

printlnres("Fixed time simulation start ######################################")

    ## outputs the keys of db_fix_tim_data in this format: key1;key2;key3;...;
printlnres( "".join(
        list(str(a)+";" for a in list(db_fix_time_cmds.keys()))
    )
)

for threshold in allThreshold:
    print("set_value -radix unsigned " + threshold_signal_path + " " + str(threshold))
    print("run " + str(time_constant_us) + " us")
        ## print commands of the db_fixe_time_data as command1;command2;....commandN;
        ## this commands will be printed in the results file
    printlnres( "".join( 
            list(str(value)+";" for value in list(db_fix_time_cmds.values()))
        ) 
    )
    print("restart")

print("# Fixed time simulation end")
printlnres("Fixed time simulation end ########################################\n")

### FIXED VALUE ###

    ## This tcl command adds a condition that is checked every time the conditioned signal changes, if the condition is true the inner code is executed
    ## condition remain even after a restart, condtions can be reported by running report_conditions, and be all removed by running remove_condtion -all
print("add_condition -name cond1 -radix unsigned \"" + vol_cntr1_val_sig_path + " == " + str(value_constant) + "\" {" )
print("global fp")
    ## print commands of the db_fix_val_data as command1;command2;....commandN;
    ## this commands will be printed in the results file
printlnres( "".join( 
        list(str(value)+";" for value in list(db_fix_val_cmds.values()))
    ) 
)
print("stop}")

print("# Fixed value simulation start")
printlnres("Fixed value simulation start #####################################")

    ## outputs the keys of db_fix_val_data in this format: key1;key2;key3;...;
printlnres( "".join(
        list(str(a)+";" for a in list(db_fix_val_cmds.keys()))
    )
)

for threshold in allThreshold:
    print("set_value -radix unsigned " + threshold_signal_path + " " + str(threshold))
    print("run 5 ms")   ## this value must be setup manually, bigger value will result in long simulations if the condtion in add_condition is not reached
                        ## but smaller value will not the simulation to reach the condition
    print("set value [get_value -radix unsigned "+ vol_cntr1_val_sig_path +"]")

        ## This part is executed only if add_condition is not met (happens if vol_cntr is not able to reach value_constant)
    print("if { [expr $value < "+ str(value_constant)+"] } {")

        ## print commands of the db_fix_val_data as command1;command2;....commandN;
        ## this commands will be printed in the results file
    printlnres( "".join( 
            list(str(value)+";" for value in list(db_fix_val_cmds.values()))
        ) 
    )
    print("}")
    print("restart")

print("# Fixed value simulation end")
printlnres("Fixed value simulation end #######################################")

    ## Restore std out descriptor to its original value
sys.stdout=std_out

    ## Close generated script file
tcl_script_file.close()
##-------------------------------------------------------------Remove vivado files
cleanup()
##--------------------------------------------------------------------------------

##################################################################################
########################## RUN GENERATED BATCH FIlE###############################
    ## parameters to pass to vivado
run_line = vivado_path + " -mode batch -source " + tcl_script_path

##run_line = "export LC_ALL=C \n" + run_line    ## <- eventually remove this
print("Executing: " + str(run_line))
os.system(run_line)
##################################################################################
##################################################################################

##---------------------------------------------------------------Testbench changes
    ## Change testbench of top level to use the correct architecture for this 
    ## specific test. We need architecture Behavioral_db
ctf = open(characterization_testbench_path, "r+")
testbench_lines = ctf.readlines()

search_marker_start = "----##DB!!"
search_marker_end = "----!!DB##"
start = 0
for i,line in enumerate(testbench_lines):
    if search_marker_start in line:
        start = 1
    else:
        if start == 1: 
            if search_marker_end not in line:
                if "--" not in line:
                    testbench_lines.pop(i)
                    testbench_lines.insert(i,"--" + line)
            else:
                start = 0

    ## Reach beginning of file
ctf.seek(0)

    ## Delete contents
ctf.truncate()

    ## Write the cange to the file by rewriting it entirely
ctf.writelines(testbench_lines) 
ctf.close()
##--------------------------------------------------------------------------------

##-------------------------------------------------------------Remove vivado files
cleanup()