from matplotlib import pyplot as plt
from enum import Enum, auto
import multiprocessing
import os
import sys
import platform
import argparse
import re

##---------------------------------------------------------------------- Functions
def cleanup ():
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


def capture_data (keyword,string_list):
    all_lists = []
    state = State.CLOSE

    sublist = None
    for word in string_list:
        if word.startswith(keyword):
            sublist = list()
            state = State.OPEN
            continue
        if word.startswith('}'):
            all_lists.append(sublist)
            state = State.CLOSE
            continue
        if state is State.OPEN:
            sublist.append(word)
            print(word)

    return all_lists

##--------------------------------------------------------------------------------


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
cb_results_path = "./CB_results.txt"
cb_results_plots_path = "../doc/resources/characterization/"
characterization_testbench_path = "../test/characterization_testbench.vhd"
time_constant_us = 1000
value_constant = 2000

start_value_period = 10 
end_value_period = 1010
period_step = 20
##--------------------------------------------------------------------------------

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

## TODO: integrage the range in the args and with the value used in the scripts
allPeriods = []
allPeriods.append(5)
for val in range(start_value_period,end_value_period,period_step):
    allPeriods.append(val)

##--------------------------------------------------- Creation of tcl batch script
    ##  Defaults
    ## to get description of this signals use the describe command see
    ## UG835 (v2020.1) June 3, 2020 www.xilinx.com Tcl Command Reference Guide page 479
tcl_script_name = "CB_simulation_batch.tcl"
testbench_val1_path = "/characterization_testbench/val1"
testbench_shtdwn_counter_path = "/characterization_testbench/shtdwn_counter"
testbench_clk_counter_path = "/characterization_testbench/clk_counter"

period_signal_path = "/characterization_testbench/FSM_NV_REG_1/period_backup_clks"

std_out = sys.stdout

    ## Create script tcl script file (later removed)
tcl_script_file = open(tcl_script_name, 'w')

sys.stdout=tcl_script_file

print("open_project " + project_path )
print("# Update tesbanech to run")
print("set_property top characterization_testbench [get_filesets sim_1]")
print("set_property top_lib xil_defaultlib [get_filesets sim_1]")

threads = os.cpu_count() 
if threads == None:
    threads = "2"
else:
    threads = str(threads)

print("set_param general.MaxThreads " + threads)

print("set_property -name {xsim.simulate.runtime} -value {0us} -objects [get_filesets sim_1]")

## creates output file for this tests
print("set fp [open " + cb_results_path + " w]")
print("launch_simulation")

def printlnres(string):
    print("puts $fp \"" + string + "\"")
def printres(string):
    print("puts -nonewline $fp \"" + string + "\"")

print("# Fixed time simulation start")
printlnres("Fixed time simulation start ######################################")
printlnres("fixed_time_sim variable data ------------------------------------<")
printlnres("period_backup_clks;val1;")
for period in allPeriods:
    print("set_value -radix unsigned " + period_signal_path + " " + str(period))
    print("run " + str(time_constant_us) + " us")
    printres("[get_value -radix unsigned " + period_signal_path + " ];")
    printlnres("[get_value -radix unsigned " + testbench_val1_path +" ];")
    print("restart")

printlnres("fixed_time_sim constant data ------------------------------------<")
print("run " + str(time_constant_us) + " us")
printlnres("fixed_time:\t"+ str(time_constant_us) + " us")
printlnres("shtdwn_counter:\t[get_value -radix unsigned " + testbench_shtdwn_counter_path +" ]")
printlnres("clk_counter:\t[get_value -radix unsigned " + testbench_clk_counter_path +" ]")
print("restart")

print("# Fixed time simulation end")
printlnres("Fixed time simulation end ########################################\n")


print("add_condition -name cond1 -radix unsigned \"" + testbench_val1_path + " == " + str(value_constant) + "\" {")
print("global fp")
printres("[get_value -radix unsigned " + period_signal_path + " ];")
printres("[current_time];")
printres("[get_value -radix unsigned " + testbench_shtdwn_counter_path +" ];")
printlnres("[get_value -radix unsigned " + testbench_clk_counter_path +" ];")
print("stop }")


