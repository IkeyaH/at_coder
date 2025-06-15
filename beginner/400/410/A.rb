N = gets.to_i
A = gets.split.map(&:to_i)
K = gets.to_i
ans = 0

A.each do |a|
  ans += 1 if K <= a
end

puts ans
