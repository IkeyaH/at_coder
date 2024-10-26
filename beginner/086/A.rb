a, b = gets.chomp.split(' ')
a = a.to_i
b = b.to_i

a * b % 2 == 0 ? puts('Even') : puts('Odd')
