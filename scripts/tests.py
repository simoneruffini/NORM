from matplotlib import pyplot as plt

data = [ 
1,81,81,
2,118,118,
3,144,144,
4,152,152,
5,163,160,
6,171,168,
7,184,182,
8,167,160,
9,175,171,
10,160,160,
11,141,132,
12,141,132,
13,150,143,
14,159,154,
15,168,165,
16,161,160,
17,169,153,
18,160,144,
19,130,114,
20,135,120,
21,98,84,
22,101,88,
23,104,92,
24,59,48,
25,85,75,
26,87,78,
27,89,81,
28,91,84,
29,93,87,
30,95,90,
31,97,93,
32,99,96,
33,101,99,
34,103,102,
35,105,105,
36,70,36,
37,71,37,
38,34,38,
39,37,0,
40,37,0,
41,37,0,
42,37,0,
43,37,0,
44,37,0,
45,37,0,
46,37,0,
47,37,0,
48,37,0,
49,37,0,
50,37,0,
51,37,0,
52,37,0,
53,37,0,
54,37,0,
55,37,0
]

val= [[],[],[]]
for i,a in enumerate(data):
    val[i%3].append(a)

print(val[0])
print(val[1])
print(val[2])

print(len(val[0]),len(val[1]),len(val[2]))

fig,ax=plt.subplots()
# ax=fig.add_subplot(111, label="1")
# ax2=fig.add_subplot(111, label="2")
# ax3=fig.add_subplot(111, label="3")

ax.plot(val[0],val[1],'.-')
ax.set_xlabel("task_value_tb")
ax.plot(val[0],val[2],'^',color="orange")
ax.set_ylabel("vol_cntr1_val / nvreg_val1")


plt.ylim(0,1.1 * max(val[1]))
plt.grid()
plt.tight_layout()

# ax2.plot(val[0], val[2], color="C1")
# ax2.yaxis.tick_right()
# ax2.set_ylabel('nvreg_val1', color="C1")       
# ax2.yaxis.set_label_position('right') 

plt.show()
