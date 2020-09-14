from matplotlib import pyplot as plt
from enum import Enum, auto
import os
import sys
import platform
import argparse
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

class State(Enum):
    OPEN = auto()
    CLOSE = auto()

def printlnres(file, string):
    file.write("puts $fp \"" + string + "\"" + "\n")
def printres(file, string):
    file.write("puts -nonewline $fp \"" + string + "\"" + "\n")

if __name__ == "__main__":
    ##----------------------------------------------------Arguments parsing and checks
    ap = argparse.ArgumentParser()
    ap.add_argument("--vivado_path", required=False, help="path to vivado executable", type=str)
    ap.add_argument("--fixed_time_value", required=False, help ="Define the completion time for the simulation (time in us)", type=str)
    ap.add_argument("--fixed_val_vlaue", required=False, help ="Define the completion vlaue for the simulation", type=str)
    ap.add_argument("--step_size", required=False, help ="Define the resolution of step size for either type of simulation", type=int)
    args = vars(ap.parse_args())

    operative_system = sys.platform

    if args["vivado_path"] != None :
        vivado_path = args["vivado_path"] 
    else:
        if operative_system == "linux":
            vivado_path =  "/opt/Xilinx/Vivado/2020.1/bin/vivado"
        elif operative_system == "win32":
            vivado_path = "C:\\Xilinx\\Vivado\\2020.1\\bin\\vivado.bat"
        else:
            sys.exit("I don't know how to open vivado on your system")


    ## Default parameters
    project_path = "../vivado/NVA_EMULATOR.xpr" 
    db_results_path = "./DB_results.txt"
    db_results_plots_path = "../doc/resources/characterization/"
    characterization_testbench_path = "../test/characterization_testbench.vhd"
    time_constant_us = 100
    value_constant = 200

    start_value_threshold = 301
    end_value_threshold = 330
    threshold_step = 1
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
                    testbench_lines.pop(i)
                    testbench_lines.insert(i,line[2:])
                else:
                    start = 0

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
    tcl_script_name = "DB_simulation_batch.tcl"
    testbench_val1_path = "/characterization_testbench/val1"
    testbench_shtdwn_counter_path = "/characterization_testbench/shtdwn_counter"
    testbench_clk_counter_path = "/characterization_testbench/clk_counter"

    threshold_signal_path = "/characterization_testbench/threshold_value[1]"

    ## Create script tcl script file (later removed)
    tcl_script_file = open(tcl_script_name, 'w')

    endl = "\n"

    tcl_script_file.write("open_project " + project_path + endl)
    tcl_script_file.write("# Update tesbanech to run" + endl)
    tcl_script_file.write("set_property top characterization_testbench [get_filesets sim_1]" + endl)
    tcl_script_file.write("set_property top_lib xil_defaultlib [get_filesets sim_1]" + endl)

    threads = os.cpu_count() 
    if threads == None:
        threads = "2"
    else:
        threads = str(threads)

    tcl_script_file.write("set_param general.MaxThreads " + threads + endl)

    tcl_script_file.write("set_property -name {xsim.simulate.runtime} -value {0us} -objects [get_filesets sim_1]" + endl)

    ## creates output file for this tests
    tcl_script_file.write("set fp [open " + db_results_path + " w]" + endl)
    tcl_script_file.write("launch_simulation" + endl)

    ### FIXED TIME ###
    printlnres(tcl_script_file, "Fixed time simulation start ######################################")
    printlnres(tcl_script_file, "fixed_time_sim variable data ------------------------------------<")
    printlnres(tcl_script_file, "threshold_value[1];val1;")

    for threshold in allThreshold:
        tcl_script_file.write("set_value -radix unsigned " + threshold_signal_path + " " + str(threshold) + endl)
        tcl_script_file.write("run " + str(time_constant_us) + " us" + endl)
        printres(tcl_script_file, "[get_value -radix unsigned " + threshold_signal_path + " ];")
        printlnres(tcl_script_file, "[get_value -radix unsigned " + testbench_val1_path +" ];")
        tcl_script_file.write("get_value -radix unsigned " + threshold_signal_path + endl)
        tcl_script_file.write("get_value -radix unsigned " + testbench_val1_path + endl)
        tcl_script_file.write("relaunch_sim" + endl)

    printlnres(tcl_script_file, "fixed_time_sim constant data ------------------------------------<")
    tcl_script_file.write("run " + str(time_constant_us) + " us" + endl)
    printlnres(tcl_script_file, "fixed_time:\t"+ str(time_constant_us) + " us")
    printlnres(tcl_script_file, "shtdwn_counter:\t[get_value -radix unsigned " + testbench_shtdwn_counter_path +" ]")
    printlnres(tcl_script_file, "clk_counter:\t[get_value -radix unsigned " + testbench_clk_counter_path +" ]")
    tcl_script_file.write("restart" + endl)
    printlnres(tcl_script_file, "Fixed time simulation end ########################################\n" + endl)

    ### FIXED VALUE ###
    tcl_script_file.write("add_condition -name cond1 -radix unsigned \"" + testbench_val1_path + " == " + str(value_constant) + "\" {" + endl)
    tcl_script_file.write("global fp" + endl)
    printres(tcl_script_file, "[get_value -radix unsigned " + threshold_signal_path + " ];")
    printres(tcl_script_file, "[current_time];")
    printres(tcl_script_file, "[get_value -radix unsigned " + testbench_shtdwn_counter_path +" ];")
    printlnres(tcl_script_file, "[get_value -radix unsigned " + testbench_clk_counter_path +" ];")
    tcl_script_file.write("stop }" + endl)

    tcl_script_file.write("# Fixed value simulation start" + endl)
    printlnres(tcl_script_file, "Fixed value simulation start #####################################")
    printlnres(tcl_script_file, "fixed_val_sim variable data -------------------------------------<")
    printlnres(tcl_script_file, "period_backup_clks;time_us;shtdwn_counter;clk_counter;")
    for threshold in allThreshold:
        tcl_script_file.write("set_value -radix unsigned " + threshold_signal_path + " " + str(threshold) + endl)
        tcl_script_file.write("run 1 s" + endl) 
        tcl_script_file.write("restart" + endl)

    printlnres(tcl_script_file, "fixed_val_sim constant data -------------------------------------<")
    printlnres(tcl_script_file, "val1:\t" + str(value_constant))

    tcl_script_file.write("# Fixed value simulation end" + endl)
    printlnres(tcl_script_file, "Fixed value simulation end #######################################")

    tcl_script_file.close()

    ##-------------------------------------------------------------Remove vivado files
    cleanup()
    ##--------------------------------------------------------------------------------

    ##################################################################################
    ########################## RUN GENERATED BATCH FIlE###############################
        ## parameters to pass to vivado
    run_line = vivado_path + " -mode batch -source " + tcl_script_name

    ##run_line = "export LC_ALL=C \n" + run_line    ## <- eventually remove this
    print("Executing: " + str(run_line))
    os.system(run_line)
    ##################################################################################
    ##################################################################################

    ##---------------------------------------------------------------Testbench changes
    ## Change testbench of top level to use the correct architecture for this 
    ## specific test. We need architecture Behavioral_cb
    ctf = open(characterization_testbench_path, "r+")
    testbench_lines = ctf.readlines()

    search_marker_start = "----##CB!!"
    search_marker_end = "----!!CB##"
    start = 0
    for i,line in enumerate(testbench_lines):
        if search_marker_start in line:
            start = 1
        else:
            if start == 1: 
                if search_marker_end not in line:
                    testbench_lines.pop(i)
                    testbench_lines.insert(i,"--" + line)
                else:
                    start = 0

    ctf.seek(0)
        ## Delete contents
    ctf.truncate()
        ## Write the cange to the file by rewriting it entirely
    ctf.writelines(testbench_lines) 
    ctf.close()
    ##--------------------------------------------------------------------------------


    ##-------------------------------------------------------------Remove vivado files
    cleanup()