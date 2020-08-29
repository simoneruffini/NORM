from matplotlib import pyplot as plt
import os

tcl_script_name = "fixed_time_simulazion_CB.tcl"
project_path = "/home/luca/Documents/git/NonVolatileProcEmul-FPGA/vivado/NVA_EMULATOR.xpr" 
counter_path = "/top_level_testbench/val1"
period_signal_path = "/top_level_testbench/top_level_1/FSM_NV_REG_1/period_backup_clks"
vivado_path = "/opt/Xilinx/Vivado/2020.1/bin/vivado"

allPerdios = []

allPerdios.append(5)

for val in range(10,1000,10):
    allPerdios.append(val)

tcl_script_file = open(tcl_script_name, 'w')

tcl_script_file.write("open_project " + project_path + "\n")
tcl_script_file.write("set_property -name {xsim.simulate.runtime} -value {0us} -objects [get_filesets sim_1]\n")
tcl_script_file.write("launch_simulation\n")

for period in allPerdios:
    tcl_script_file.write("set_value -radix dec " + period_signal_path + " " + str(period) + "\n")
    tcl_script_file.write("run 100 us\n")
    tcl_script_file.write("report_values -radix dec " + counter_path + "\n")
    tcl_script_file.write("restart\n")

tcl_script_file.close()

os.system("/." + vivado_path + " -mode batch -source " + tcl_script_name)

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
plt.plot(allPerdios,endVals, '.-b')
plt.xlabel("num clocks of period")
plt.ylabel("Counter 1 final val")
plt.savefig("CB_graph.pdf")
plt.show()

os.system("rm vivado.log")
os.system("rm vivado.jou")