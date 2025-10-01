b1 = 0
b2 = 0
b3 = 0
while True:
    b1 += int(input("Сколько собрала первая бригада: "))
    b2 += int(input("Сколько собрала вторая бригада: "))
    b3 += int(input("Сколько собрала третья бригада: "))
    str = input('Рабочий день закончился? (Yes/No): ')
    if str == 'Yes' or str == 'yes' or str == 'YES' or str == 'yEs' or str == 'yES' or str == 'yeS':
        break
print(f'Первая бригада собрала {b1} картошки')
print(f'Вторая бригада собрала {b2} картошки')
print(f'Третья бригада собрала {b3} картошки')