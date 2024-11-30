N, M = gets.chomp.split(' ').map(&:to_i)
S = gets.chomp.split('')
T = gets.chomp.split('')

bef = T.slice(0...(N)).join
aft = T.slice((M - N)..(-1)).join

if bef == S.join && aft == S.join
  puts 0
elsif bef == S.join
  puts 1
elsif aft == S.join
  puts 2
else
  puts 3
end
