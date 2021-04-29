import numpy as np
from matplotlib import pyplot as plt
from math import ceil

def expected(c):
    r = 0.0
    p = 1.0
    for i in range(1, 10**9):
        if i * c >= 1.0:
            r += i * p
            break

        r += i * (p * i * c)
        p *= (1 - i * c)

    return r

def find_c(p):
    l, r = 0.0, 1.0

    while r-l > 1e-6:
        m = (l + r) / 2

        if expected(m) * p <= 1:
            r = m
        else:
            l = m

    return l

xs = np.arange(0.0001, 1.0, 0.0001)
ys = np.vectorize(expected)(xs)

plt.plot(xs, ys)
plt.show()

for i in np.arange(0.05, 1.0, 0.05):
    print(f"p = {i:.4}, c = {find_c(i):.04}")