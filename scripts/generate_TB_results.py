from matplotlib import pyplot as plt 
import os

tcl_script_name = "fixed_time_simulation_TB.tcl"
project_path = "/home/luca/Documents/git/NonVolatileProcEmul-FPGA/vivado/NVA_EMULATOR.xpr" 
counter_path = "/top_level_testbench/val1"
task_complete_signal_path = "/top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter"
vivado_path = "/opt/Xilinx/Vivado/2020.1/bin/vivado"

allTaskVelues = []

# allTaskVelues.append(5)

for val in range(0,250,5):
    allTaskVelues.append(val)

tcl_script_file = open(tcl_script_name, 'w')

tcl_script_file.write("open_project " + project_path + "\n")
tcl_script_file.write("set_property -name {xsim.simulate.runtime} -value {0us} -objects [get_filesets sim_1]\n")
tcl_script_file.write("launch_simulation\n")

for taskValue in allTaskVelues:
    tcl_script_file.write("set_value -radix dec " + task_complete_signal_path + " " + str(taskValue) + "\n")
    tcl_script_file.write("run 100 us\n")
    tcl_script_file.write("report_values -radix dec " + counter_path + "\n")
    tcl_script_file.write("restart\n")

tcl_script_file.close()

os.system("rm vivado.log")
os.system("rm vivado.jou")
os.system("export LC_ALL=C \n/." + vivado_path + " -mode batch -source " + tcl_script_name)

vivado_log_file = open("vivado.log", 'r')
allLines = vivado_log_file.read().split('\n')
endVals = []
for line in allLines:
    if "Declared" in line:
        elements = line.split(' ')
        num = elements[len(elements) - 1]
        if num.isnumeric():
            endVals.append(int(num))
vivado_log_file.close()
print(endVals)

plt.plot(allTaskVelues,endVals, '.-b')
plt.xlabel("task_complete_val_counter")
plt.ylabel("Counter 1 final val")
plt.ylim(0,max(endVals) + max(endVals)*0.1)
plt.xlim(0,max(allTaskVelues))
plt.grid()
plt.savefig("TB_graph.pdf")
plt.show()

os.system("rm vivado.log")
os.system("rm vivado.jou")