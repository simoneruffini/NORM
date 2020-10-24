from matplotlib import pyplot as plt
import argparse
import re

print("Which results would you plot?")
print("\t-[1] DB (default)")
print("\t-[2] CB")
print("\t-[3] TB")
choise = str(input("Make you choise: "))

if choise == "2":
    results_plots_path = "../doc/resources/characterization/"
    results_path = "./characterization/results/CB_results.txt"
    results_name = "CB"
elif choise == "3":
    results_plots_path = "../doc/resources/characterization/"
    results_path = "./characterization/results/TB_results.txt"
    results_name = "TB"
else:
    results_plots_path = "../doc/resources/characterization/"
    results_path = "./characterization/results/DB_results.txt"
    results_name = "DB"
##----------------------------------------------------------------------- Defaults

##-------------------------------------------------------------------------------- 

##----------------------------------------------------Arguments parsing and checks
##--------------------------------------------------------------------------------

results_file = open(results_path, 'r')
allLines = results_file.readlines()

data_fix_time_tmp = []
data_fix_val_tmp = []
start_fix_time = 0
start_fix_val= 0
for line in allLines:
    if "Fixed time simulation start" in line:
        start_fix_time = 1
    else:
        if start_fix_time == 1:
            if "Fixed time simulation end" not in line:
                data_fix_time_tmp.append(str(line.strip()))
            else:
                start_fix_time = 0
    if "Fixed value simulation start" in line:    
        start_fix_val = 1
    else:
        if start_fix_val == 1:
            if "Fixed value simulation end" not in line:
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

# print(names_fixed_time)
# print(end_data_fixed_time)
# print(names_fixed_val)
# print(end_data_fixed_val)

results_file.close()
##---------------------------------------------------------------------Plot reults
# Plot fixed time graphs
for i,y in enumerate(end_data_fixed_time[1:]):
    fig = plt.figure()
    ax = fig.gca()
    ax.plot(end_data_fixed_time[0],y,'.-')
    ax.set_ylim(0,1.3 * max(end_data_fixed_time[i+1]))

    # Find max value and max value index
    max_val = max(end_data_fixed_time[i+1])
    max_index = end_data_fixed_time[i+1].index(max(end_data_fixed_time[i+1]))

    # Annotate max value on graph
    bbox_props = dict(boxstyle="square,pad=0.3", fc="w", ec="k", lw=0.72)
    arrowprops=dict(arrowstyle="->",connectionstyle="angle,angleA=0,angleB=60")
    kw = dict(xycoords='data',textcoords="axes fraction",
              arrowprops=arrowprops, bbox=bbox_props, ha="right", va="top")
    ax.annotate("Max = " + str(int(max_val)), (end_data_fixed_time[0][max_index], max_val), xytext=(0.5,0.9), **kw)


    # Find min value and min value index
    min_val = min(end_data_fixed_time[i+1])
    min_index = end_data_fixed_time[i+1].index(min(end_data_fixed_time[i+1]))

    # Annotate min value on graph
    bbox_props = dict(boxstyle="square,pad=0.3", fc="w", ec="k", lw=0.72)
    arrowprops=dict(arrowstyle="->",connectionstyle="angle,angleA=0,angleB=120")
    kw = dict(xycoords='data',textcoords="axes fraction",
              arrowprops=arrowprops, bbox=bbox_props, ha="right", va="top")
    ax.annotate("Min = " + str(int(min_val)), (end_data_fixed_time[0][min_index], min_val), xytext=(0.5,0.1), **kw)

    ax.set_ylabel(names_fixed_time[i+1])
    ax.set_xlabel(names_fixed_time[0])
    ax.grid()
    ax.figure.savefig(results_plots_path + results_name + "_fix_time_"+str.upper(names_fixed_time[i+1])+"_graph.pdf")
    
    print("Saved graph: " + results_plots_path + results_name + "_fix_time_"+str.upper(names_fixed_time[i+1])+"_graph.pdf")

# Plot fixed value graphs
for i,y in enumerate(end_data_fixed_val[1:]):
    fig = plt.figure()
    ax = fig.gca()
    ax.plot(end_data_fixed_val[0],y,'.-')
    ax.set_ylim(0,1.3 * max(end_data_fixed_val[i+1]))

    # Find max value and max value index
    max_val = max(end_data_fixed_val[i+1])
    max_index = end_data_fixed_val[i+1].index(max(end_data_fixed_val[i+1]))

    # Annotate max value on graph
    bbox_props = dict(boxstyle="square,pad=0.3", fc="w", ec="k", lw=0.72)
    arrowprops=dict(arrowstyle="->",connectionstyle="angle,angleA=0,angleB=60")
    kw = dict(xycoords='data',textcoords="axes fraction",
              arrowprops=arrowprops, bbox=bbox_props, ha="right", va="top")
    ax.annotate("Max = " + str(int(max_val)), (end_data_fixed_val[0][max_index], max_val), xytext=(0.5,0.9), **kw)


    # Find min value and min value index
    min_val = min(end_data_fixed_val[i+1])
    min_index = end_data_fixed_val[i+1].index(min(end_data_fixed_val[i+1]))

    # Annotate min value on graph
    bbox_props = dict(boxstyle="square,pad=0.3", fc="w", ec="k", lw=0.72)
    arrowprops=dict(arrowstyle="->", connectionstyle="angle,angleA=0,angleB=120")
    kw = dict(xycoords='data',textcoords="axes fraction",
              arrowprops=arrowprops, bbox=bbox_props, ha="right", va="top")
    ax.annotate("Min = " + str(int(min_val)), (end_data_fixed_val[0][min_index], min_val), xytext=(0.5,0.1), **kw)


    ## CUSTOM GRAPH FOR 'TIME' and 'VOL_CNTR_PA_VAL' ##
    if(str.upper(names_fixed_val[i+1]) == "TIME" or str.upper(names_fixed_val[i+1]) == "VOL_CNTR_PA_VAL"):
        second_max_val = max(end_data_fixed_val[i+1][10:len(end_data_fixed_val[i+1]) - 10])
        second_max_index = end_data_fixed_val[i+1].index(second_max_val)
        bbox_props = dict(boxstyle="square,pad=0.3", fc="w", ec="k", lw=0.72)
        arrowprops=dict(arrowstyle="->", connectionstyle="angle,angleA=0,angleB=120")
        kw = dict(xycoords='data',textcoords="axes fraction",
                arrowprops=arrowprops, bbox=bbox_props, ha="right", va="top")
        ax.annotate("Max2 = " + str(int(second_max_val)), (end_data_fixed_val[0][second_max_index], second_max_val), xytext=(0.5,0.5), **kw)

    ax.set_ylabel(names_fixed_val[i+1])
    ax.set_xlabel(names_fixed_time[0])
    ax.grid()

    ax.figure.savefig(results_plots_path + results_name + "_fix_val_"+str.upper(names_fixed_val[i+1])+"_graph.pdf")
    print("Saved graph: " + results_plots_path + results_name + "_fix_val_"+str.upper(names_fixed_val[i+1])+"_graph.pdf")