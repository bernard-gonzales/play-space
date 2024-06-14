fibonacci = [0, 1, 2]
num = 1 + 2
while num < 4000000:
    l = fibonacci.len
    num = fibonacci[l - 2] + fibonacci[l - 1]
    fibonacci.append(num)
sum = 0
for i in range(1, fibonacci.len, 2):
    sum += fibonacci[i]
print(sum)