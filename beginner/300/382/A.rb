N, D = gets.chomp.split(' ').map(&:to_i)

S = gets.chomp.split('')
cookie = S.count('@')

t = cookie - D

puts N - t


