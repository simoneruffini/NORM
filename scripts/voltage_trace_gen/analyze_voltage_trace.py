file_object = open("voltage_trace.txt","r")
allData = file_object.read().split(',\n')
allDataInt = []
for element in allData:
    if '\n' in element:
        element.replace('\n','')
    allDataInt.append(int(element)) 
length_segment = 10
thresold_1 = 300
thresold_2 = 310
counter_occ_th1 = 0
counter_occ_th2 = 0
for i in range(int(len(allDataInt)/length_segment)):
    for j in range(length_segment):
        if allDataInt[i*10 + j] < thresold_1:
            counter_occ_th1 += 1
            break

for i in range(int(len(allDataInt)/length_segment)):
    for j in range(length_segment):
        if allDataInt[i*10 + j] < thresold_2:
            counter_occ_th2 += 1
            break
print(counter_occ_th1, counter_occ_th1/int(len(allDataInt)/length_segment))
print(counter_occ_th2, counter_occ_th2/int(len(allDataInt)/length_segment))