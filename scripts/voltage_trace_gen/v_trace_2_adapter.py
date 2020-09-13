# file 2.txt is from https://raw.githubusercontent.com/PERSISTLab/BatterylessSim/master/traces/2.txt
# read https://github.com/PERSISTLab/BatterylessSim/tree/master/traces README to understand file

#from all traces 2.txt was selected because of the big change in regions [12,20] seconds
from matplotlib import pyplot as plt
import os
import math

good_stuff_start = 15*60 #seconds
good_stuff_end= 20 #seconds

in_v_trace_file = open("./2.txt","r")
x = []
y = []
end_data = []

start_time_trace = 34921266 #34921.266 seconds
end_time_trace =  35000497 #35000.497 seconds

partial_x = 0
partial_y = 0

mean_value = 25 

lines = in_v_trace_file.readlines()
for i,line in enumerate(lines):
    data = line.split()
    if i % mean_value == 0: 
        x.append(partial_x) 
        partial_x += 1
        y.append(int(partial_y * 1000/mean_value))
        end_data.append(int(partial_y * 1000/mean_value))
        partial_y = 0

    partial_y += float(data[1])

in_v_trace_file.close()

print(len(lines))
print(len(end_data))
print(max(end_data))

output = open("./voltage_trace.txt", "w")

output.write("INTERMITTENCY_NUM_ELEMNTS_ROM = " + str(len(end_data)) + "\n")
output.write("INTERMITTENCY_MAX_VAL_ROM_TRACE = " + str(max(end_data)) + "\n")
for data in end_data:
    output.write("      " + str(data) + ",\n")

output.close()

plt.plot(x,y,".-")
plt.grid()
plt.show()



