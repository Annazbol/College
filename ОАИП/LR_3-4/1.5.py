import math
print("  x     sin x  cos x")
for i in range(10):
    print("{:.4f}".format(i/10), "{:.4f}".format(math.sin(i/10)), "{:.4f}".format(math.cos(i/10)))