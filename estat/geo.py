import numpy as np
from matplotlib import pyplot as plt

def var_vs_exp():
    xs = np.arange(0.001, 1, 0.001)
    ys = np.sqrt((1-xs)/(xs**2))

    plt.plot(1/xs, ys)
    plt.show()

def dist(p):
    xs = np.arange(0.0, 1/p*10.0, 1.0)
    ys = p*(1-p)**(xs-1)

    plt.plot(xs, np.cumsum(ys))
    plt.show()

dist(0.01)