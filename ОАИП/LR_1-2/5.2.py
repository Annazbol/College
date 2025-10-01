a = int(input('Введите массу гантели первого качка: '))
b = int(input('Введите массу гантели второго качка: '))
c = int(input('Введите массу гантели третьего качка: '))
if (a >= b) and (a >= c):
    max = a
elif (b >= a) and (b >= c):
    max = b
elif (c >= a) and (c >= b):
    max = c
if (a <= b) and (a <= c):
    min = a
elif (b <= a) and (b <= c):
    min = b
elif (c <= a) and (c <= b):
    min = c
sub = max - min
print(f'Разница между гантелей самого сильного и самого слабого качков составляет {sub} кг')
