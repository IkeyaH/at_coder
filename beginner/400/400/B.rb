base = 10**9

N, M = gets.split.map(&:to_i)

tot = 0
(M+1).times do |i|
  tot += N**i
  break if tot > base
end

if tot > base
  puts 'inf'
else
  puts tot
end
