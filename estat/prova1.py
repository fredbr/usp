#!/usr/bin/env

from itertools import accumulate
from scipy.stats import binom
import numpy as np

def e(pr, v):
    res = 0
    for p, val in zip(pr, v):
        res += p*val
    return res

pr = [0.4, 0.4, 0.1, 0.1]

def gen(x):
    return [12*min(i, x) + 2*max(0, x-i) - 5*x for i in range(4, 8)]

def f(n, p, total):
    return sum((binom.pmf(i, n, p) for i in range(0, total+1)))

def g(r):
    for p in r:
        print(p, f(2, p), f(4, p)) 

r = np.arange(0, 1, 0.01)