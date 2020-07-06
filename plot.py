from matplotlib import pyplot as plt
from matplotlib import cm
from matplotlib.ticker import LinearLocator, FormatStrFormatter
import numpy as np
from mpl_toolkits.mplot3d import Axes3D

Xpoints = np.linspace(17,1000,10000)
Ypoints = np.linspace(0,1,10)
x = []
for i in range(10):
    x.append(((10000-1329)/((Xpoints*3)/(Xpoints-14))) * (1-0.1*i))
# x = ((10000-1329)/((Xpoints*3)/(Xpoints-14))) * (1-0.5)
# x = ((10000-1329)/((Xpoints*3)/(Xpoints-14)))
# XY = np.zeros([10,10000])
# for i in range(10):
#     XY[i][:] = x * Ypoints[i]
# XY = x * Ypoints

# Axes3D.plot_surface(XY[0], XY[1])
X = np.arange(17, 1000, 0.1)
Y = np.arange(0, 1, 0.1)
X, Y = np.meshgrid(X, Y)
# R = np.sqrt(X**2 + Y**2)

Z = (10000-1329)/((X*3)/(X-14)) * (1-Y)
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
plt.plot(x[1], 'b', linestyle = 'dotted', label = "P_err = 0.1")
plt.plot(x[2], 'g', label = "P_err = 0.2")
plt.plot(x[3], 'g', linestyle = 'dotted', label = "P_err = 0.3")
plt.plot(x[4], 'r', label = "P_err = 0.4")
plt.plot(x[5], 'r', linestyle = 'dotted', label = "P_err = 0.5")
plt.plot(x[6], 'c', label = "P_err = 0.6")
plt.plot(x[7], 'c', linestyle = 'dotted', label = "P_err = 0.7")
plt.plot(x[8], 'y', label = "P_err = 0.8")
plt.plot(x[9], 'y', linestyle = 'dotted', label = "P_err = 0.9")
plt.plot(DB, 'k', label = "DB = 2242")
plt.legend()
plt.xlabel("N_bkp")
plt.ylabel("End_val")
plt.savefig("2D_plot.pdf")
plt.show()
