n1 = int(input())
n2 = int(input())
p1 = int(input())
p2 = int(input())
years = 0
while n2>=n1:
    years += 1
    n1 += p1
    n2 += p2
print(years)