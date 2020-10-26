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

shtdw_value = 2800
wrng_value = 3000
usefull_time = 0
shtdw_time = 0
wrng_time = 0
for data in end_data:
    if data>wrng_value:
        usefull_time += 1
    elif data <= wrng_value and data > shtdw_value:
        wrng_time += 1
    elif data <= shtdw_value:
        shtdw_time +=1

print("shutdown time: " + str(shtdw_time/len(end_data)*100) +"%")
print("warning time: " + str(wrng_time/len(end_data)*100)+"%")
print("usefull time: " + str(usefull_time/len(end_data)*100)+"%")
plt.plot(x,y,"-", color="black")
plt.axhline(y=shtdw_value,color="r")
#plt.axhline(y=wrng_value,color="b")
plt.grid()
plt.show()



