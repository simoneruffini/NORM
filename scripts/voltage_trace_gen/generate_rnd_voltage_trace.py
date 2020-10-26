import random
import statistics
import numpy as np
from matplotlib import pyplot as plt
max_val = int(input("Enter max value of trace: "))
num_sample = int(input("Enter number of sample: "))
thresold_1 = int(input("Enter first threshold value: "))
thresold_2 = int(input("Enter second threshold value: "))
count_threshold_1 = 0
count_threshold_2 = 0
values = []
num_elem_avg = int(0.01*num_sample)
for i in range(num_sample + num_elem_avg):
    tmp_val = random.randint(0,max_val) + int(max_val*2/3)
    if tmp_val > max_val:
        tmp_val = max_val
    if tmp_val <= thresold_1:
        count_threshold_1 += 1
    if tmp_val <= thresold_2:
        count_threshold_2 += 1
    values.append(tmp_val)

new_values = []
count_values = 0
for i in range(num_sample):
    tmp_val = int(statistics.mean(values[i:i+num_elem_avg]))
    new_values.append(tmp_val)
    print(str(tmp_val) + ",")
    count_values += 1
print("Num values: " + str(count_values))
print("Num values under thresold 1: "+ str(count_threshold_1) + "(" + str(count_threshold_1/num_sample*100) + " %)")
print("Num values under thresold 2: "+ str(count_threshold_2) + "(" + str(count_threshold_2/num_sample*100) + " %)")
plt.plot(new_values)
plt.plot(np.ones([num_sample]) * thresold_1)
plt.plot(np.ones([num_sample]) * thresold_2)
# plt.ylim(200,330)
plt.xlabel("n° of sample")
plt.ylabel("Value [mV]")

plt.savefig("Voltage_trace.pdf")
plt.show()