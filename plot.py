from matplotlib import pyplot as plt
from matplotlib import cm
from matplotlib.ticker import LinearLocator, FormatStrFormatter
import numpy as np
from mpl_toolkits.mplot3d import Axes3D

Xpoints = np.linspace(17,10000,10000)
Ypoints = np.linspace(0,17,10)
# Ypoints = np.linspace(0,1,10)
x = []
print(Ypoints)
for i in Ypoints:
    # x.append(((10000-1329)/((Xpoints*3)/(Xpoints-14))) * (1-i))
    x.append(((10000-1329)/((Xpoints*3)/(Xpoints-14))) * (1-(i)/(10000/Xpoints)))
for i in range(len(Ypoints)):
    for j in range(len(Xpoints)):
        if x[i][j] < 0:
            x[i][j] = 0
# x = ((10000-1329)/((Xpoints*3)/(Xpoints-14))) * (1-0.5)
# x = ((10000-1329)/((Xpoints*3)/(Xpoints-14)))
# XY = np.zeros([10,10000])
# for i in range(10):
#     XY[i][:] = x * Ypoints[i]
# XY = x * Ypoints

# Axes3D.plot_surface(XY[0], XY[1])
X = np.arange(17, 10000, 5)
Y = np.arange(0, 5, 0.5)
Y = np.arange(0, 1, 0.1)
X, Y = np.meshgrid(X, Y)
# R = np.sqrt(X**2 + Y**2)

Z = (10000-1329)/((X*3)/(X-14)) * (1-Y)
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

plt.plot(x[0], 'b', label = "P_err = 0")
plt.plot(x[1], 'b', linestyle = 'dotted', label = "P_err = " + str((round(Ypoints[1],2))))
plt.plot(x[2], 'g', label = "P_err = " + str((round(Ypoints[2],2))))
plt.plot(x[3], 'g', linestyle = 'dotted', label = "P_err = " + str((round(Ypoints[3],2))))
plt.plot(x[4], 'r', label = "P_err = " + str((round(Ypoints[4],2))))
plt.plot(x[5], 'r', linestyle = 'dotted', label = "P_err = " + str((round(Ypoints[5],2))))
plt.plot(x[6], 'c', label = "P_err = " + str((round(Ypoints[6],2))))
plt.plot(x[7], 'c', linestyle = 'dotted', label = "P_err = " + str((round(Ypoints[7],2))))
plt.plot(x[8], 'y', label = "P_err = " + str((round(Ypoints[8],2))))
plt.plot(x[9], 'y', linestyle = 'dotted', label = "P_err = " + str((round(Ypoints[9],2))))
plt.plot(DB, 'k', label = "DB = 2242")
plt.legend()
plt.xlabel("N_bkp")
plt.ylabel("End_val")
plt.savefig("2D_plot.pdf")
plt.show()
