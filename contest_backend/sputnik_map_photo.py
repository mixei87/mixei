from sys import stdin
n = int(stdin.readline().strip())
co = []
for m in range(n):
    co.append(list(map(int, stdin.readline().strip().split())))
photo_pixels = {f'{i}+{j}': k for k in range(n)
                for i in range(co[k][0], co[k][2]) for j in range(co[k][1], co[k][3])}
for i in range(n):
    print(list(k for k in photo_pixels.values()).count(i))
