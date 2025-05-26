B = 10**8
N = gets.to_i
num = gets.chomp.split.map(&:to_i).sort

sum = num.sum * (N-1)
ans = sum
r = N-1

(N-1).times do |i|
  r -= 1 while i < r && (num[i] + num[r]) >= B
  ma = [r, i].max
  ans -= B*(N-1-ma)
end

puts ans
