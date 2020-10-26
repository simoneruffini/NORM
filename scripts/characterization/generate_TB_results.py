from matplotlib import pyplot as plt
import os
import sys
import platform
import re

##---------------------------------------------------------------------- Functions
def cleanup ():
    if sys.platform == "linux" :
        try:
            os.remove("./vivado.log")
            os.remove("./vivado.jou")
            os.removedirs("./.Xil")
        except FileNotFoundError:
            print("\t-> files to be deleted are not found, proceeding.... \n")
    else:
        try:
            os.remove(".\\vivado.log")
            os.remove(".\\vivado.jou")
            os.removedirs(".\\.Xil")
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
tb_results_path = "./results/"
characterization_testbench_path = "../../test/characterization_testbench.vhd"

## this value must be set so that if we perform a backup every time val1==end_value_taskValue, 
# a significative number of backups are done, so if a bkp is done circa every 10 us we need a value greater 
# then 10
time_constant_us = 100 

## this value must be set so that if we perform a backup every time val1==end_value_taskValue, 
# a significative number of backups are done, so if end_value_taskValue == 100, value_constan must be
# at least a multiple >10 of that value
value_constant = 1000 

start_value_taskValue = 1
end_value_taskValue = 56 
taskValue_step = 1
##--------------------------------------------------------------------------------

##---------------------------------------------------------------Testbench changes
    ## Change testbench of top level to use the correct architecture for this 
    ## specific test. We need architecture Behavioral_tb
ctf = open(characterization_testbench_path, "r+")
testbench_lines = ctf.readlines()

search_marker_start = "----##TB!!"
search_marker_end = "----!!TB##"
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

allTaskValues = []
for val in range(start_value_taskValue,end_value_taskValue,taskValue_step):
    allTaskValues.append(val)

##--------------------------------------------------- Creation of tcl batch script
    ##  Defaults
    ## to get description of this signals use the describe command see
    ## UG835 (v2020.1) June 3, 2020 www.xilinx.com Tcl Command Reference Guide page 479
tcl_script_path = "./tcl/TB_simulation_batch.tcl"

task_cmplt_val_cntr_sig_path = "/characterization_testbench/FSM_NV_REG_1/task_complete_val_counter"
vol_cntr1_val_sig_path = "/characterization_testbench/VOL_ARC_1/vol_cntr1_value"

tb_fix_time_cmds= {
    "task_value_tb"                 :"[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter]",
    "vol_cntr1_val"                 :"[get_value -radix unsigned /characterization_testbench/VOL_ARC_1/vol_cntr1_value]",
    "nvreg_val1"                    :"$val1",
    "vol_cntr_pa_val"               :"[get_value -radix unsigned /characterization_testbench/power_counter_val(0)]",
    "framework_pa_val"              :"[get_value -radix unsigned /characterization_testbench/power_counter_val(1)]",
    "data_save_pa_val"              :"[get_value -radix unsigned /characterization_testbench/power_counter_val(2)]",
    "time"                          :"[current_time]",
    "shtdwn_counter"                :"[get_value -radix unsigned /characterization_testbench/shtdwn_counter]",
    "clk_counter"                   :"[get_value -radix unsigned /characterization_testbench/clk_counter]",
    "trace_rom_addr"                :"[get_value -radix unsigned /characterization_testbench/INTERMITTENCY_EMULATOR_1/ROM_addr]"
}

