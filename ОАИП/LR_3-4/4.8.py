t = 1
min = 10**23
min_num = 0
num = 0
print('Введите время обслуживания каждого покупателя (0 - окончание очереди):')
while True:
    t = int(input())
    num+=1
    if t==0:
        break
    elif t<min:
        min = t
        min_num = num
print(f'Номер покупателя, для обслуживания которого продавцу потребовалось меньше всего времени - {min_num}')