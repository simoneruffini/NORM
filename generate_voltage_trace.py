import random
import statistics
from matplotlib import pyplot as plt
max_val = int(input("Enter max value of trace: "))
num_sample = int(input("Enter number of sample: "))
values = []
num_elem_avg = int(0.01*num_sample)
for i in range(num_sample + num_elem_avg):
    values.append(random.randint(0,max_val))

new_values = []
count_values = 0
for i in range(num_sample):
    tmp_val = int(statistics.mean(values[i:i+num_elem_avg]))
    new_values.append(tmp_val)
    print(str(tmp_val) + ",")
    count_values += 1
print("Num values: " + str(count_values))
plt.plot(new_values)
plt.savefig("Voltage_trace.pdf")
plt.show()