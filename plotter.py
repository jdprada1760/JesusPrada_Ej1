import numpy as np
import matplotlib.pyplot as plt

data = np.genfromtxt('out.data')
size = int(np.sqrt(data.shape[0]))
potential = data.reshape(size, size)

xi, yi = np.linspace(0, size-1, size), np.linspace(0, size-1, size)

xi, yi = np.meshgrid(xi, yi)

dx, dy = np.gradient(-potential)
plt.imshow(potential)
plt.streamplot(xi, yi, dy, dx, color='black')
plt.xlim(0, size-1)
plt.ylim(size-1, 0)
plt.title('Capacitor')
plt.savefig('V.png')

