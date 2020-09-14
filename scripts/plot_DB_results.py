import re
from matplotlib import pyplot as plt

db_results_plots_path = "../doc/resources/characterization/"

results_file = open("./DB_results.txt", 'r')
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
end_data_fixed_val = [[] for i in names_fixed_val]


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

print(data_fix_time_tmp)
print(end_data_fixed_time)
print(names_fixed_val)
print(end_data_fixed_val)

results_file.close()

plt.tight_layout()
plt.xlim(0,max(end_data_fixed_time[0]))
for i,y in enumerate(end_data_fixed_time[1:]):
    plt.clf()
    plt.plot(end_data_fixed_time[0],y,'.-')
    plt.ylabel(names_fixed_time[i+1])
    plt.xlabel(names_fixed_time[0])
    plt.ylim(0,1.1 * max(end_data_fixed_time[i+1]))
    plt.grid()
    # plt.show()
    plt.savefig(db_results_plots_path+"DB_fix_time_"+str.upper(names_fixed_time[i+1])+"_graph.pdf")

plt.xlim(0,max(end_data_fixed_val[0]))
for i,y in enumerate(end_data_fixed_val[1:]):
    plt.clf()
    plt.plot(end_data_fixed_val[0],y,'.-')
    plt.ylabel(names_fixed_val[i+1])
    plt.xlabel(names_fixed_time[0])
    plt.ylim(0,1.1 * max(end_data_fixed_val[i+1]))
    plt.grid()
    # plt.show()
    plt.savefig(db_results_plots_path+"DB_fix_val_"+str.upper(names_fixed_val[i+1])+"_graph.pdf")