tb_fix_val_cmds= {
    "task_value_tb"                 :"[get_value -radix unsigned /characterization_testbench/FSM_NV_REG_1/task_complete_val_counter]",
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
print("set fp [open " + tb_results_path +"TB_results.txt w]")

    ## Launch simulation
print("launch_simulation")

    ##--------------------------------------------helper functions
def printlnres(string):
    print("puts $fp \"" + string + "\"")
def printres(string):
    print("puts -nonewline $fp \"" + string + "\"")
    ##------------------------------------------------------------

print("# Fixed time simulation start")

printlnres("Fixed time simulation start ######################################")

    ## outputs the keys of tb_fix_tim_data in this format: key1;key2;key3;...;
printlnres( "".join(
        list(str(a)+";" for a in list(tb_fix_time_cmds.keys()))
    )
)

print("set val1 0")
print("add_condition -name cond1 -radix unsigned \" /characterization_testbench/fsm_nv_reg_state == data_save_s OR /characterization_testbench/fsm_nv_reg_state == recovery_s \" {")
print("global fp")
print("global val1")
    ## print commands of the tb_fix_val_data as command1;command2;....commandN;
    ## this commands will be printed in the results file
print("set val1 [get_value -radix unsigned /characterization_testbench/val1]")
print("}")

for taskValue in allTaskValues:
    print("set_value -radix unsigned " + task_cmplt_val_cntr_sig_path + " " + str(taskValue))
    print("set val1 0")
    print("run " + str(time_constant_us) + " us")
        ## print commands of the tb_fixe_time_data as command1;command2;....commandN;
        ## this commands will be printed in the results file
    printlnres( "".join( 
            list(str(value)+";" for value in list(tb_fix_time_cmds.values()))
        ) 
    )
    print("restart")

print("remove_conditions -all")

print("# Fixed time simulation end")
printlnres("Fixed time simulation end ########################################")

    ## This tcl command adds a condition that is checked every time the conditioned signal changes, if the condition is true the inner code is executed
    ## condition remain even after a restart, condtions can be reported by running report_conditions, and be all removed by running remove_condtion -all
print("add_condition -name cond2 -radix unsigned \"" + vol_cntr1_val_sig_path + " == " + str(value_constant) + "\" {")
print("global fp")
    ## print commands of the tb_fix_val_data as command1;command2;....commandN;
    ## this commands will be printed in the results file
printlnres( "".join( 
        list(str(value)+";" for value in list(tb_fix_val_cmds.values()))
    ) 
)
print("stop}")

print("# Fixed value simulation start")
printlnres("Fixed value simulation start #####################################")

   ## outputs the keys of tb_fix_val_data in this format: key1;key2;key3;...;
printlnres( "".join(
       list(str(a)+";" for a in list(tb_fix_val_cmds.keys()))
   )
)
   ## Generate commands
for taskValue in allTaskValues:
   print("set_value -radix unsigned " + task_cmplt_val_cntr_sig_path + " " + str(taskValue))
   print("run 5 ms")   ## this value must be setup manually, bigger value will result in long simulations if the condtion in add_condition is not reached
                       ## but smaller value will not the simulation to reach the condition
   print("set value [get_value -radix unsigned "+ vol_cntr1_val_sig_path +"]")

       ## This part is executed only if add_condition is not met (happens if vol_cntr is not able to reach value_constant)
   print("if { [expr $value < "+ str(value_constant)+"] } {")

       ## print commands of the tb_fix_val_data as command1;command2;....commandN;
       ## this commands will be printed in the results file
   printlnres( "".join( 
           list(str(value)+";" for value in list(tb_fix_val_cmds.values()))
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
##--------------------------------------------------------------------------------

##-------------------------------------------------------------Remove vivado files
cleanup()
##--------------------------------------------------------------------------------

##################################################################################
########################## RUN GENERATED BATCH FIlE ##############################
    ## parameters to pass to vivado
run_line = vivado_path + " -mode batch -source " + tcl_script_path

##run_line = "export LC_ALL=C \n" + run_line    ## <- eventually remove this
print("Executing: " + str(run_line))
os.system(run_line)
##################################################################################
##################################################################################


##---------------------------------------------------------------Testbench changes
    ## Change testbench of top level to use the correct architecture for this 
    ## specific test. We need architecture Behavioral_tb
ctf = open(characterization_testbench_path, "r+")
testbench_lines = ctf.readlines()

search_marker_start = "----##TB!!"
search_marker_end = "----!!TB##"
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