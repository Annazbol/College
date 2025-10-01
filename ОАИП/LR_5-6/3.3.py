arr = []
for _ in range(20):
    arr.append(int(input()))
count = 0
for i in arr:
    if i % 2 == 0:
        count += 1
    if count==1:
        pos = i
arr.append(0)
for i in range(1, pos+1):
    arr[-i] = arr[-i-1]
arr[pos-1] = count
print(*arr)