a, b, x = gets.chomp.split(' ').map(&:to_i)

b_result = b / x
a_result = (a - 1) / x

puts (b_result - a_result)
