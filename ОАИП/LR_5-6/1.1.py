arr = []
for _ in range(20):
    arr.append(int(input()))
for i in range(20):
    if arr[i] > 0:
        arr[i] = 0
    elif arr[i] < 0:
        arr[i] = arr[i]**2
print(' '.join(map(str, arr)))