import numpy as np
from matplotlib import pyplot as plt

xs = np.arange(0, 1, 0.001)
ys = np.sqrt((1-xs)/(xs**2))

plt.plot(xs, ys)