from matplotlib import pyplot as plt
from matplotlib import cm
from matplotlib.ticker import LinearLocator, FormatStrFormatter
import numpy as np
from mpl_toolkits.mplot3d import Axes3D

Xpoints = np.linspace(17,10000,10000)
# Ypoints = np.linspace(0,17,10)
Ypoints = np.linspace(0,0.001,10)
x = []
print(Ypoints)
for i in Ypoints:
    # x.append(((10000-1329)/((Xpoints*3)/(Xpoints-14))) * (1-i))
    # x.append(((10000-1329)/((Xpoints*3)/(Xpoints-14))) * (1-(i)/(10000/Xpoints)))
    x.append(((10000-1329)/((Xpoints*3)/(Xpoints-14))) * (1-(1- np.power(1-i,Xpoints))))
for i in range(len(Ypoints)):
    for j in range(len(Xpoints)):
        if x[i][j] < 0:
            x[i][j] = 0
x_1 = ((10000-1329)/((Xpoints*3)/(Xpoints-14))) * np.power(1-0.0017,Xpoints)
for j in range(len(x_1)):
    if x_1[j] < 0:
        x_1[j] = 0
# x = ((10000-1329)/((Xpoints*3)/(Xpoints-14)))
# XY = np.zeros([10,10000])
# for i in range(10):
#     XY[i][:] = x * Ypoints[i]
# XY = x * Ypoints

# Axes3D.plot_surface(XY[0], XY[1])
X = np.arange(17, 10000, 5)
# Y = np.arange(0, 5, 0.5)
Y = np.arange(0, 0.001, 0.0001)
X, Y = np.meshgrid(X, Y)
# R = np.sqrt(X**2 + Y**2)

# Z = (10000-1329)/((X*3)/(X-14)) * (1-Y)
Z = (10000-1329)/((X*3)/(X-14)) * np.power(1-Y,X)
# Z = (10000-1329)/((X*3)/(X-14)) * (1-Y/(10000/X))
for i in range(len(Z)):
    for j in range(len(Z[i])):
        if Z[i][j] < 0:
            Z[i][j] = 0
fig = plt.figure()
ax = fig.gca(projection='3d')
surf = ax.plot_surface(X, Y, Z, cmap=cm.coolwarm,
                       linewidth=0, antialiased=False)

# Customize the z axis.
ax.set_zlim(0, 3000)
ax.set_xlabel("N_bkp")
ax.set_ylabel("P_err")
ax.set_zlabel("End_val")
ax.zaxis.set_major_locator(LinearLocator(10))
ax.zaxis.set_major_formatter(FormatStrFormatter('%.0f'))

# Add a color bar which maps values to colors.
fig.colorbar(surf, shrink=0.5, aspect=5)

DB = np.ones(10000) * 2242
plt.savefig("3D_plot.pdf")
plt.show()

num_elements_after_coma = 5

print(x_1)
plt.plot(x_1, 'b', label = "P_err = 0.0017")

# plt.plot(x[0], 'b', label = "P_err = 0")
# plt.plot(x[1], 'b', linestyle = 'dotted', label = "P_err = " + str((round(Ypoints[1],num_elements_after_coma))))
# plt.plot(x[2], 'g', label = "P_err = " + str((round(Ypoints[2],num_elements_after_coma))))
# plt.plot(x[3], 'g', linestyle = 'dotted', label = "P_err = " + str((round(Ypoints[3],num_elements_after_coma))))
# plt.plot(x[4], 'r', label = "P_err = " + str((round(Ypoints[4],num_elements_after_coma))))
# plt.plot(x[5], 'r', linestyle = 'dotted', label = "P_err = " + str((round(Ypoints[5],num_elements_after_coma))))
# plt.plot(x[6], 'c', label = "P_err = " + str((round(Ypoints[6],num_elements_after_coma))))
# plt.plot(x[7], 'c', linestyle = 'dotted', label = "P_err = " + str((round(Ypoints[7],num_elements_after_coma))))
# plt.plot(x[8], 'y', label = "P_err = " + str((round(Ypoints[8],num_elements_after_coma))))
# plt.plot(x[9], 'y', linestyle = 'dotted', label = "P_err = " + str((round(Ypoints[9],num_elements_after_coma))))
plt.plot(DB, 'k', label = "DB = 2242")
plt.legend()
plt.xlabel("N_bkp")
plt.ylabel("End_val")
plt.savefig("2D_plot.pdf")
plt.show()
