import random as rd

t = int(input())

def factor(x):
	v = []
	for i in range(1, x):
		if (i*i > x):
			break
		if x%i == 0:
			v.append(i)
			if (i*i != x):
				v.append(x//i)

	return v

for _ in range(t):
	k = rd.randint(1, 10000)
	div = factor(k)
	n = rd.randint(max(len(div)-4, 0), len(div)+5)

	while n > len(div):
		div.append(rd.randint(1, k))

	while n < len(div):
		div.pop()

	print(n, k)
	for i in div:
		print(i, end=' ')

	print()

print(0, 0)