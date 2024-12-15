n, c1, c2 = gets.chomp.split(' ')
s = gets.chomp.split('')
N = n.to_i

s_n = s.map { |a| a == c1 ? c1 : c2 }

puts s_n.join
