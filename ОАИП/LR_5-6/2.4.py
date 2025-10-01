arr = list(map(int, input().split()))
max = 0
count = 1
for i in range(1, len(arr)):
    if arr[i-1] <= arr[i]:
        count+=1
        if count > max:
            max = count
    else:
        count = 1
print(max)