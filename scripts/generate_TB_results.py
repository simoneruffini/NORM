from matplotlib import pyplot as plt 
import os

tcl_script_name = "fixed_time_simulation_TB.tcl"
project_path = "/home/luca/Documents/git/NonVolatileProcEmul-FPGA/vivado/NVA_EMULATOR.xpr" 
counter_path = "/top_level_testbench/val1"
task_complete_signal_path = "/top_level_testbench/top_level_1/FSM_NV_REG_1/task_complete_val_counter"
vivado_path = "/opt/Xilinx/Vivado/2020.1/bin/vivado"

allTaskVelues = []

allTaskVelues.append(5)

for val in range(10,200,5):
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
os.system("touch tmp_log.txt")
os.system("/./opt/Xilinx/Vivado/2020.1/bin/vivado -mode batch -source fixed_time_simulations_TB.tcl | grep Declared >> tmp_log.txt") 

resultFile = open("tmp_log.txt", 'r')
allLines = resultFile.read().split('\n')
nums = []
for line in allLines:
	elements = line.split(' ')
	num = elements[len(elements) - 1]
	if num.isnumeric():
		nums.append(int(num))
resultFile.close()
print(nums)
x_val = []
x_val.append(5)
for val in range(10,210,10):
    x_val.append(val)
plt.plot(x_val,nums, '.-b')
plt.xlabel("task_complete_val_counter")
plt.ylabel("Counter 1 final val")
plt.savefig("TB_graph.pdf")
plt.show()

os.system("rm tmp_log.txt")
os.system("rm vivado.log")
os.system("rm vivado.jou")