print("# Fixed value simulation start")
printlnres("Fixed value simulation start #####################################")
printlnres("fixed_val_sim variable data -------------------------------------<")
printlnres("period_backup_clks;time_us;shtdwn_counter;clk_counter;")
for period in allPeriods:
    print("set_value -radix unsigned " + period_signal_path + " " + str(period))
    print("run 1 s") 
    print("restart")

printlnres("fixed_val_sim constant data -------------------------------------<")
printlnres("val1:\t" + str(value_constant))

print("# Fixed value simulation end")
printlnres("Fixed value simulation end #######################################")

sys.stdout=std_out
tcl_script_file.close()
##--------------------------------------------------------------------------------

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
##----------------------------------------------------------------Data Acquisition

results_file = open("./CB_results.txt", 'r')
allLines = results_file.readlines()

data_fix_time_tmp = []
data_fix_val_tmp = []
start_fix_time = 0
start_fix_val= 0
for line in allLines:
    if "fixed_time_sim variable data" in line:
        start_fix_time = 1
    else:
        if start_fix_time == 1:
            if "fixed_time_sim constant data" not in line:
                data_fix_time_tmp.append(str(line.strip()))
            else:
                start_fix_time = 0
    if "fixed_val_sim variable data" in line:    
        start_fix_val = 1
    else:
        if start_fix_val == 1:
            if "fixed_val_sim constant data" not in line:
                data_fix_val_tmp.append(str(line.strip()))
            else:
                start_fix_val = 0

names_fixed_time = list(filter(None,data_fix_time_tmp.pop(0).split(";")))
names_fixed_val= list(filter(None,data_fix_val_tmp.pop(0).split(";")))

end_data_fixed_time =[[] for i in names_fixed_time]
end_data_fixed_val=[[] for i in names_fixed_val]

for i,data in enumerate(data_fix_time_tmp):
    data=list(filter(lambda x: None if '' else str(x),data.split(";")))
    for j,item in enumerate(data):
        item = int(re.sub("[^0-9]", "",item))
        end_data_fixed_time[j].append(item)

for i,data in enumerate(data_fix_val_tmp):
    data=list(filter(lambda x: None if '' else str(x),data.split(";")))
    for j,item in enumerate(data):
        divide = 1
        if "ms" in item:
            divide = 10**3
        elif "ns" in item:
            divide = 10**-3
        elif "ps" in item:
            divide = 10**-9
        else:
            None
        item = int(re.sub("[^0-9]", "",item))
        end_data_fixed_val[j].append(item*divide)

print(names_fixed_time)
print(end_data_fixed_time)
print(names_fixed_val)
print(end_data_fixed_val)

results_file.close()
##---------------------------------------------------------------------Plot reults
plt.tight_layout()
plt.xlim(0,max(end_data_fixed_time[0]))
for i,y in enumerate(end_data_fixed_time[1:]):
    plt.clf()
    plt.plot(end_data_fixed_time[0],y,'.-')
    plt.ylabel(names_fixed_time[i+1])
    plt.xlabel(names_fixed_time[0])
    plt.ylim(0,1.1 * max(end_data_fixed_time[i+1]))
    plt.grid()
    plt.savefig(cb_results_plots_path+"CB_fix_time_"+str.upper(names_fixed_time[i+1])+"_graph.pdf")

plt.xlim(0,max(end_data_fixed_val[0]))
for i,y in enumerate(end_data_fixed_val[1:]):
    plt.clf()
    plt.plot(end_data_fixed_val[0],y,'.-')
    plt.ylabel(names_fixed_val[i+1])
    plt.xlabel(names_fixed_time[0])
    plt.ylim(0,1.1 * max(end_data_fixed_val[i+1]))
    plt.grid()
    plt.savefig(cb_results_plots_path+"CB_fix_val_"+str.upper(names_fixed_val[i+1])+"_graph.pdf")
##--------------------------------------------------------------------------------

##-------------------------------------------------------------Remove vivado files
cleanup()